
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct entry {int oid; } ;


 int git_oid__cmp (int *,int *) ;

__attribute__((used)) static int objects_cmp(const void *a, const void *b)
{
 const struct entry *entrya = a;
 const struct entry *entryb = b;

 return git_oid__cmp(&entrya->oid, &entryb->oid);
}
