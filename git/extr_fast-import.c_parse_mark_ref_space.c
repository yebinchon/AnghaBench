
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_buf ;
 int die (char*,int ) ;
 int parse_mark_ref (char const*,char**) ;

__attribute__((used)) static uintmax_t parse_mark_ref_space(const char **p)
{
 uintmax_t mark;
 char *end;

 mark = parse_mark_ref(*p, &end);
 if (*end++ != ' ')
  die("Missing space after mark: %s", command_buf.buf);
 *p = end;
 return mark;
}
