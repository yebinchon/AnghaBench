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
struct TYPE_2__ {scalar_t__ sptr; scalar_t__ wptr; scalar_t__ magic; scalar_t__ rptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ RPC_BUFFER_MAGIC ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  fetch ; 
 TYPE_1__* inbuf ; 
 char* FUNC4 (char*) ; 

int FUNC5 (int pos, char **error) { /* {{{ */
  FUNC0 (fetch);
  FUNC2 (fetch);
  if (!inbuf) {
    *error = FUNC4 ("Trying to fetch from empty buffer\n");
    FUNC1 (fetch);
    return 0;
  }
  if (pos < 0 || inbuf->sptr + pos > inbuf->wptr) {
    *error = FUNC4 ("Trying to set bad position\n");
    FUNC1 (fetch);
    return 0;
  }
  FUNC3 (inbuf->magic == RPC_BUFFER_MAGIC);
  *error = 0;
  inbuf->rptr = inbuf->sptr + pos;
  FUNC1 (fetch);
  return 1;
}