
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct eeh_pe {int addr; } ;



__attribute__((used)) static int pnv_eeh_get_pe_addr(struct eeh_pe *pe)
{
 return pe->addr;
}
