
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; scalar_t__ buf; } ;
struct mailinfo {int message_id; scalar_t__ add_message_id; } ;


 struct strbuf STRBUF_INIT ;
 scalar_t__ cmp_header (struct strbuf const*,char*) ;
 int decode_header (struct mailinfo*,struct strbuf*) ;
 int handle_content_transfer_encoding (struct mailinfo*,struct strbuf*) ;
 int handle_content_type (struct mailinfo*,struct strbuf*) ;
 int handle_header (struct strbuf**,struct strbuf*) ;
 char** header ;
 int strbuf_add (struct strbuf*,scalar_t__,int) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int strbuf_insert (struct strbuf*,int ,char*,int) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char*) ;

__attribute__((used)) static int check_header(struct mailinfo *mi,
   const struct strbuf *line,
   struct strbuf *hdr_data[], int overwrite)
{
 int i, ret = 0, len;
 struct strbuf sb = STRBUF_INIT;


 for (i = 0; header[i]; i++) {
  int len = strlen(header[i]);
  if ((!hdr_data[i] || overwrite) && cmp_header(line, header[i])) {



   strbuf_add(&sb, line->buf + len + 2, line->len - len - 2);
   decode_header(mi, &sb);
   handle_header(&hdr_data[i], &sb);
   ret = 1;
   goto check_header_out;
  }
 }


 if (cmp_header(line, "Content-Type")) {
  len = strlen("Content-Type: ");
  strbuf_add(&sb, line->buf + len, line->len - len);
  decode_header(mi, &sb);
  strbuf_insert(&sb, 0, "Content-Type: ", len);
  handle_content_type(mi, &sb);
  ret = 1;
  goto check_header_out;
 }
 if (cmp_header(line, "Content-Transfer-Encoding")) {
  len = strlen("Content-Transfer-Encoding: ");
  strbuf_add(&sb, line->buf + len, line->len - len);
  decode_header(mi, &sb);
  handle_content_transfer_encoding(mi, &sb);
  ret = 1;
  goto check_header_out;
 }
 if (cmp_header(line, "Message-Id")) {
  len = strlen("Message-Id: ");
  strbuf_add(&sb, line->buf + len, line->len - len);
  decode_header(mi, &sb);
  if (mi->add_message_id)
   mi->message_id = strbuf_detach(&sb, ((void*)0));
  ret = 1;
  goto check_header_out;
 }

check_header_out:
 strbuf_release(&sb);
 return ret;
}
