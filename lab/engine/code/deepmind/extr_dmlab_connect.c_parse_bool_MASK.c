#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  (* set_error_message ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_5__ {int /*<<< orphan*/  userdata; TYPE_1__ hooks; } ;
typedef  TYPE_2__ DeepmindContext ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(const char* s, bool* out, DeepmindContext* ctx) {
  if (FUNC0(s, "true") == 0) {
    *out = true;
    return 0;
  } else if (FUNC0(s, "false") == 0) {
    *out = false;
    return 0;
  } else {
    ctx->hooks.set_error_message(ctx->userdata,
                                 FUNC2("Invalid boolean arg must be either "
                                    "\"true\" or \"false\"; actual \"%s\"\n",
                                    s));
    return -1;
  }
}