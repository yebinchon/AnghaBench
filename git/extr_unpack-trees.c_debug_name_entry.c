
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct name_entry {char* path; int mode; } ;


 int printf (char*,int,int,char*) ;

__attribute__((used)) static void debug_name_entry(int i, struct name_entry *n)
{
 printf("ent#%d %06o %s\n", i,
        n->path ? n->mode : 0,
        n->path ? n->path : "(missing)");
}
