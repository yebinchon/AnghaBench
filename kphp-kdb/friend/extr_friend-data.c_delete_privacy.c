
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int pr_tree; } ;
typedef TYPE_1__ user_t ;
typedef int privacy_key_t ;


 int privacy_delete (int ,int ) ;
 scalar_t__ privacy_lookup (int ,int ) ;

__attribute__((used)) static int delete_privacy (user_t *U, privacy_key_t key) {
  if (!U || !key) {
    return -1;
  }
  if (privacy_lookup (U->pr_tree, key)) {
    U->pr_tree = privacy_delete (U->pr_tree, key);
    return 1;
  } else {
    return 0;
  }
}
