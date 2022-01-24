#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  last_map_key; } ;
typedef  TYPE_1__ parser_ctx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,size_t,unsigned char const*) ; 

__attribute__((used)) static int FUNC2(void *context, const unsigned char *key, size_t len) {
    parser_ctx *ctx = context;
    FUNC0(ctx->last_map_key);
    FUNC1(&(ctx->last_map_key), "%.*s", len, key);
    return 1;
}