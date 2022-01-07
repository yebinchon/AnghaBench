
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int binlogs; int * B; } ;
typedef TYPE_1__ volume_t ;


 int binlog_relax_astat (int ,double) ;

__attribute__((used)) static void volume_relax_astat (volume_t *V, double e) {
  int i;
  for (i = 0; i < V->binlogs; i++) {
    binlog_relax_astat (V->B[i], e);
  }
}
