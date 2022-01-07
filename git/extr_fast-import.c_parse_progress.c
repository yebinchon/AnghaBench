
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; int buf; } ;


 TYPE_1__ command_buf ;
 int fflush (int ) ;
 int fputc (char,int ) ;
 int fwrite (int ,int,int ,int ) ;
 int skip_optional_lf () ;
 int stdout ;

__attribute__((used)) static void parse_progress(void)
{
 fwrite(command_buf.buf, 1, command_buf.len, stdout);
 fputc('\n', stdout);
 fflush(stdout);
 skip_optional_lf();
}
