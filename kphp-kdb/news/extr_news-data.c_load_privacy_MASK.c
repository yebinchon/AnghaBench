#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int priv_mask; } ;
typedef  TYPE_1__ user_t ;
typedef  int /*<<< orphan*/  index_header ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int,int) ; 
 TYPE_1__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  idx_fd ; 
 int FUNC3 (int /*<<< orphan*/ ,int*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

void FUNC4 (index_header *header) {
  static int x[1 << 20];
  //assert (header->small_data_offset >= sizeof (*header));
  //assert (lseek (idx_fd, header->small_data_offset, SEEK_SET) == header->small_data_offset);
  while (1) {
    int l = FUNC3 (idx_fd, x, 1 << 20);
    if (!l) {
      break;
    }
    FUNC0 ((l & 7) == 0);
    int i;
    for (i = 0; i < (l >> 3); i++) {
      if (verbosity >= 3) {
        FUNC1 (stderr, "uid = %d, priv_mask = %d\n", x[2 * i], x[2 * i + 1]);
      }
      user_t *U = FUNC2 (x[2 * i], 1);
      U->priv_mask = x[2 * i + 1];
      FUNC0 (U->priv_mask & 1);
    }
  }
}