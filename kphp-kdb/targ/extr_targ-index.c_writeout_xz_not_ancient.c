
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* intree_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int z; int x; } ;


 int ADF_NEWANCIENT ;
 int ancient_ad_users ;
 int assert (int ) ;
 TYPE_3__* get_ad (int ) ;
 int writeout_int (int ) ;

__attribute__((used)) static int writeout_xz_not_ancient (intree_t TC) {
  if (get_ad (TC->x)->flags & ADF_NEWANCIENT) {
    assert (TC->z);
    ancient_ad_users++;
    return 0;
  } else {
    writeout_int (TC->x);
    writeout_int (TC->z);
    return 1;
  }
}
