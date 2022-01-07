
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int dummy; } ;
struct TYPE_2__ {int len; int buf; } ;
struct mailinfo {int input_error; int * patchfile; TYPE_1__ log_message; void* p_hdr_data; int input; void* s_hdr_data; } ;
typedef int FILE ;


 int EOF ;
 int MAX_HDR_PARSED ;
 struct strbuf STRBUF_INIT ;
 int check_header (struct mailinfo*,struct strbuf*,void*,int) ;
 int error (char*,char const*) ;
 int fclose (int *) ;
 int fgetc (int ) ;
 void* fopen (char const*,char*) ;
 int fwrite (int ,int,int ,int *) ;
 int handle_body (struct mailinfo*,struct strbuf*) ;
 int handle_info (struct mailinfo*) ;
 scalar_t__ isspace (int) ;
 int perror (char const*) ;
 scalar_t__ read_one_header_line (struct strbuf*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int ungetc (int,int ) ;
 void* xcalloc (int ,int) ;

int mailinfo(struct mailinfo *mi, const char *msg, const char *patch)
{
 FILE *cmitmsg;
 int peek;
 struct strbuf line = STRBUF_INIT;

 cmitmsg = fopen(msg, "w");
 if (!cmitmsg) {
  perror(msg);
  return -1;
 }
 mi->patchfile = fopen(patch, "w");
 if (!mi->patchfile) {
  perror(patch);
  fclose(cmitmsg);
  return -1;
 }

 mi->p_hdr_data = xcalloc(MAX_HDR_PARSED, sizeof(*(mi->p_hdr_data)));
 mi->s_hdr_data = xcalloc(MAX_HDR_PARSED, sizeof(*(mi->s_hdr_data)));

 do {
  peek = fgetc(mi->input);
  if (peek == EOF) {
   fclose(cmitmsg);
   return error("empty patch: '%s'", patch);
  }
 } while (isspace(peek));
 ungetc(peek, mi->input);


 while (read_one_header_line(&line, mi->input))
  check_header(mi, &line, mi->p_hdr_data, 1);

 handle_body(mi, &line);
 fwrite(mi->log_message.buf, 1, mi->log_message.len, cmitmsg);
 fclose(cmitmsg);
 fclose(mi->patchfile);

 handle_info(mi);
 strbuf_release(&line);
 return mi->input_error;
}
