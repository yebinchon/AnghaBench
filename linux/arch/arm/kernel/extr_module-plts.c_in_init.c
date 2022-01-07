
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ size; scalar_t__ base; } ;
struct module {TYPE_1__ init_layout; } ;



__attribute__((used)) static bool in_init(const struct module *mod, unsigned long loc)
{
 return loc - (u32)mod->init_layout.base < mod->init_layout.size;
}
