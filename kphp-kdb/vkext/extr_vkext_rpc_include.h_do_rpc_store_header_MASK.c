#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ magic; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_BUFFER_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int TL_RPC_DEST_ACTOR ; 
 int TL_RPC_DEST_ACTOR_FLAGS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,long long) ; 
 TYPE_1__* outbuf ; 
 int /*<<< orphan*/  store ; 

__attribute__((used)) static void FUNC6 (long long cluster_id, int flags) { /* {{{ */
  FUNC0 (store);
  FUNC2 (store);
  FUNC3 (outbuf && outbuf->magic == RPC_BUFFER_MAGIC);
  if (flags) {
    FUNC4 (outbuf, TL_RPC_DEST_ACTOR_FLAGS);
    FUNC5 (outbuf, cluster_id);
    FUNC4 (outbuf, flags);
  } else {
    FUNC4 (outbuf, TL_RPC_DEST_ACTOR);
    FUNC5 (outbuf, cluster_id);
  }
  FUNC1 (store);
}