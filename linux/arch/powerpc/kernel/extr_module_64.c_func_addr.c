
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned long funcaddr; } ;


 TYPE_1__ func_desc (unsigned long) ;

__attribute__((used)) static unsigned long func_addr(unsigned long addr)
{
 return func_desc(addr).funcaddr;
}
