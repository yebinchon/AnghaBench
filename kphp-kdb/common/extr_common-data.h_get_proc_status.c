
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_data {int dummy; } ;
struct TYPE_2__ {struct proc_data* pdata; } ;


 TYPE_1__* CData ;

__attribute__((used)) static inline struct proc_data *get_proc_status (int pid) { return CData ? &CData->pdata[pid] : 0; }
