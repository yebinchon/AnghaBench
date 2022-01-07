
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct negotiation_state {int rev_list; } ;
struct fetch_negotiator {scalar_t__ data; } ;


 int FREE_AND_NULL (scalar_t__) ;
 int clear_prio_queue (int *) ;

__attribute__((used)) static void release(struct fetch_negotiator *n)
{
 clear_prio_queue(&((struct negotiation_state *)n->data)->rev_list);
 FREE_AND_NULL(n->data);
}
