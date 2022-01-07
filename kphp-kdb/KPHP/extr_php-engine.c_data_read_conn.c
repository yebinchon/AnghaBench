
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int In; } ;
struct TYPE_3__ {int readed; int len; scalar_t__ extra; } ;
typedef TYPE_1__ data_reader_t ;


 int read_in (int *,void*,int ) ;

void data_read_conn (data_reader_t *reader, void *dest) {
  reader->readed = 1;
  read_in (&((struct connection *)(reader->extra))->In, dest, reader->len);
}
