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
typedef  int /*<<< orphan*/  uv_mutex_t ;
struct TYPE_3__ {int /*<<< orphan*/  cond_var; } ;
typedef  TYPE_1__ uv_cond_t ;
typedef  int uint64_t ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 scalar_t__ ERROR_TIMEOUT ; 
 scalar_t__ FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int UV_ETIMEDOUT ; 
 int /*<<< orphan*/  FUNC2 () ; 

int FUNC3(uv_cond_t* cond, uv_mutex_t* mutex, uint64_t timeout) {
  if (FUNC1(&cond->cond_var, mutex, (DWORD)(timeout / 1e6)))
    return 0;
  if (FUNC0() != ERROR_TIMEOUT)
    FUNC2();
  return UV_ETIMEDOUT;
}