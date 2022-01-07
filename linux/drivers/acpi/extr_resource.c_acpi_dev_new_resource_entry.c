
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_win {int offset; int res; } ;
struct resource_entry {int offset; int * res; } ;
struct res_proc_context {int count; int list; int error; } ;
typedef int acpi_status ;


 int AE_NO_MEMORY ;
 int AE_OK ;
 int ENOMEM ;
 int resource_list_add_tail (struct resource_entry*,int ) ;
 struct resource_entry* resource_list_create_entry (int *,int ) ;

__attribute__((used)) static acpi_status acpi_dev_new_resource_entry(struct resource_win *win,
            struct res_proc_context *c)
{
 struct resource_entry *rentry;

 rentry = resource_list_create_entry(((void*)0), 0);
 if (!rentry) {
  c->error = -ENOMEM;
  return AE_NO_MEMORY;
 }
 *rentry->res = win->res;
 rentry->offset = win->offset;
 resource_list_add_tail(rentry, c->list);
 c->count++;
 return AE_OK;
}
