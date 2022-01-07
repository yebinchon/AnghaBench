
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ewah_bitmap {int dummy; } ;
struct TYPE_4__ {int flags; int oid; } ;
struct commit {TYPE_2__* parents; TYPE_1__ object; } ;
struct TYPE_6__ {int selected_nr; int progress; scalar_t__ show_progress; } ;
struct TYPE_5__ {scalar_t__ next; } ;


 int NEEDS_BITMAP ;
 int QSORT (struct commit**,unsigned int,int ) ;
 int date_compare ;
 int display_progress (int ,unsigned int) ;
 struct ewah_bitmap* find_reused_bitmap (int *) ;
 unsigned int next_commit_index (unsigned int) ;
 int push_bitmapped_commit (struct commit*,struct ewah_bitmap*) ;
 int start_progress (char*,int ) ;
 int stop_progress (int *) ;
 TYPE_3__ writer ;

void bitmap_writer_select_commits(struct commit **indexed_commits,
      unsigned int indexed_commits_nr,
      int max_bitmaps)
{
 unsigned int i = 0, j, next;

 QSORT(indexed_commits, indexed_commits_nr, date_compare);

 if (writer.show_progress)
  writer.progress = start_progress("Selecting bitmap commits", 0);

 if (indexed_commits_nr < 100) {
  for (i = 0; i < indexed_commits_nr; ++i)
   push_bitmapped_commit(indexed_commits[i], ((void*)0));
  return;
 }

 for (;;) {
  struct ewah_bitmap *reused_bitmap = ((void*)0);
  struct commit *chosen = ((void*)0);

  next = next_commit_index(i);

  if (i + next >= indexed_commits_nr)
   break;

  if (max_bitmaps > 0 && writer.selected_nr >= max_bitmaps) {
   writer.selected_nr = max_bitmaps;
   break;
  }

  if (next == 0) {
   chosen = indexed_commits[i];
   reused_bitmap = find_reused_bitmap(&chosen->object.oid);
  } else {
   chosen = indexed_commits[i + next];

   for (j = 0; j <= next; ++j) {
    struct commit *cm = indexed_commits[i + j];

    reused_bitmap = find_reused_bitmap(&cm->object.oid);
    if (reused_bitmap || (cm->object.flags & NEEDS_BITMAP) != 0) {
     chosen = cm;
     break;
    }

    if (cm->parents && cm->parents->next)
     chosen = cm;
   }
  }

  push_bitmapped_commit(chosen, reused_bitmap);

  i += next + 1;
  display_progress(writer.progress, i);
 }

 stop_progress(&writer.progress);
}
