
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {TYPE_1__* next_used; TYPE_2__* prev_used; } ;
typedef TYPE_3__ user ;
struct TYPE_6__ {TYPE_1__* next_used; } ;
struct TYPE_5__ {TYPE_2__* prev_used; } ;


 int assert (int ) ;

void del_user_used (user *u) {
  assert (u->prev_used != ((void*)0));
  assert (u->next_used != ((void*)0));

  u->next_used->prev_used = u->prev_used;
  u->prev_used->next_used = u->next_used;

  u->prev_used = ((void*)0);
  u->next_used = ((void*)0);
}
