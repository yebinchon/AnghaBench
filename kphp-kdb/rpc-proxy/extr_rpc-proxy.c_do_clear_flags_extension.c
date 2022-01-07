
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* h; } ;
struct TYPE_3__ {int flags; } ;


 TYPE_2__* CQ ;
 int RPC_FUN_NEXT ;

int do_clear_flags_extension (void **IP, void **Data) {
  CQ->h->flags &= 0x0000ffff;
  RPC_FUN_NEXT;
}
