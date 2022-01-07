
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int * metafile; } ;
typedef TYPE_1__ user ;
struct TYPE_7__ {int user_cnt; } ;


 int * EMPTY__METAFILE ;
 int assert (int) ;
 int fprintf (int ,char*,int,TYPE_1__*) ;
 TYPE_3__ header ;
 int stderr ;
 TYPE_1__* users ;
 int verbosity ;

void bind_user_metafile (user *u) {
  if (verbosity > 2) {
    fprintf (stderr, "bind user metafile local id = %d (%p)\n", (int)(u - users), u);
  }
  int local_id = (int)(u - users);

  if (u->metafile == ((void*)0) || u->metafile == EMPTY__METAFILE) {
    return;
  }

  assert (1 <= local_id && local_id <= header.user_cnt);
}
