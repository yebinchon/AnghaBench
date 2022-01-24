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
struct TYPE_3__ {int /*<<< orphan*/  mask; int /*<<< orphan*/  transaction_id; int /*<<< orphan*/  binlog_pos; } ;
typedef  TYPE_1__ transaction_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*,int,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (unsigned char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (transaction_t *T, char output[28]) {
  unsigned char a[16], b[20];
  FUNC5 (4, "{0} = %lld, {1} = %d, {2} = %d\n", T->binlog_pos, T->transaction_id, T->mask);
  FUNC3 (a, &T->binlog_pos, 8);
  FUNC3 (a + 8, &T->transaction_id, 4);
  FUNC3 (a + 12, &T->mask, 4);
  FUNC0 (a, 16, b);
  int r = FUNC2 (b, 20, output, 40);
  FUNC1 (!r);
  FUNC1 (FUNC4 (output) == 27);
}