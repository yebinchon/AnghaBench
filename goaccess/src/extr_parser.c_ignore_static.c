
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ignore_statics; } ;


 TYPE_1__ conf ;
 scalar_t__ is_static (char const*) ;

__attribute__((used)) static int
ignore_static (const char *req)
{
  if (conf.ignore_statics && is_static (req))
    return 1;
  return 0;
}
