
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_iterator {int dummy; } ;
struct object_id {int dummy; } ;


 int BUG (char*) ;

__attribute__((used)) static int files_reflog_iterator_peel(struct ref_iterator *ref_iterator,
       struct object_id *peeled)
{
 BUG("ref_iterator_peel() called for reflog_iterator");
}
