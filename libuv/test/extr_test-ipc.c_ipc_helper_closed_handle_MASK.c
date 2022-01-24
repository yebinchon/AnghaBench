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
typedef  int /*<<< orphan*/  uv_stream_t ;
typedef  int /*<<< orphan*/  uv_handle_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  LARGE_SIZE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  UV_RUN_DEFAULT ; 
 int /*<<< orphan*/  buffer ; 
 int /*<<< orphan*/  channel ; 
 int closed_handle_write ; 
 int /*<<< orphan*/  large_buf ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 

int FUNC13(void) {
  int r;

  FUNC2(buffer, '.', LARGE_SIZE);
  large_buf = FUNC4(buffer, LARGE_SIZE);

  r = FUNC9(FUNC5(), &channel, 1);
  FUNC0(r == 0);

  FUNC10(&channel, 0);

  FUNC0(1 == FUNC7((uv_stream_t*) &channel));
  FUNC0(1 == FUNC8((uv_stream_t*) &channel));
  FUNC0(0 == FUNC6((uv_handle_t*) &channel));

  if (FUNC12() > 0)
    FUNC3();

  r = FUNC11(FUNC5(), UV_RUN_DEFAULT);
  FUNC0(r == 0);

  FUNC0(closed_handle_write == 1);

  FUNC1();
  return 0;
}