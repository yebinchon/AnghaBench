
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcc_data {int key_len; int arg_num; int response_len; } ;
struct connection {int last_response_time; } ;


 struct mcc_data* MCC_DATA (struct connection*) ;
 int SKIP_ALL_BYTES ;
 int fprintf (int ,char*,int,int,int,int) ;
 int precise_now ;
 int stderr ;
 scalar_t__ verbosity ;

int proxy_client_execute (struct connection *c, int op) {
  struct mcc_data *D = MCC_DATA(c);

  if (verbosity > 0) {
    fprintf (stderr, "proxy_mc_client: op=%d, key_len=%d, arg#=%d, response_len=%d\n", op, D->key_len, D->arg_num, D->response_len);
  }

  c->last_response_time = precise_now;
  return SKIP_ALL_BYTES;
}
