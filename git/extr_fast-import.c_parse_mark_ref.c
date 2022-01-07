
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
struct TYPE_2__ {int buf; } ;


 int assert (int) ;
 TYPE_1__ command_buf ;
 int die (char*,int ) ;
 int strtoumax (char const*,char**,int) ;

__attribute__((used)) static uintmax_t parse_mark_ref(const char *p, char **endptr)
{
 uintmax_t mark;

 assert(*p == ':');
 p++;
 mark = strtoumax(p, endptr, 10);
 if (*endptr == p)
  die("No value after ':' in mark: %s", command_buf.buf);
 return mark;
}
