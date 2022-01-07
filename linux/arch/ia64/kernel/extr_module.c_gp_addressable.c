
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_2__ {int gp; } ;
struct module {TYPE_1__ arch; } ;


 int MAX_LTOFF ;

__attribute__((used)) static inline int
gp_addressable (struct module *mod, uint64_t value)
{
 return value - mod->arch.gp + MAX_LTOFF/2 < MAX_LTOFF;
}
