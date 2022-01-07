
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; int buf; } ;
struct ref_store {int dummy; } ;
struct files_ref_store {int dummy; } ;
typedef int each_reflog_ent_fn ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int BUG (char*) ;
 int REF_STORE_READ ;
 int SEEK_END ;
 int SEEK_SET ;
 struct strbuf STRBUF_INIT ;
 int errno ;
 int error (char*,...) ;
 int fclose (int *) ;
 struct files_ref_store* files_downcast (struct ref_store*,int ,char*) ;
 int files_reflog_path (struct files_ref_store*,struct strbuf*,char const*) ;
 char* find_beginning_of_line (char*,char*) ;
 int * fopen (int ,char*) ;
 size_t fread (char*,int,int,int *) ;
 scalar_t__ fseek (int *,long,int ) ;
 long ftell (int *) ;
 int show_one_reflog_ent (struct strbuf*,int ,void*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_splice (struct strbuf*,int ,int ,char*,int) ;
 char* strerror (int ) ;

__attribute__((used)) static int files_for_each_reflog_ent_reverse(struct ref_store *ref_store,
          const char *refname,
          each_reflog_ent_fn fn,
          void *cb_data)
{
 struct files_ref_store *refs =
  files_downcast(ref_store, REF_STORE_READ,
          "for_each_reflog_ent_reverse");
 struct strbuf sb = STRBUF_INIT;
 FILE *logfp;
 long pos;
 int ret = 0, at_tail = 1;

 files_reflog_path(refs, &sb, refname);
 logfp = fopen(sb.buf, "r");
 strbuf_release(&sb);
 if (!logfp)
  return -1;


 if (fseek(logfp, 0, SEEK_END) < 0)
  ret = error("cannot seek back reflog for %s: %s",
       refname, strerror(errno));
 pos = ftell(logfp);
 while (!ret && 0 < pos) {
  int cnt;
  size_t nread;
  char buf[BUFSIZ];
  char *endp, *scanp;


  cnt = (sizeof(buf) < pos) ? sizeof(buf) : pos;
  if (fseek(logfp, pos - cnt, SEEK_SET)) {
   ret = error("cannot seek back reflog for %s: %s",
        refname, strerror(errno));
   break;
  }
  nread = fread(buf, cnt, 1, logfp);
  if (nread != 1) {
   ret = error("cannot read %d bytes from reflog for %s: %s",
        cnt, refname, strerror(errno));
   break;
  }
  pos -= cnt;

  scanp = endp = buf + cnt;
  if (at_tail && scanp[-1] == '\n')

   scanp--;
  at_tail = 0;

  while (buf < scanp) {




   char *bp;

   bp = find_beginning_of_line(buf, scanp);

   if (*bp == '\n') {






    strbuf_splice(&sb, 0, 0, bp + 1, endp - (bp + 1));
    scanp = bp;
    endp = bp + 1;
    ret = show_one_reflog_ent(&sb, fn, cb_data);
    strbuf_reset(&sb);
    if (ret)
     break;
   } else if (!pos) {






    strbuf_splice(&sb, 0, 0, buf, endp - buf);
    ret = show_one_reflog_ent(&sb, fn, cb_data);
    strbuf_reset(&sb);
    break;
   }

   if (bp == buf) {
    strbuf_splice(&sb, 0, 0, buf, endp - buf);
    break;
   }
  }

 }
 if (!ret && sb.len)
  BUG("reverse reflog parser had leftover data");

 fclose(logfp);
 strbuf_release(&sb);
 return ret;
}
