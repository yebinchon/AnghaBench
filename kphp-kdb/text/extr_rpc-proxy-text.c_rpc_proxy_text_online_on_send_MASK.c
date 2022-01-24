#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct gather {int dummy; } ;
struct TYPE_2__ {int tot_buckets; } ;

/* Variables and functions */
 TYPE_1__* CC ; 
 int* Q ; 
 int Q_op ; 
 int Q_size ; 
 int Q_uid ; 
 int* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

int FUNC2 (struct gather *G, int num) {
  FUNC1 (Q_op);
  FUNC1 (Q_uid);
  int *size = FUNC0 (4);
  int i;
  int z = 0;
  for (i = 0; i < Q_size; i++) if (Q[i] % CC->tot_buckets == num) {
    FUNC1 (Q[i]);
    z ++;    
  }
  if (!z) {
    return -1;
  } else {
    *size = z;
    return 0;
  }
}