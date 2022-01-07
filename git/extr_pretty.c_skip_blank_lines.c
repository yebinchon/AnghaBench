
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int get_one_line (char const*) ;
 int is_blank_line (char const*,int*) ;

const char *skip_blank_lines(const char *msg)
{
 for (;;) {
  int linelen = get_one_line(msg);
  int ll = linelen;
  if (!linelen)
   break;
  if (!is_blank_line(msg, &ll))
   break;
  msg += linelen;
 }
 return msg;
}
