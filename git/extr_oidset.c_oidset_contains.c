
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int set; } ;
struct object_id {int dummy; } ;
typedef scalar_t__ khiter_t ;


 scalar_t__ kh_end (int *) ;
 scalar_t__ kh_get_oid_set (int *,struct object_id const) ;

int oidset_contains(const struct oidset *set, const struct object_id *oid)
{
 khiter_t pos = kh_get_oid_set(&set->set, *oid);
 return pos != kh_end(&set->set);
}
