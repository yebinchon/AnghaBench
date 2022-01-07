
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ref_dir {TYPE_2__* cache; } ;
struct TYPE_3__ {struct ref_dir subdir; } ;
struct ref_entry {int flag; int name; TYPE_1__ u; } ;
struct TYPE_4__ {int ref_store; int (* fill_ref_dir ) (int ,struct ref_dir*,int ) ;} ;


 int BUG (char*) ;
 int REF_DIR ;
 int REF_INCOMPLETE ;
 int assert (int) ;
 int stub1 (int ,struct ref_dir*,int ) ;

struct ref_dir *get_ref_dir(struct ref_entry *entry)
{
 struct ref_dir *dir;
 assert(entry->flag & REF_DIR);
 dir = &entry->u.subdir;
 if (entry->flag & REF_INCOMPLETE) {
  if (!dir->cache->fill_ref_dir)
   BUG("incomplete ref_store without fill_ref_dir function");

  dir->cache->fill_ref_dir(dir->cache->ref_store, dir, entry->name);
  entry->flag &= ~REF_INCOMPLETE;
 }
 return dir;
}
