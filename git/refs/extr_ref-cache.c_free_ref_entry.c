
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int subdir; } ;
struct ref_entry {int flag; TYPE_1__ u; } ;


 int REF_DIR ;
 int clear_ref_dir (int *) ;
 int free (struct ref_entry*) ;

__attribute__((used)) static void free_ref_entry(struct ref_entry *entry)
{
 if (entry->flag & REF_DIR) {




  clear_ref_dir(&entry->u.subdir);
 }
 free(entry);
}
