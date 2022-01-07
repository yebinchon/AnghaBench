
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 scalar_t__ mox_module_known (unsigned int) ;
 TYPE_1__* mox_module_table ;

__attribute__((used)) static inline const char *mox_module_name(unsigned int id)
{
 if (mox_module_known(id))
  return mox_module_table[id].name;
 else
  return "unknown";
}
