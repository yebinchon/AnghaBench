#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct lev_generic {int a; int b; int c; int d; int e; int /*<<< orphan*/  f; scalar_t__ type; } ;

/* Variables and functions */
 int* I ; 
 scalar_t__* L ; 
 scalar_t__ LEV_LI_SET_ENTRY_TEXT ; 
 int /*<<< orphan*/ * S ; 
 int /*<<< orphan*/  adj_rec ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 size_t pr_id ; 
 size_t pr_orig_album ; 
 size_t pr_orig_user ; 
 size_t pr_owner ; 
 size_t pr_photo ; 
 size_t pr_server ; 
 struct lev_generic* FUNC3 (scalar_t__) ; 

void FUNC4 (void) {
  int orig_user = I[pr_orig_user], orig_album = I[pr_orig_album], server = I[pr_server];
  int owner = I[pr_owner], id = I[pr_id];
  if (!FUNC0 (orig_user)) {
    return;
  }
  FUNC1 (orig_user, orig_album, server, owner, id, 0, 0);
  struct lev_generic *E = FUNC3 (24 + L[pr_photo]);
  E->type = LEV_LI_SET_ENTRY_TEXT + L[pr_photo];
  E->a = orig_user;
  E->b = orig_album;
  E->c = server;
  E->d = owner;
  E->e = id;
  FUNC2 (&E->f, S[pr_photo], L[pr_photo]);
  adj_rec++;
}