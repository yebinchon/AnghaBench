
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct perf_event {TYPE_1__* pmu; } ;
struct TYPE_2__ {int name; } ;


 int strlen (char*) ;
 int strncmp (int ,char*,int ) ;

__attribute__((used)) static bool is_thread_imc_pmu(struct perf_event *event)
{
 if (!strncmp(event->pmu->name, "thread_imc", strlen("thread_imc")))
  return 1;

 return 0;
}
