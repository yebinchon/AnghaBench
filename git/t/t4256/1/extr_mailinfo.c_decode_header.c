
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; int len; } ;
struct mailinfo {int input_error; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ convert_to_utf8 (struct mailinfo*,struct strbuf*,char*) ;
 struct strbuf* decode_b_segment (struct strbuf*) ;
 struct strbuf* decode_q_segment (struct strbuf*,int) ;
 int free (struct strbuf*) ;
 int isspace (char) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_addbuf (struct strbuf*,struct strbuf*) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 char* strchr (char*,char) ;
 char* strstr (char*,char*) ;
 int tolower (int) ;

__attribute__((used)) static void decode_header(struct mailinfo *mi, struct strbuf *it)
{
 char *in, *ep, *cp;
 struct strbuf outbuf = STRBUF_INIT, *dec;
 struct strbuf charset_q = STRBUF_INIT, piecebuf = STRBUF_INIT;
 int found_error = 1;

 in = it->buf;
 while (in - it->buf <= it->len && (ep = strstr(in, "=?")) != ((void*)0)) {
  int encoding;
  strbuf_reset(&charset_q);
  strbuf_reset(&piecebuf);

  if (in != ep) {





   char *scan;
   for (scan = in; scan < ep; scan++)
    if (!isspace(*scan))
     break;

   if (scan != ep || in == it->buf) {






    strbuf_add(&outbuf, in, ep - in);
   }
  }




  ep += 2;

  if (ep - it->buf >= it->len || !(cp = strchr(ep, '?')))
   goto release_return;

  if (cp + 3 - it->buf > it->len)
   goto release_return;
  strbuf_add(&charset_q, ep, cp - ep);

  encoding = cp[1];
  if (!encoding || cp[2] != '?')
   goto release_return;
  ep = strstr(cp + 3, "?=");
  if (!ep)
   goto release_return;
  strbuf_add(&piecebuf, cp + 3, ep - cp - 3);
  switch (tolower(encoding)) {
  default:
   goto release_return;
  case 'b':
   dec = decode_b_segment(&piecebuf);
   break;
  case 'q':
   dec = decode_q_segment(&piecebuf, 1);
   break;
  }
  if (convert_to_utf8(mi, dec, charset_q.buf))
   goto release_return;

  strbuf_addbuf(&outbuf, dec);
  strbuf_release(dec);
  free(dec);
  in = ep + 2;
 }
 strbuf_addstr(&outbuf, in);
 strbuf_reset(it);
 strbuf_addbuf(it, &outbuf);
 found_error = 0;
release_return:
 strbuf_release(&outbuf);
 strbuf_release(&charset_q);
 strbuf_release(&piecebuf);

 if (found_error)
  mi->input_error = -1;
}
