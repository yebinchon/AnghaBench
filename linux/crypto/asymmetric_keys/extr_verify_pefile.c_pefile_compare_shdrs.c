
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct section_header {scalar_t__ data_addr; scalar_t__ virtual_address; scalar_t__ virtual_size; scalar_t__ raw_data_size; int name; } ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int pefile_compare_shdrs(const void *a, const void *b)
{
 const struct section_header *shdra = a;
 const struct section_header *shdrb = b;
 int rc;

 if (shdra->data_addr > shdrb->data_addr)
  return 1;
 if (shdrb->data_addr > shdra->data_addr)
  return -1;

 if (shdra->virtual_address > shdrb->virtual_address)
  return 1;
 if (shdrb->virtual_address > shdra->virtual_address)
  return -1;

 rc = strcmp(shdra->name, shdrb->name);
 if (rc != 0)
  return rc;

 if (shdra->virtual_size > shdrb->virtual_size)
  return 1;
 if (shdrb->virtual_size > shdra->virtual_size)
  return -1;

 if (shdra->raw_data_size > shdrb->raw_data_size)
  return 1;
 if (shdrb->raw_data_size > shdra->raw_data_size)
  return -1;

 return 0;
}
