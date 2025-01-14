
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int task_name; scalar_t__ is_helper; scalar_t__ main; } ;
typedef TYPE_1__ task_entry_t ;


 TYPE_1__* TASKS ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static int find_helpers(const task_entry_t* task,
                        const task_entry_t** helpers) {
  const task_entry_t* helper;
  int n_helpers;

  for (n_helpers = 0, helper = TASKS; helper->main; helper++) {
    if (helper->is_helper && strcmp(helper->task_name, task->task_name) == 0) {
      *helpers++ = helper;
      n_helpers++;
    }
  }

  return n_helpers;
}
