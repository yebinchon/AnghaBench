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
struct TYPE_3__ {int data_len; int /*<<< orphan*/  data; } ;
typedef  TYPE_1__ record_t ;

/* Variables and functions */
 int /*<<< orphan*/  add_logevents ; 
 void* FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6 (record_t *r) {
  FUNC5 ();
  FUNC1 (r->data_len >= 4);
  void *E = FUNC0 (0, r->data_len, 0);
  FUNC4 (E, r->data, r->data_len);
  if (FUNC2 () > (1 << 23)) {
    FUNC3 (0);
  }
  add_logevents++;
}