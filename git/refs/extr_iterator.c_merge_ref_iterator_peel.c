
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct object_id {int dummy; } ;
struct merge_ref_iterator {int * current; } ;


 int BUG (char*) ;
 int ref_iterator_peel (int ,struct object_id*) ;

__attribute__((used)) static int merge_ref_iterator_peel(struct ref_iterator *ref_iterator,
       struct object_id *peeled)
{
 struct merge_ref_iterator *iter =
  (struct merge_ref_iterator *)ref_iterator;

 if (!iter->current) {
  BUG("peel called before advance for merge iterator");
 }
 return ref_iterator_peel(*iter->current, peeled);
}
