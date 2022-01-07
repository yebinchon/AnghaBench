
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pr_tree; } ;
typedef TYPE_1__ user_t ;
struct TYPE_8__ {int x; } ;
typedef TYPE_2__ privacy_t ;
typedef int privacy_key_t ;


 TYPE_2__* alloc_privacy () ;
 int privacy_lookup (int ,int ) ;
 int privacy_replace (int ,TYPE_2__*,int ) ;
 int save_privacy_cats (TYPE_1__*) ;

__attribute__((used)) static int set_privacy (user_t *U, privacy_key_t privacy_key, int force) {
  if (!U || !privacy_key) {
    return -1;
  }
  if (!force && !privacy_lookup (U->pr_tree, privacy_key)) {
    return -1;
  }

  save_privacy_cats (U);

  privacy_t *P = alloc_privacy();
  P->x = privacy_key;

  U->pr_tree = privacy_replace (U->pr_tree, P, 0);
  return 1;
}
