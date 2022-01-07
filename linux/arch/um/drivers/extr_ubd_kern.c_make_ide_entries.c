
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int dummy; } ;
typedef int name ;


 int S_IRUGO ;
 int fake_ide_media_proc_show ;
 int make_proc_ide () ;
 struct proc_dir_entry* proc_create_single (char*,int ,struct proc_dir_entry*,int ) ;
 int proc_ide ;
 int * proc_ide_root ;
 struct proc_dir_entry* proc_mkdir (char const*,int ) ;
 int proc_symlink (char const*,int *,char*) ;
 int snprintf (char*,int,char*,char const*) ;

__attribute__((used)) static void make_ide_entries(const char *dev_name)
{
 struct proc_dir_entry *dir, *ent;
 char name[64];

 if(proc_ide_root == ((void*)0)) make_proc_ide();

 dir = proc_mkdir(dev_name, proc_ide);
 if(!dir) return;

 ent = proc_create_single("media", S_IRUGO, dir,
   fake_ide_media_proc_show);
 if(!ent) return;
 snprintf(name, sizeof(name), "ide0/%s", dev_name);
 proc_symlink(dev_name, proc_ide_root, name);
}
