#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * opaque; int /*<<< orphan*/  zfree; int /*<<< orphan*/  zalloc; } ;
struct TYPE_4__ {int /*<<< orphan*/ * push_buf; int /*<<< orphan*/ * do_transform; int /*<<< orphan*/  name; } ;
struct st_gzip_context_t {int zs_is_open; int /*<<< orphan*/  bufs; TYPE_1__ zs; TYPE_2__ super; } ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  alloc_cb ; 
 int /*<<< orphan*/  do_free ; 
 int /*<<< orphan*/  FUNC1 (struct st_gzip_context_t*) ; 
 int /*<<< orphan*/  free_cb ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 struct st_gzip_context_t* FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static struct st_gzip_context_t *FUNC5(h2o_mem_pool_t *pool)
{
    struct st_gzip_context_t *self = FUNC3(pool, sizeof(*self), do_free);

    self->super.name = FUNC2(FUNC0("gzip"));
    self->super.do_transform = NULL;
    self->super.push_buf = NULL;
    self->zs.zalloc = alloc_cb;
    self->zs.zfree = free_cb;
    self->zs.opaque = NULL;
    self->zs_is_open = 1;
    FUNC4(&self->bufs, 0, sizeof(self->bufs));
    FUNC1(self);

    return self;
}