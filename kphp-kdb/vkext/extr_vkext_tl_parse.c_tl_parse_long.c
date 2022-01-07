
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ error; } ;


 long long do_rpc_fetch_long (scalar_t__*) ;
 TYPE_1__ tl ;

long long tl_parse_long (void) {
  if (tl.error) { return -1; }
  return do_rpc_fetch_long (&tl.error);
}
