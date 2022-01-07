
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct connection {int dummy; } ;
struct TYPE_3__ {int len; int read; struct connection* extra; scalar_t__ readed; } ;
typedef TYPE_1__ data_reader_t ;


 int data_read_conn ;

data_reader_t *create_data_reader (struct connection *c, int data_len) {
  static data_reader_t reader;

  reader.readed = 0;
  reader.len = data_len;
  reader.extra = c;

  reader.read = data_read_conn;

  return &reader;
}
