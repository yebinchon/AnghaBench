#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  delayed_tree; int /*<<< orphan*/  msg_tree; } ;
typedef  TYPE_3__ user_t ;
struct TYPE_10__ {int flags; int clear_mask; int set_mask; int y; TYPE_2__* value; TYPE_1__* msg; } ;
typedef  TYPE_4__ tree_t ;
struct imessage {int flags; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int flags; } ;

/* Variables and functions */
#define  TF_MINUS 132 
#define  TF_PLUS 131 
#define  TF_REPLACED 130 
#define  TF_ZERO 129 
#define  TF_ZERO_PRIME 128 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 TYPE_3__* FUNC2 (int) ; 
 int FUNC3 (struct imessage*,int,int,int) ; 
 TYPE_4__* FUNC4 (int /*<<< orphan*/ ,int) ; 

int FUNC5 (int user_id, int local_id, int force) {
  user_t *U = FUNC2 (user_id);
  tree_t *T, *O;
  int flags, res;
  struct imessage M;

  if (local_id <= 0 || FUNC1 (user_id) < 0) { 
    return -1; 
  }
  if (U) {
    T = FUNC4 (U->msg_tree, local_id);
    O = FUNC4 (U->delayed_tree, local_id);
    if (O && O->flags == -1) {
      return -1;
    }
    if (O && force < 0 && ((O->clear_mask | O->set_mask | -0x10000) == -1)) {
      return O->set_mask;
    }
    if (T) {
      switch (T->y & 7) {
      case TF_MINUS:
        return -1;
      case TF_PLUS:
      case TF_REPLACED:
        FUNC0 (!O);
        flags = T->msg->flags;
        break;
      case TF_ZERO:
        flags = T->flags;
        break;
      case TF_ZERO_PRIME:
        flags = T->value->flags;
        break;
      default:
        FUNC0 (0);
      }
      if (O) {
        flags = (flags & ~O->clear_mask) | O->set_mask;
      }
      return flags;
    }
  }

  res = FUNC3 (&M, user_id, local_id, force > 0);

  if (res < 0) {
    return res;
  }
  if (!res) {
    return -1;
  }

  return M.flags;
}