
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct setup_data {int len; unsigned long next; int type; } ;
struct TYPE_2__ {unsigned long setup_data; } ;
struct boot_params {TYPE_1__ hdr; } ;
struct boot_e820_entry {int dummy; } ;


 int SETUP_E820_EXT ;

__attribute__((used)) static void add_e820ext(struct boot_params *params,
   struct setup_data *e820ext, u32 nr_entries)
{
 struct setup_data *data;

 e820ext->type = SETUP_E820_EXT;
 e820ext->len = nr_entries * sizeof(struct boot_e820_entry);
 e820ext->next = 0;

 data = (struct setup_data *)(unsigned long)params->hdr.setup_data;

 while (data && data->next)
  data = (struct setup_data *)(unsigned long)data->next;

 if (data)
  data->next = (unsigned long)e820ext;
 else
  params->hdr.setup_data = (unsigned long)e820ext;
}
