
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;


 int ref_iterator_abort (struct ref_iterator*) ;

__attribute__((used)) static int empty_ref_iterator_advance(struct ref_iterator *ref_iterator)
{
 return ref_iterator_abort(ref_iterator);
}
