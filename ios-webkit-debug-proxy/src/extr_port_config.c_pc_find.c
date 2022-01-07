
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* pc_t ;
typedef TYPE_2__* pc_entry_t ;
struct TYPE_6__ {char* device_id; struct TYPE_6__* next; } ;
struct TYPE_5__ {TYPE_2__* head; } ;


 int strcasecmp (char const*,char const*) ;
 int strcmp (char const*,char*) ;

const pc_entry_t pc_find(pc_t self, const char *device_id) {
  pc_entry_t e;
  for (e = self->head; e; e = e->next) {
    const char *s = e->device_id;
    if ((s && !strcmp(s, "*")) ||
        (device_id ? (s && !strcasecmp(s, device_id)) : !s)) {
      return e;
    }
  }
  return ((void*)0);
}
