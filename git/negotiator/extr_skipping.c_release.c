
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fetch_negotiator {scalar_t__ data; } ;
struct data {int rev_list; } ;


 int FREE_AND_NULL (scalar_t__) ;
 int clear_prio_queue (int *) ;

__attribute__((used)) static void release(struct fetch_negotiator *n)
{
 clear_prio_queue(&((struct data *)n->data)->rev_list);
 FREE_AND_NULL(n->data);
}
