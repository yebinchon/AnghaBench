
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* buff; int size; scalar_t__ pos; } ;
typedef TYPE_1__ cache_buffer_t ;



void cache_bclear (cache_buffer_t *b, char *buff, int size) {
  b->buff = buff;
  b->size = size;
  b->pos = 0;
}
