
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_buf ;
 int read_next_command () ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;

__attribute__((used)) static void parse_original_identifier(void)
{
 const char *v;
 if (skip_prefix(command_buf.buf, "original-oid ", &v))
  read_next_command();
}
