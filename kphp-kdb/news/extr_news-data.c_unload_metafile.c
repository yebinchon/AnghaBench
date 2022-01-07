
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ data; scalar_t__ aio; } ;
struct TYPE_3__ {int offset; } ;


 int assert (int ) ;
 int del_use (int) ;
 TYPE_2__* large_metafiles ;
 TYPE_1__* large_users ;
 int metafile_free (scalar_t__,int) ;
 int metafiles_loaded ;
 int metafiles_unloaded ;

int unload_metafile (int pos) {
  if (large_metafiles[pos].aio) {
    return 0;
  }
  if (!large_metafiles[pos].data) {
    assert (0);
    return 0;
  }
  del_use (pos);
  metafile_free (large_metafiles[pos].data, sizeof (long long) * (large_users[pos + 1].offset - large_users[pos].offset));
  large_metafiles[pos].data = 0;
  metafiles_loaded--;
  metafiles_unloaded++;
  return 1;
}
