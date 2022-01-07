
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int tot_lists; } ;
struct TYPE_3__ {scalar_t__ aio; scalar_t__ data; } ;


 TYPE_2__ Header ;
 int assert (int) ;
 TYPE_1__** metafiles ;
 int tot_revlist_metafiles ;

int check_metafile_loaded (int x, int use_aio) {
  assert (0 <= x && x < Header.tot_lists + tot_revlist_metafiles + 1);
  if (metafiles[x] && metafiles[x]->data) {
    if (use_aio == 0) {
      assert (!metafiles[x]->aio);
    }
    if (use_aio < 0 && metafiles[x]->aio) {
      return 0;
    }
    return 1;
  } else {
    return 0;
  }
}
