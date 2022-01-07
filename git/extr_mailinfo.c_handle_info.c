
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct strbuf {char* buf; } ;
struct TYPE_4__ {char* buf; } ;
struct TYPE_3__ {char* buf; } ;
struct mailinfo {int output; TYPE_2__ email; TYPE_1__ name; int keep_subject; struct strbuf** p_hdr_data; struct strbuf** s_hdr_data; scalar_t__ patch_lines; } ;


 int cleanup_space (struct strbuf*) ;
 int cleanup_subject (struct mailinfo*,struct strbuf*) ;
 int fprintf (int ,char*,...) ;
 int handle_from (struct mailinfo*,struct strbuf*) ;
 char** header ;
 int output_header_lines (int ,char*,struct strbuf*) ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void handle_info(struct mailinfo *mi)
{
 struct strbuf *hdr;
 int i;

 for (i = 0; header[i]; i++) {

  if (mi->patch_lines && mi->s_hdr_data[i])
   hdr = mi->s_hdr_data[i];
  else if (mi->p_hdr_data[i])
   hdr = mi->p_hdr_data[i];
  else
   continue;

  if (!strcmp(header[i], "Subject")) {
   if (!mi->keep_subject) {
    cleanup_subject(mi, hdr);
    cleanup_space(hdr);
   }
   output_header_lines(mi->output, "Subject", hdr);
  } else if (!strcmp(header[i], "From")) {
   cleanup_space(hdr);
   handle_from(mi, hdr);
   fprintf(mi->output, "Author: %s\n", mi->name.buf);
   fprintf(mi->output, "Email: %s\n", mi->email.buf);
  } else {
   cleanup_space(hdr);
   fprintf(mi->output, "%s: %s\n", header[i], hdr->buf);
  }
 }
 fprintf(mi->output, "\n");
}
