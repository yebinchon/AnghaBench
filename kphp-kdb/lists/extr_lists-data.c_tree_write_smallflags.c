
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree_ext_small_t ;
struct TYPE_2__ {int flags; } ;


 TYPE_1__* LPAYLOAD (int *) ;
 int writeout_char (int ) ;

__attribute__((used)) static int tree_write_smallflags (tree_ext_small_t *T) {
  writeout_char (LPAYLOAD(T)->flags);
  return 0;
}
