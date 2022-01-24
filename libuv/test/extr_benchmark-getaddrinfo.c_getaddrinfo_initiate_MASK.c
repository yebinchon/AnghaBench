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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  calls_initiated ; 
 int /*<<< orphan*/  getaddrinfo_cb ; 
 int /*<<< orphan*/  loop ; 
 int /*<<< orphan*/  name ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(uv_getaddrinfo_t* handle) {
  int r;

  calls_initiated++;

  r = FUNC1(loop, handle, &getaddrinfo_cb, name, NULL, NULL);
  FUNC0(r == 0);
}