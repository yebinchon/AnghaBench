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
struct TYPE_2__ {scalar_t__ size; scalar_t__ entries; } ;
struct st_gzip_context_t {TYPE_1__ bufs; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUF_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__*,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct st_gzip_context_t *self)
{
    FUNC2(NULL, &self->bufs, self->bufs.size + 1);
    FUNC1(self->bufs.entries + self->bufs.size++, FUNC0(BUF_SIZE), 0);
}