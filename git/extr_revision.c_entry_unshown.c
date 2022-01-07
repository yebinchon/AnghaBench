
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_array_entry {TYPE_1__* item; } ;
struct TYPE_2__ {int flags; } ;


 int SHOWN ;

__attribute__((used)) static int entry_unshown(struct object_array_entry *entry, void *cb_data_unused)
{
 return !(entry->item->flags & SHOWN);
}
