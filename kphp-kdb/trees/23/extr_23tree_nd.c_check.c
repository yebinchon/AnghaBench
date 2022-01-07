
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ depth; int root; } ;
typedef TYPE_1__ tree23_root_t ;


 scalar_t__ check_rec (int ,int,int,scalar_t__) ;

__attribute__((used)) static int check (tree23_root_t *R) {
  if (!R->root) {
    if (R->depth) {
      return -1;
    }
    return 0;
  }
  if (R->depth < 0) {
    return -1;
  }
  return check_rec (R->root, -1 << 31, ~(-1 << 31), R->depth) ? R->depth : -1;
}
