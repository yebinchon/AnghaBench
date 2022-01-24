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
struct TYPE_3__ {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_BUFFER_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* outbuf ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  store ; 

__attribute__((used)) static void FUNC6 (int value) { /* {{{ */
  FUNC0 (store);
  FUNC2 (store);
  FUNC3 (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  FUNC4 (outbuf, value);
#ifdef STORE_DEBUG
  fprintf (stderr, "%d\n", value);
#endif
  FUNC1 (store);
}