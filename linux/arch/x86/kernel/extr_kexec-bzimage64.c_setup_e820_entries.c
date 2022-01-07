
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct e820_entry {int dummy; } ;
struct boot_params {unsigned int e820_entries; int e820_table; } ;
struct TYPE_2__ {unsigned int nr_entries; int entries; } ;


 unsigned int E820_MAX_ENTRIES_ZEROPAGE ;
 TYPE_1__* e820_table_kexec ;
 int memcpy (int *,int *,unsigned int) ;

__attribute__((used)) static int setup_e820_entries(struct boot_params *params)
{
 unsigned int nr_e820_entries;

 nr_e820_entries = e820_table_kexec->nr_entries;


 if (nr_e820_entries > E820_MAX_ENTRIES_ZEROPAGE)
  nr_e820_entries = E820_MAX_ENTRIES_ZEROPAGE;

 params->e820_entries = nr_e820_entries;
 memcpy(&params->e820_table, &e820_table_kexec->entries, nr_e820_entries*sizeof(struct e820_entry));

 return 0;
}
