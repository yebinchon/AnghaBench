
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 int do_rpc_fetch_int (scalar_t__*) ;
 TYPE_1__ tl ;

int tl_parse_int (void) {
  if (tl.error) { return -1; }
  return do_rpc_fetch_int (&tl.error);
}
