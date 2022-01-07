
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct diff_filepair {void* status; TYPE_1__* one; TYPE_1__* two; } ;
struct TYPE_2__ {scalar_t__ rename_used; scalar_t__ mode; int path; int oid; scalar_t__ dirty_submodule; } ;


 int DIFF_FILE_VALID (TYPE_1__*) ;
 scalar_t__ DIFF_PAIR_RENAME (struct diff_filepair*) ;
 scalar_t__ DIFF_PAIR_TYPE_CHANGED (struct diff_filepair*) ;
 scalar_t__ DIFF_PAIR_UNMERGED (struct diff_filepair*) ;
 void* DIFF_STATUS_ADDED ;
 void* DIFF_STATUS_COPIED ;
 void* DIFF_STATUS_DELETED ;
 void* DIFF_STATUS_MODIFIED ;
 void* DIFF_STATUS_RENAMED ;
 void* DIFF_STATUS_TYPE_CHANGED ;
 void* DIFF_STATUS_UNKNOWN ;
 void* DIFF_STATUS_UNMERGED ;
 int diff_debug_queue (char*,struct diff_queue_struct*) ;
 struct diff_queue_struct diff_queued_diff ;
 int error (char*,int ) ;
 scalar_t__ is_null_oid (int *) ;
 int oideq (int *,int *) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static void diff_resolve_rename_copy(void)
{
 int i;
 struct diff_filepair *p;
 struct diff_queue_struct *q = &diff_queued_diff;

 diff_debug_queue("resolve-rename-copy", q);

 for (i = 0; i < q->nr; i++) {
  p = q->queue[i];
  p->status = 0;
  if (DIFF_PAIR_UNMERGED(p))
   p->status = DIFF_STATUS_UNMERGED;
  else if (!DIFF_FILE_VALID(p->one))
   p->status = DIFF_STATUS_ADDED;
  else if (!DIFF_FILE_VALID(p->two))
   p->status = DIFF_STATUS_DELETED;
  else if (DIFF_PAIR_TYPE_CHANGED(p))
   p->status = DIFF_STATUS_TYPE_CHANGED;





  else if (DIFF_PAIR_RENAME(p)) {
   if (!strcmp(p->one->path, p->two->path))
    p->status = DIFF_STATUS_MODIFIED;
   else if (--p->one->rename_used > 0)
    p->status = DIFF_STATUS_COPIED;
   else
    p->status = DIFF_STATUS_RENAMED;
  }
  else if (!oideq(&p->one->oid, &p->two->oid) ||
    p->one->mode != p->two->mode ||
    p->one->dirty_submodule ||
    p->two->dirty_submodule ||
    is_null_oid(&p->one->oid))
   p->status = DIFF_STATUS_MODIFIED;
  else {



   error("feeding unmodified %s to diffcore",
         p->one->path);
   p->status = DIFF_STATUS_UNKNOWN;
  }
 }
 diff_debug_queue("resolve-rename-copy done", q);
}
