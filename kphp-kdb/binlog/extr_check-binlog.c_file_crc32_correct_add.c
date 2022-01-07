
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int crc32_off; int total_correct_crc32_logevents; } ;
typedef TYPE_1__ file_t ;
struct TYPE_8__ {int last_correct_off; } ;
typedef TYPE_2__ crc32_stat_t ;


 int file_crc32_correct_flush (TYPE_1__*,TYPE_2__*) ;

__attribute__((used)) static void file_crc32_correct_add (file_t *F, crc32_stat_t *S) {
  file_crc32_correct_flush (F, S);
  F->total_correct_crc32_logevents++;
  S->last_correct_off = F->crc32_off;
}
