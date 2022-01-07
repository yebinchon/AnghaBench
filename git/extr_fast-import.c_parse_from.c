
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct branch {int dummy; } ;
struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_buf ;
 int parse_objectish (struct branch*,char const*) ;
 int skip_prefix (int ,char*,char const**) ;

__attribute__((used)) static int parse_from(struct branch *b)
{
 const char *from;

 if (!skip_prefix(command_buf.buf, "from ", &from))
  return 0;

 return parse_objectish(b, from);
}
