
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {struct TYPE_3__* next; int val; } ;
typedef TYPE_1__ restore_list ;


 int dbg (char*,...) ;

void restore_list_dbg (restore_list *v) {
  restore_list *end = v;
  dbg ("-------\n");
  do {
    dbg ("(%p;%d)\n", v, v->val);
    v = v->next;
  } while (v != end);
}
