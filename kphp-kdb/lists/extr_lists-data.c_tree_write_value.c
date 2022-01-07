
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
struct TYPE_2__ {int value; } ;


 TYPE_1__* LPAYLOAD (int *) ;
 int writeout_value (int ) ;

__attribute__((used)) static int tree_write_value (tree_ext_small_t *T) {
  writeout_value (LPAYLOAD(T)->value);
  return 0;
}
