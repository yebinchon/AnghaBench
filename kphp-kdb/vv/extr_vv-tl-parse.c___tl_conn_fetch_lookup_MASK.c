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
typedef  int /*<<< orphan*/  nb_iterator_t ;
struct TYPE_2__ {int /*<<< orphan*/  In; } ;

/* Variables and functions */
 TYPE_1__* TL_IN_CONN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,void*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC3 (void *buf, int len) {
  nb_iterator_t R;
  FUNC2 (&R, &TL_IN_CONN->In);
  FUNC0 (FUNC1 (&R, buf, len) == len);
}