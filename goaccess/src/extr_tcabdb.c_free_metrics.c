
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* metrics; } ;
struct TYPE_3__ {scalar_t__ metric; int dbpath; int store; } ;
typedef TYPE_1__ GTCStorageMetric ;
typedef size_t GModule ;


 int GSMTRC_TOTAL ;
 scalar_t__ MTRC_AGENTS ;
 int tc_bdb_close (int ,int ) ;
 int tc_db_close (int ,int ) ;
 TYPE_2__* tc_storage ;

__attribute__((used)) static void
free_metrics (GModule module)
{
  int i;
  GTCStorageMetric mtrc;

  for (i = 0; i < GSMTRC_TOTAL; i++) {
    mtrc = tc_storage[module].metrics[i];
  }
}
