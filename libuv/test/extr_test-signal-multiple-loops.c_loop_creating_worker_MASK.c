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
typedef  int /*<<< orphan*/  uv_signal_t ;
typedef  int /*<<< orphan*/  uv_loop_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  SIGTERM ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loop_creation_counter ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  signal_unexpected_cb ; 
 int /*<<< orphan*/  stop ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC10(void* context) {
  (void) context;

  do {
    uv_loop_t *loop;
    uv_signal_t signal;
    int r;

    loop = FUNC3(sizeof(*loop));
    FUNC0(loop != NULL);
    FUNC0(0 == FUNC6(loop));

    r = FUNC8(loop, &signal);
    FUNC0(r == 0);

    r = FUNC9(&signal, signal_unexpected_cb, SIGTERM);
    FUNC0(r == 0);

    FUNC4((uv_handle_t*) &signal, NULL);

    r = FUNC7(loop, UV_RUN_DEFAULT);
    FUNC0(r == 0);

    FUNC5(loop);
    FUNC1(loop);

    FUNC2(&loop_creation_counter);
  } while (!stop);
}