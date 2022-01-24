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
 scalar_t__ fail_cb_called ; 
 int /*<<< orphan*/  FUNC1 (struct addrinfo*) ; 

__attribute__((used)) static void FUNC2(uv_getaddrinfo_t* req,
                                int status,
                                struct addrinfo* res) {
  FUNC0(fail_cb_called == 0);
  FUNC0(status < 0);
  FUNC0(res == NULL);
  FUNC1(res);  /* Should not crash. */
  fail_cb_called++;
}