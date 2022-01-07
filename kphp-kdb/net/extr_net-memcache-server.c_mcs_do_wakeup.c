
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mcs_data {scalar_t__ query_type; } ;
struct connection {int Out; } ;


 struct mcs_data* MCS_DATA (struct connection*) ;
 scalar_t__ mct_get ;
 int write_out (int *,char*,int) ;

int mcs_do_wakeup (struct connection *c) {
  struct mcs_data *D = MCS_DATA(c);
  if (D->query_type == mct_get) {
    write_out (&c->Out, "END\r\n", 5);
  }
  return 0;
}
