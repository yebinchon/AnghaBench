
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset_iter {int * set; int iter; } ;
struct oidset {int set; } ;


 int kh_begin (int *) ;

__attribute__((used)) static inline void oidset_iter_init(struct oidset *set,
        struct oidset_iter *iter)
{
 iter->set = &set->set;
 iter->iter = kh_begin(iter->set);
}
