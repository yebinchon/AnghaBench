
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int set; } ;
struct object_id {int dummy; } ;


 int kh_put_oid_set (int *,struct object_id const,int*) ;

int oidset_insert(struct oidset *set, const struct object_id *oid)
{
 int added;
 kh_put_oid_set(&set->set, *oid, &added);
 return !added;
}
