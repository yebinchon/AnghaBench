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
typedef  int /*<<< orphan*/  last_error ;

/* Variables and functions */
 int MAX_ERROR_BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,int,void*) ; 

__attribute__((used)) static int FUNC2 (void **IP, int *n, int ip_size, void *cmd, char last_error[MAX_ERROR_BUF_SIZE]) {
  FUNC1 (4, "ip_append (*n = %d, cmd = %p)\n", *n, cmd);
  if (*n >= ip_size) {
    FUNC0 (last_error, sizeof (last_error[0]) * MAX_ERROR_BUF_SIZE, "too many commands (%d)", *n);
    return 0;
  }
  IP[(*n)++] = cmd;
  return 1;
}