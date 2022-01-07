
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ state; } ;
struct TYPE_4__ {int is_server; } ;
typedef TYPE_1__ GameContext ;


 scalar_t__ CA_ACTIVE ;
 int Com_Frame () ;
 int EAGAIN ;
 int IN_Frame () ;
 TYPE_3__ clc ;

__attribute__((used)) static int connecting(GameContext* gc) {
  int err = !gc->is_server && clc.state < CA_ACTIVE ? EAGAIN : 0;
  IN_Frame();
  Com_Frame();
  return err;
}
