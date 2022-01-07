
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* next_used; TYPE_1__* prev_used; } ;
typedef TYPE_3__ user ;
struct TYPE_7__ {TYPE_1__* prev_used; } ;
struct TYPE_6__ {TYPE_2__* next_used; } ;


 int assert (int ) ;
 int dump_lru (char*,int) ;
 int ltbl_get_rev (int *,int) ;
 int sprintf (char*,char*,int) ;
 int user_table ;
 TYPE_3__* users ;
 int verbosity ;

void del_user_used (user *u) {
  if (verbosity > 3) {
    char tmp[100];
    sprintf (tmp, "?(-%d)", ltbl_get_rev (&user_table, (int)(u - users)));
    dump_lru (tmp, -ltbl_get_rev (&user_table, (int)(u - users)));
  }
  assert (u->prev_used != ((void*)0));
  assert (u->next_used != ((void*)0));

  u->next_used->prev_used = u->prev_used;
  u->prev_used->next_used = u->next_used;

  u->prev_used = ((void*)0);
  u->next_used = ((void*)0);
  if (verbosity > 3) {
    dump_lru ("!", 0);
  }
}
