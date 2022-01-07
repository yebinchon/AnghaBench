
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ewah_bitmap {int dummy; } ;
struct commit {int dummy; } ;
struct TYPE_4__ {scalar_t__ flags; struct ewah_bitmap* bitmap; struct commit* commit; } ;
struct TYPE_3__ {int selected_nr; int selected_alloc; TYPE_2__* selected; } ;


 int REALLOC_ARRAY (TYPE_2__*,int) ;
 TYPE_1__ writer ;

__attribute__((used)) static inline void push_bitmapped_commit(struct commit *commit, struct ewah_bitmap *reused)
{
 if (writer.selected_nr >= writer.selected_alloc) {
  writer.selected_alloc = (writer.selected_alloc + 32) * 2;
  REALLOC_ARRAY(writer.selected, writer.selected_alloc);
 }

 writer.selected[writer.selected_nr].commit = commit;
 writer.selected[writer.selected_nr].bitmap = reused;
 writer.selected[writer.selected_nr].flags = 0;

 writer.selected_nr++;
}
