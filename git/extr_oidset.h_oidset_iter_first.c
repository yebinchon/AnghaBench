
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset_iter {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 int oidset_iter_init (struct oidset*,struct oidset_iter*) ;
 struct object_id* oidset_iter_next (struct oidset_iter*) ;

__attribute__((used)) static inline struct object_id *oidset_iter_first(struct oidset *set,
        struct oidset_iter *iter)
{
 oidset_iter_init(set, iter);
 return oidset_iter_next(iter);
}
