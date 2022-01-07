
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int priv_mask; } ;
typedef TYPE_1__ user_t ;
typedef int index_header ;


 int assert (int) ;
 int fprintf (int ,char*,int,int) ;
 TYPE_1__* get_user_f (int,int) ;
 int idx_fd ;
 int read (int ,int*,int) ;
 int stderr ;
 int verbosity ;

void load_privacy (index_header *header) {
  static int x[1 << 20];


  while (1) {
    int l = read (idx_fd, x, 1 << 20);
    if (!l) {
      break;
    }
    assert ((l & 7) == 0);
    int i;
    for (i = 0; i < (l >> 3); i++) {
      if (verbosity >= 3) {
        fprintf (stderr, "uid = %d, priv_mask = %d\n", x[2 * i], x[2 * i + 1]);
      }
      user_t *U = get_user_f (x[2 * i], 1);
      U->priv_mask = x[2 * i + 1];
      assert (U->priv_mask & 1);
    }
  }
}
