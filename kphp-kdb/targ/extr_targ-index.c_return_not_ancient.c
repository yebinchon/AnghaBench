
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* intree_t ;
struct TYPE_5__ {int flags; } ;
struct TYPE_4__ {int x; } ;


 int ADF_NEWANCIENT ;
 TYPE_3__* get_ad (int ) ;

__attribute__((used)) static int return_not_ancient (intree_t TC) {
  return !(get_ad (TC->x)->flags & ADF_NEWANCIENT);
}
