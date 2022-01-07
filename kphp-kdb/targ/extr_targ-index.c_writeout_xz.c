
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* intree_t ;
struct TYPE_3__ {int z; int x; } ;


 int writeout_int (int ) ;

__attribute__((used)) static int writeout_xz (intree_t TC) {
  writeout_int (TC->x);
  writeout_int (TC->z);
  return 1;
}
