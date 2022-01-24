#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 long long* I ; 
 scalar_t__* S ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,long long,long long,long long) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 
 char* write_buffer ; 

void FUNC3 (void) {
  long long id = I[0];
  char *data = (char*)S[1];
  long long api_id = id / 1000000000000ll; // 10^12
  long long user_id = id / 1000 % 1000000000;
  long long var_id = id % 1000;
  FUNC2 (write_buffer, "lu%lld.%lld.%lld", user_id, api_id, var_id);
  if (verbosity > 1) {
    FUNC1 (stderr, "store: %s\n", write_buffer);
  }
  FUNC0 (write_buffer, data);
}