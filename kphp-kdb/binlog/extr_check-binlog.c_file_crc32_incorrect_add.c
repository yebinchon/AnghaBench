
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {long long crc32_off; int total_incorrect_crc32_logevents; } ;
typedef TYPE_1__ file_t ;
struct TYPE_6__ {int incorrect_logevents; long long* last_incorrect_off; int found; } ;
typedef TYPE_2__ crc32_stat_t ;


 int assert (int) ;

__attribute__((used)) static void file_crc32_incorrect_add (file_t *F, crc32_stat_t *S) {
  F->total_incorrect_crc32_logevents++;
  S->incorrect_logevents++;
  int i = S->incorrect_logevents & 3;
  S->last_incorrect_off[i] = F->crc32_off;
  if (S->incorrect_logevents >= 3) {
    long long s = S->last_incorrect_off[i] - S->last_incorrect_off[(i+2)&3];
    assert (s >= 0);
    S->found = s <= 0x20000;
  }
}
