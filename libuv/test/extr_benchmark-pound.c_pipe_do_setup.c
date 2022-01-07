
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int i; } ;


 TYPE_1__* pipe_conns ;

__attribute__((used)) static void pipe_do_setup(int num, void* arg) {
  int i;

  for (i = 0; i < num; i++) {
    pipe_conns[i].i = i;
  }
}
