
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_entry {int name; } ;
struct ref_dir {int dummy; } ;


 int add_entry_to_dir (struct ref_dir*,struct ref_entry*) ;
 struct ref_dir* find_containing_dir (struct ref_dir*,int ,int) ;

int add_ref_entry(struct ref_dir *dir, struct ref_entry *ref)
{
 dir = find_containing_dir(dir, ref->name, 1);
 if (!dir)
  return -1;
 add_entry_to_dir(dir, ref);
 return 0;
}
