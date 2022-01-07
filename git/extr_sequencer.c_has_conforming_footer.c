
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct trailer_info {scalar_t__ trailer_start; scalar_t__ trailer_end; size_t trailer_nr; int * trailers; } ;
struct strbuf {int len; int buf; } ;
struct process_trailer_options {int no_divider; } ;


 struct process_trailer_options PROCESS_TRAILER_OPTIONS_INIT ;
 int strncmp (int ,int ,int ) ;
 int trailer_info_get (struct trailer_info*,int ,struct process_trailer_options*) ;
 int trailer_info_release (struct trailer_info*) ;

__attribute__((used)) static int has_conforming_footer(struct strbuf *sb, struct strbuf *sob,
 size_t ignore_footer)
{
 struct process_trailer_options opts = PROCESS_TRAILER_OPTIONS_INIT;
 struct trailer_info info;
 size_t i;
 int found_sob = 0, found_sob_last = 0;

 opts.no_divider = 1;

 trailer_info_get(&info, sb->buf, &opts);

 if (info.trailer_start == info.trailer_end)
  return 0;

 for (i = 0; i < info.trailer_nr; i++)
  if (sob && !strncmp(info.trailers[i], sob->buf, sob->len)) {
   found_sob = 1;
   if (i == info.trailer_nr - 1)
    found_sob_last = 1;
  }

 trailer_info_release(&info);

 if (found_sob_last)
  return 3;
 if (found_sob)
  return 2;
 return 1;
}
