
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct proc_entry {TYPE_2__* meta; } ;
struct TYPE_3__ {struct proc_entry entry; } ;
struct fd {TYPE_1__ proc; } ;
struct TYPE_4__ {struct TYPE_4__* parent; } ;


 int MAX_NAME ;
 int MAX_PATH ;
 int memcpy (char*,char*,size_t) ;
 int memmove (char*,char*,size_t) ;
 int proc_entry_getname (struct proc_entry*,char*) ;
 TYPE_2__ proc_root ;
 int strlen (char*) ;

__attribute__((used)) static int proc_getpath(struct fd *fd, char *buf) {
    char *p = buf + MAX_PATH - 1;
    size_t n = 0;
    p[0] = '\0';
    struct proc_entry entry = fd->proc.entry;
    while (entry.meta != &proc_root) {
        char component[MAX_NAME];
        proc_entry_getname(&entry, component);
        size_t component_len = strlen(component) + 1;
        p -= component_len;
        n += component_len;
        *p = '/';
        memcpy(p + 1, component, component_len);
        entry.meta = entry.meta->parent;
    }
    memmove(buf, p, n + 1);
    return 0;
}
