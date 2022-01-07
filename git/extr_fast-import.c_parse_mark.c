
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_buf ;
 scalar_t__ next_mark ;
 int read_next_command () ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 scalar_t__ strtoumax (char const*,int *,int) ;

__attribute__((used)) static void parse_mark(void)
{
 const char *v;
 if (skip_prefix(command_buf.buf, "mark :", &v)) {
  next_mark = strtoumax(v, ((void*)0), 10);
  read_next_command();
 }
 else
  next_mark = 0;
}
