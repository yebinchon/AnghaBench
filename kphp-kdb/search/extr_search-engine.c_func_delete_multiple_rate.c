
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hashset_int {int dummy; } ;


 int hashset_int_insert (struct hashset_int*,int) ;

__attribute__((used)) static void func_delete_multiple_rate (void *ctx, int i) {
  struct hashset_int *H = (struct hashset_int *) ctx;
  if (i) {
    hashset_int_insert (H, i);
  }
}
