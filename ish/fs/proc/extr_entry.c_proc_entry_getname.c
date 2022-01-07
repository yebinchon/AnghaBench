
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_entry {TYPE_1__* meta; } ;
struct TYPE_2__ {scalar_t__ name; int (* getname ) (struct proc_entry*,char*) ;} ;


 int assert (int) ;
 int strcpy (char*,scalar_t__) ;
 int stub1 (struct proc_entry*,char*) ;

void proc_entry_getname(struct proc_entry *entry, char *buf) {
    if (entry->meta->getname)
        entry->meta->getname(entry, buf);
    else if (entry->meta->name)
        strcpy(buf, entry->meta->name);
    else
        assert(!"missing name in proc entry");
}
