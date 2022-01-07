
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t active_area; size_t* active_pages; int* active_entries; scalar_t__** areas; } ;
typedef TYPE_1__ debug_info_t ;
typedef int debug_entry_t ;



__attribute__((used)) static inline debug_entry_t *get_active_entry(debug_info_t *id)
{
 return (debug_entry_t *) (((char *) id->areas[id->active_area]
       [id->active_pages[id->active_area]]) +
      id->active_entries[id->active_area]);
}
