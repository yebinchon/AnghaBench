
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_4__ {char* buff; int size; int pos; } ;
typedef TYPE_1__ stats_buffer_t ;


 int prepare_stats (struct connection*,char*,int) ;
 int sb_truncate (TYPE_1__*) ;

void sb_prepare (stats_buffer_t *sb, struct connection *c, char *buff, int size) {
  sb->buff = buff;
  sb->size = size;
  sb->pos = prepare_stats (c, buff, size);
  if ((sb->pos == size - 1 && sb->buff[sb->pos]) || sb->pos >= size) {
    sb_truncate (sb);
  }
}
