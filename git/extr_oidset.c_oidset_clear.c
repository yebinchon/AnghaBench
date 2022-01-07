
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int set; } ;


 int kh_release_oid_set (int *) ;
 int oidset_init (struct oidset*,int ) ;

void oidset_clear(struct oidset *set)
{
 kh_release_oid_set(&set->set);
 oidset_init(set, 0);
}
