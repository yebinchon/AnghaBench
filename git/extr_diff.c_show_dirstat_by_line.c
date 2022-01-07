
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dirstat_dir {int nr; TYPE_2__* files; scalar_t__ alloc; int cumulative; int permille; } ;
struct diffstat_t {int nr; struct diffstat_file** files; } ;
struct diffstat_file {unsigned long added; unsigned long deleted; int name; scalar_t__ is_binary; } ;
struct TYPE_4__ {int dirstat_cumulative; } ;
struct diff_options {TYPE_1__ flags; int dirstat_permille; } ;
struct TYPE_5__ {unsigned long changed; int name; } ;


 int ALLOC_GROW (TYPE_2__*,int,scalar_t__) ;
 unsigned long DIV_ROUND_UP (unsigned long,int) ;
 int QSORT (TYPE_2__*,size_t,int ) ;
 int dirstat_compare ;
 int gather_dirstat (struct diff_options*,struct dirstat_dir*,unsigned long,char*,int ) ;

__attribute__((used)) static void show_dirstat_by_line(struct diffstat_t *data, struct diff_options *options)
{
 int i;
 unsigned long changed;
 struct dirstat_dir dir;

 if (data->nr == 0)
  return;

 dir.files = ((void*)0);
 dir.alloc = 0;
 dir.nr = 0;
 dir.permille = options->dirstat_permille;
 dir.cumulative = options->flags.dirstat_cumulative;

 changed = 0;
 for (i = 0; i < data->nr; i++) {
  struct diffstat_file *file = data->files[i];
  unsigned long damage = file->added + file->deleted;
  if (file->is_binary)







   damage = DIV_ROUND_UP(damage, 64);
  ALLOC_GROW(dir.files, dir.nr + 1, dir.alloc);
  dir.files[dir.nr].name = file->name;
  dir.files[dir.nr].changed = damage;
  changed += damage;
  dir.nr++;
 }


 if (!changed)
  return;


 QSORT(dir.files, dir.nr, dirstat_compare);
 gather_dirstat(options, &dir, changed, "", 0);
}
