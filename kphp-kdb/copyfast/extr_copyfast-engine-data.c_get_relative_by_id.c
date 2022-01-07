
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long id; } ;
struct relative {int type; struct relative* next; TYPE_1__ node; } ;
struct TYPE_4__ {struct relative* next; } ;


 TYPE_2__ RELATIVES ;

struct relative *get_relative_by_id (long long id) {
  struct relative *cur = RELATIVES.next;
  while (cur->type != -1) {
    if (cur->node.id == id) {
      return cur;
    }
    cur = cur->next;
  }
  return 0;
}
