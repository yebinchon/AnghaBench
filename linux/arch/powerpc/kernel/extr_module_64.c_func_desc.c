
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ppc64_opd_entry {int dummy; } ;
typedef struct ppc64_opd_entry func_desc_t ;



__attribute__((used)) static func_desc_t func_desc(unsigned long addr)
{
 return *(struct ppc64_opd_entry *)addr;
}
