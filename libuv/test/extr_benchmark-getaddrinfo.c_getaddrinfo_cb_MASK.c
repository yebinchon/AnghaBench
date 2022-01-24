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
typedef  int /*<<< orphan*/  uv_getaddrinfo_t ;
struct addrinfo {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ TOTAL_CALLS ; 
 int /*<<< orphan*/  calls_completed ; 
 scalar_t__ calls_initiated ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct addrinfo*) ; 

__attribute__((used)) static void FUNC3(uv_getaddrinfo_t* handle, int status,
    struct addrinfo* res) {
  FUNC0(status == 0);
  calls_completed++;
  if (calls_initiated < TOTAL_CALLS) {
    FUNC1(handle);
  }

  FUNC2(res);
}