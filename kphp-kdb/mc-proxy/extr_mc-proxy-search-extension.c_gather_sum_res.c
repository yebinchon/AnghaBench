
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_entry {int res_read; int* data; } ;


 int * R ;

__attribute__((used)) static void gather_sum_res (struct gather_entry *GE, int limit) {
  int cnt = (GE->res_read >> 2) - 1;
  int *ptr = GE->data;
  int i;

  if (cnt > limit) { cnt = limit; }
  for (i = 0; i < cnt; i++) {
    R[i] += *ptr++;
  }
}
