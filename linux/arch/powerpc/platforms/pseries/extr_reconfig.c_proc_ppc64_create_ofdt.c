
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;


 int ofdt_fops ;
 struct proc_dir_entry* proc_create (char*,int,int *,int *) ;
 int proc_set_size (struct proc_dir_entry*,int ) ;

__attribute__((used)) static int proc_ppc64_create_ofdt(void)
{
 struct proc_dir_entry *ent;

 ent = proc_create("powerpc/ofdt", 0200, ((void*)0), &ofdt_fops);
 if (ent)
  proc_set_size(ent, 0);

 return 0;
}
