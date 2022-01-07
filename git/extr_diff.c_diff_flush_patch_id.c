
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct diff_queue_struct {int nr; int * queue; } ;
struct diff_options {int dummy; } ;


 int DIFF_QUEUE_CLEAR (struct diff_queue_struct*) ;
 int diff_free_filepair (int ) ;
 int diff_get_patch_id (struct diff_options*,struct object_id*,int,int) ;
 struct diff_queue_struct diff_queued_diff ;
 int free (int *) ;

int diff_flush_patch_id(struct diff_options *options, struct object_id *oid, int diff_header_only, int stable)
{
 struct diff_queue_struct *q = &diff_queued_diff;
 int i;
 int result = diff_get_patch_id(options, oid, diff_header_only, stable);

 for (i = 0; i < q->nr; i++)
  diff_free_filepair(q->queue[i]);

 free(q->queue);
 DIFF_QUEUE_CLEAR(q);

 return result;
}
