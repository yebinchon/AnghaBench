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
struct TYPE_3__ {int /*<<< orphan*/ * push_buf; int /*<<< orphan*/  do_transform; int /*<<< orphan*/  name; } ;
struct st_gzip_context_t {TYPE_1__ super; int /*<<< orphan*/  zs; } ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
typedef  TYPE_1__ h2o_compress_context_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  WINDOW_BITS ; 
 int /*<<< orphan*/  do_decompress ; 
 struct st_gzip_context_t* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

h2o_compress_context_t *FUNC4(h2o_mem_pool_t *pool)
{
    struct st_gzip_context_t *self = FUNC1(pool);
    self->super.name = FUNC2(FUNC0("gunzip"));
    self->super.do_transform = do_decompress;
    self->super.push_buf = NULL;
    FUNC3(&self->zs, WINDOW_BITS);

    return &self->super;
}