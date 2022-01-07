
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diff_queue_struct {int nr; int * queue; } ;


 int diff_free_filepair (int ) ;
 int free (struct diff_queue_struct*) ;

__attribute__((used)) static void free_diffqueues(int n, struct diff_queue_struct *dq)
{
 int i, j;
 for (i = 0; i < n; i++)
  for (j = 0; j < dq[i].nr; j++)
   diff_free_filepair(dq[i].queue[j]);
 free(dq);
}
