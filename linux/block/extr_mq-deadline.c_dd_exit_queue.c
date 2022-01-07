
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct elevator_queue {struct deadline_data* elevator_data; } ;
struct deadline_data {int * fifo_list; } ;


 int BUG_ON (int) ;
 size_t READ ;
 size_t WRITE ;
 int kfree (struct deadline_data*) ;
 int list_empty (int *) ;

__attribute__((used)) static void dd_exit_queue(struct elevator_queue *e)
{
 struct deadline_data *dd = e->elevator_data;

 BUG_ON(!list_empty(&dd->fifo_list[READ]));
 BUG_ON(!list_empty(&dd->fifo_list[WRITE]));

 kfree(dd);
}
