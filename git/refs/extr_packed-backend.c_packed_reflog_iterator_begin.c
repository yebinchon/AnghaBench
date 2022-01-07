
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_store {int dummy; } ;
struct ref_iterator {int dummy; } ;


 struct ref_iterator* empty_ref_iterator_begin () ;

__attribute__((used)) static struct ref_iterator *packed_reflog_iterator_begin(struct ref_store *ref_store)
{
 return empty_ref_iterator_begin();
}
