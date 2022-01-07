
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int set; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ khiter_t ;


 int kh_del_oid_set (int *,scalar_t__) ;
 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get_oid_set (int *,struct object_id const) ;

int oidset_remove(struct oidset *set, const struct object_id *oid)
{
 khiter_t pos = kh_get_oid_set(&set->set, *oid);
 if (pos == kh_end(&set->set))
  return 0;
 kh_del_oid_set(&set->set, pos);
 return 1;
}
