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
struct dtoa_context {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  dtoa_ctx_key ; 
 int /*<<< orphan*/  dtoa_ctx_once ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct dtoa_context*) ; 
 struct dtoa_context* FUNC3 (int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct dtoa_context*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  tsd_dtoa_ctx_init ; 

inline struct dtoa_context *FUNC7() {
  FUNC5(&dtoa_ctx_once, tsd_dtoa_ctx_init); // cannot fail
  struct dtoa_context *ctx = (struct dtoa_context*)FUNC4(dtoa_ctx_key);
  if (!ctx) {
    ctx = FUNC3(sizeof(struct dtoa_context));
    FUNC2(ctx);
    if (FUNC6(dtoa_ctx_key, ctx) != 0) {
      FUNC1(stderr, "error: cannot set thread specific data");
      FUNC0();
    }
  }
  return ctx;
}