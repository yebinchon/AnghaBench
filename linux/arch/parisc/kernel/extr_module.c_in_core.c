
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* base; int size; } ;
struct module {TYPE_1__ core_layout; } ;



__attribute__((used)) static inline int in_core(struct module *me, void *loc)
{
 return (loc >= me->core_layout.base &&
  loc <= (me->core_layout.base + me->core_layout.size));
}
