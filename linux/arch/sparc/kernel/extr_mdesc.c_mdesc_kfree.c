
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mdesc_handle {int self_base; int list; int refcnt; } ;


 int BUG_ON (int) ;
 int kfree (int ) ;
 int list_empty (int *) ;
 scalar_t__ refcount_read (int *) ;

__attribute__((used)) static void mdesc_kfree(struct mdesc_handle *hp)
{
 BUG_ON(refcount_read(&hp->refcnt) != 0);
 BUG_ON(!list_empty(&hp->list));

 kfree(hp->self_base);
}
