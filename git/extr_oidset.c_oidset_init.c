
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset {int set; } ;


 int kh_resize_oid_set (int *,size_t) ;
 int memset (int *,int ,int) ;

void oidset_init(struct oidset *set, size_t initial_size)
{
 memset(&set->set, 0, sizeof(set->set));
 if (initial_size)
  kh_resize_oid_set(&set->set, initial_size);
}
