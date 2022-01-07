
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int resource_size_t ;
struct TYPE_2__ {int (* pcibios_default_alignment ) () ;} ;


 TYPE_1__ ppc_md ;
 int stub1 () ;

resource_size_t pcibios_default_alignment(void)
{
 if (ppc_md.pcibios_default_alignment)
  return ppc_md.pcibios_default_alignment();

 return 0;
}
