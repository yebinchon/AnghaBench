
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {int len; char* buf; } ;
struct TYPE_4__ {int buf; } ;
struct TYPE_3__ {scalar_t__ len; } ;
struct mailinfo {int header_stage; int log_message; scalar_t__ message_id; int ** s_hdr_data; scalar_t__ use_scissors; TYPE_2__ charset; scalar_t__ use_inbody_headers; TYPE_1__ inbody_header_accum; int filter_stage; } ;


 int assert (int) ;
 int check_inbody_header (struct mailinfo*,struct strbuf*) ;
 scalar_t__ convert_to_utf8 (struct mailinfo*,struct strbuf*,int ) ;
 int flush_inbody_header_accum (struct mailinfo*) ;
 scalar_t__* header ;
 scalar_t__ is_scissors_line (char*) ;
 scalar_t__ patchbreak (struct strbuf*) ;
 int strbuf_addbuf (int *,struct strbuf*) ;
 int strbuf_addf (int *,char*,scalar_t__) ;
 int strbuf_release (int *) ;
 int strbuf_setlen (int *,int ) ;

__attribute__((used)) static int handle_commit_msg(struct mailinfo *mi, struct strbuf *line)
{
 assert(!mi->filter_stage);

 if (mi->header_stage) {
  if (!line->len || (line->len == 1 && line->buf[0] == '\n')) {
   if (mi->inbody_header_accum.len) {
    flush_inbody_header_accum(mi);
    mi->header_stage = 0;
   }
   return 0;
  }
 }

 if (mi->use_inbody_headers && mi->header_stage) {
  mi->header_stage = check_inbody_header(mi, line);
  if (mi->header_stage)
   return 0;
 } else



  mi->header_stage = 0;


 if (convert_to_utf8(mi, line, mi->charset.buf))
  return 0;

 if (mi->use_scissors && is_scissors_line(line->buf)) {
  int i;

  strbuf_setlen(&mi->log_message, 0);
  mi->header_stage = 1;





  for (i = 0; header[i]; i++) {
   if (mi->s_hdr_data[i])
    strbuf_release(mi->s_hdr_data[i]);
   mi->s_hdr_data[i] = ((void*)0);
  }
  return 0;
 }

 if (patchbreak(line)) {
  if (mi->message_id)
   strbuf_addf(&mi->log_message,
        "Message-Id: %s\n", mi->message_id);
  return 1;
 }

 strbuf_addbuf(&mi->log_message, line);
 return 0;
}
