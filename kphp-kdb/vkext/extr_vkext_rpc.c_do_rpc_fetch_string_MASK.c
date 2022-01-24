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
 scalar_t__ FUNC4 (TYPE_1__*,int*,char**) ; 
 int /*<<< orphan*/  fetch ; 
 TYPE_1__* inbuf ; 
 char* FUNC5 (char*) ; 

int FUNC6 (char **value) { /* {{{ */
  FUNC0 (fetch);
  FUNC2 (fetch);
  if (!inbuf) {
    *value = FUNC5 ("Trying fetch from empty buffer\n");
    FUNC1 (fetch);
    return -1;
  }
  FUNC3 (inbuf->magic == RPC_BUFFER_MAGIC);
  int value_len;
  if (FUNC4 (inbuf, &value_len, value) < 0) {
    *value = FUNC5 ("Can not fetch string from inbuf\n");
    FUNC1 (fetch);
    return -1;
  } else {
    FUNC1 (fetch);
    return value_len;
  }
}