
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int delayed_tree; int msg_tree; } ;
typedef TYPE_3__ user_t ;
struct TYPE_10__ {int flags; int clear_mask; int set_mask; int y; TYPE_2__* value; TYPE_1__* msg; } ;
typedef TYPE_4__ tree_t ;
struct imessage {int flags; } ;
struct TYPE_8__ {int flags; } ;
struct TYPE_7__ {int flags; } ;







 int assert (int) ;
 scalar_t__ conv_uid (int) ;
 TYPE_3__* get_user (int) ;
 int load_message (struct imessage*,int,int,int) ;
 TYPE_4__* tree_lookup (int ,int) ;

int get_message_flags (int user_id, int local_id, int force) {
  user_t *U = get_user (user_id);
  tree_t *T, *O;
  int flags, res;
  struct imessage M;

  if (local_id <= 0 || conv_uid (user_id) < 0) {
    return -1;
  }
  if (U) {
    T = tree_lookup (U->msg_tree, local_id);
    O = tree_lookup (U->delayed_tree, local_id);
    if (O && O->flags == -1) {
      return -1;
    }
    if (O && force < 0 && ((O->clear_mask | O->set_mask | -0x10000) == -1)) {
      return O->set_mask;
    }
    if (T) {
      switch (T->y & 7) {
      case 132:
        return -1;
      case 131:
      case 130:
        assert (!O);
        flags = T->msg->flags;
        break;
      case 129:
        flags = T->flags;
        break;
      case 128:
        flags = T->value->flags;
        break;
      default:
        assert (0);
      }
      if (O) {
        flags = (flags & ~O->clear_mask) | O->set_mask;
      }
      return flags;
    }
  }

  res = load_message (&M, user_id, local_id, force > 0);

  if (res < 0) {
    return res;
  }
  if (!res) {
    return -1;
  }

  return M.flags;
}
