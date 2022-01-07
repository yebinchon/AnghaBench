
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int eeh_pe_aux_size ;

void eeh_set_pe_aux_size(int size)
{
 if (size < 0)
  return;

 eeh_pe_aux_size = size;
}
