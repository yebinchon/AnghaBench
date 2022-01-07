
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct prefix_ref_iterator {int iter0; } ;
struct object_id {int dummy; } ;


 int ref_iterator_peel (int ,struct object_id*) ;

__attribute__((used)) static int prefix_ref_iterator_peel(struct ref_iterator *ref_iterator,
        struct object_id *peeled)
{
 struct prefix_ref_iterator *iter =
  (struct prefix_ref_iterator *)ref_iterator;

 return ref_iterator_peel(iter->iter0, peeled);
}
