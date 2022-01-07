
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int new_exceptions; scalar_t__ metafile_len; int * metafile; } ;
typedef TYPE_2__ user ;
struct lev_mf_clear_exceptions {int user_id; } ;
struct TYPE_11__ {int user_cnt; TYPE_1__* user_index; } ;
struct TYPE_9__ {scalar_t__ size; } ;


 scalar_t__ NOAIO ;
 int add_user_used (TYPE_2__*) ;
 int assert (int) ;
 int binlog_readed ;
 int chg_free (int *) ;
 TYPE_2__* conv_uid (int ) ;
 int del_user_used (TYPE_2__*) ;
 TYPE_5__ header ;
 scalar_t__ index_mode ;
 int load_user_metafile (TYPE_2__*,int,int) ;
 int local_uid (int ) ;
 int qfree (int *,scalar_t__) ;
 int user_loaded (TYPE_2__*) ;

int clear_exceptions (struct lev_mf_clear_exceptions *E) {
  user *u = conv_uid (E->user_id);
  int local_id = local_uid (E->user_id);

  if (u == ((void*)0)) {
    return 0;
  }

  load_user_metafile (u, local_id, NOAIO || index_mode || !binlog_readed);

  if (!user_loaded (u)) {
    return -2;
  }

  del_user_used (u);
  add_user_used (u);

  if (u->metafile != ((void*)0)) {
    assert (1 <= local_id && local_id <= header.user_cnt);

    qfree (u->metafile, u->metafile_len);
    u->metafile = ((void*)0);
    u->metafile_len = 0;
    header.user_index[local_id].size = 0;
  }
  chg_free (&u->new_exceptions);
  return 1;
}
