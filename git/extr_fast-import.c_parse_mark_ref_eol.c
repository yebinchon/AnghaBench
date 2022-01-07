
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

__attribute__((used)) static uintmax_t parse_mark_ref_eol(const char *p)
{
 char *end;
 uintmax_t mark;

 mark = parse_mark_ref(p, &end);
 if (*end != '\0')
  die("Garbage after mark: %s", command_buf.buf);
 return mark;
}
