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
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 (TYPE_1__*,double*) ; 
 int /*<<< orphan*/  fetch ; 
 TYPE_1__* inbuf ; 
 char* FUNC5 (char*) ; 

double FUNC6 (char **error) { /* {{{ */
  FUNC0 (fetch);
  FUNC2 (fetch);
  if (!inbuf) {
    *error = FUNC5 ("Trying to fetch from empty buffer\n");
    return 0;
  }
  FUNC3 (inbuf->magic == RPC_BUFFER_MAGIC);
  
  double value;
  if (FUNC4 (inbuf, &value) < 0) {
    *error = FUNC5 ("Can not fetch double from inbuf");
    FUNC1 (fetch);
    return 0;
  } else {
    FUNC1 (fetch);
    *error = 0;
    return value;
  }
}