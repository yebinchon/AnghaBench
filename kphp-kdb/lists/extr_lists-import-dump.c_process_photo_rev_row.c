
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_generic {int a; int b; int c; int d; int e; int f; scalar_t__ type; } ;


 int* I ;
 scalar_t__* L ;
 scalar_t__ LEV_LI_SET_ENTRY_TEXT ;
 int * S ;
 int adj_rec ;
 int check_id (int) ;
 int log_x32_set (int,int,int,int,int,int ,int ) ;
 int memcpy (int *,int ,scalar_t__) ;
 size_t pr_id ;
 size_t pr_orig_album ;
 size_t pr_orig_user ;
 size_t pr_owner ;
 size_t pr_photo ;
 size_t pr_server ;
 struct lev_generic* write_alloc (scalar_t__) ;

void process_photo_rev_row (void) {
  int orig_user = I[pr_orig_user], orig_album = I[pr_orig_album], server = I[pr_server];
  int owner = I[pr_owner], id = I[pr_id];
  if (!check_id (orig_user)) {
    return;
  }
  log_x32_set (orig_user, orig_album, server, owner, id, 0, 0);
  struct lev_generic *E = write_alloc (24 + L[pr_photo]);
  E->type = LEV_LI_SET_ENTRY_TEXT + L[pr_photo];
  E->a = orig_user;
  E->b = orig_album;
  E->c = server;
  E->d = owner;
  E->e = id;
  memcpy (&E->f, S[pr_photo], L[pr_photo]);
  adj_rec++;
}
