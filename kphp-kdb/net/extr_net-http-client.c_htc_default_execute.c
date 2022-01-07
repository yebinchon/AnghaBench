
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct htc_data {int header_size; } ;
struct connection {int dummy; } ;


 struct htc_data* HTC_DATA (struct connection*) ;
 int SKIP_ALL_BYTES ;
 int vkprintf (int,char*,int,int ) ;

int htc_default_execute (struct connection *c, int op) {
  struct htc_data *D = HTC_DATA(c);

  vkprintf (1, "http_client_execute: op=%d, header_size=%d\n", op, D->header_size);

  return SKIP_ALL_BYTES;
}
