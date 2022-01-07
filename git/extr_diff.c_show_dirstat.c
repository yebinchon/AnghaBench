
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct dirstat_dir {int nr; TYPE_6__* files; scalar_t__ alloc; int cumulative; int permille; } ;
struct diff_queue_struct {int nr; struct diff_filepair** queue; } ;
struct TYPE_9__ {scalar_t__ dirstat_by_file; int dirstat_cumulative; } ;
struct diff_options {int repo; TYPE_1__ flags; int dirstat_permille; } ;
struct diff_filepair {TYPE_2__* one; TYPE_2__* two; } ;
struct TYPE_11__ {char const* name; unsigned long changed; } ;
struct TYPE_10__ {char* path; unsigned long size; int oid; scalar_t__ oid_valid; } ;


 int ALLOC_GROW (TYPE_6__*,int,scalar_t__) ;
 int CHECK_SIZE_ONLY ;
 scalar_t__ DIFF_FILE_VALID (TYPE_2__*) ;
 int QSORT (TYPE_6__*,size_t,int ) ;
 int diff_free_filespec_data (TYPE_2__*) ;
 int diff_populate_filespec (int ,TYPE_2__*,int ) ;
 struct diff_queue_struct diff_queued_diff ;
 int diffcore_count_changes (int ,TYPE_2__*,TYPE_2__*,int *,int *,unsigned long*,unsigned long*) ;
 int dirstat_compare ;
 int gather_dirstat (struct diff_options*,struct dirstat_dir*,unsigned long,char*,int ) ;
 scalar_t__ oideq (int *,int *) ;

__attribute__((used)) static void show_dirstat(struct diff_options *options)
{
 int i;
 unsigned long changed;
 struct dirstat_dir dir;
 struct diff_queue_struct *q = &diff_queued_diff;

 dir.files = ((void*)0);
 dir.alloc = 0;
 dir.nr = 0;
 dir.permille = options->dirstat_permille;
 dir.cumulative = options->flags.dirstat_cumulative;

 changed = 0;
 for (i = 0; i < q->nr; i++) {
  struct diff_filepair *p = q->queue[i];
  const char *name;
  unsigned long copied, added, damage;

  name = p->two->path ? p->two->path : p->one->path;

  if (p->one->oid_valid && p->two->oid_valid &&
      oideq(&p->one->oid, &p->two->oid)) {





   damage = 0;
   goto found_damage;
  }

  if (options->flags.dirstat_by_file) {







   damage = 1;
   goto found_damage;
  }

  if (DIFF_FILE_VALID(p->one) && DIFF_FILE_VALID(p->two)) {
   diff_populate_filespec(options->repo, p->one, 0);
   diff_populate_filespec(options->repo, p->two, 0);
   diffcore_count_changes(options->repo,
            p->one, p->two, ((void*)0), ((void*)0),
            &copied, &added);
   diff_free_filespec_data(p->one);
   diff_free_filespec_data(p->two);
  } else if (DIFF_FILE_VALID(p->one)) {
   diff_populate_filespec(options->repo, p->one, CHECK_SIZE_ONLY);
   copied = added = 0;
   diff_free_filespec_data(p->one);
  } else if (DIFF_FILE_VALID(p->two)) {
   diff_populate_filespec(options->repo, p->two, CHECK_SIZE_ONLY);
   copied = 0;
   added = p->two->size;
   diff_free_filespec_data(p->two);
  } else
   continue;
  damage = (p->one->size - copied) + added;
  if (!damage)
   damage = 1;

found_damage:
  ALLOC_GROW(dir.files, dir.nr + 1, dir.alloc);
  dir.files[dir.nr].name = name;
  dir.files[dir.nr].changed = damage;
  changed += damage;
  dir.nr++;
 }


 if (!changed)
  return;


 QSORT(dir.files, dir.nr, dirstat_compare);
 gather_dirstat(options, &dir, changed, "", 0);
}
