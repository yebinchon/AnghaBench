
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct branch {int dummy; } ;
struct TYPE_2__ {int buf; } ;


 TYPE_1__ command_buf ;
 int parse_objectish (struct branch*,char const*) ;
 int skip_prefix (int ,char const*,char const**) ;

__attribute__((used)) static int parse_objectish_with_prefix(struct branch *b, const char *prefix)
{
 const char *base;

 if (!skip_prefix(command_buf.buf, prefix, &base))
  return 0;

 return parse_objectish(b, base);
}
