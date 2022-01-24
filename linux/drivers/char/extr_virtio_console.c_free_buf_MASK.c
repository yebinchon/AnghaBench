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
struct port_buffer {unsigned int sgpages; int /*<<< orphan*/  dev; int /*<<< orphan*/  dma; struct port_buffer* buf; int /*<<< orphan*/  size; int /*<<< orphan*/  list; int /*<<< orphan*/ * sg; } ;
struct page {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  dma_bufs_lock ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct port_buffer*,int /*<<< orphan*/ ) ; 
 scalar_t__ is_rproc_enabled ; 
 int /*<<< orphan*/  FUNC1 (struct port_buffer*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  pending_free_dma_bufs ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct page*) ; 
 struct page* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC8(struct port_buffer *buf, bool can_sleep)
{
	unsigned int i;

	for (i = 0; i < buf->sgpages; i++) {
		struct page *page = FUNC5(&buf->sg[i]);
		if (!page)
			break;
		FUNC4(page);
	}

	if (!buf->dev) {
		FUNC1(buf->buf);
	} else if (is_rproc_enabled) {
		unsigned long flags;

		/* dma_free_coherent requires interrupts to be enabled. */
		if (!can_sleep) {
			/* queue up dma-buffers to be freed later */
			FUNC6(&dma_bufs_lock, flags);
			FUNC2(&buf->list, &pending_free_dma_bufs);
			FUNC7(&dma_bufs_lock, flags);
			return;
		}
		FUNC0(buf->dev, buf->size, buf->buf, buf->dma);

		/* Release device refcnt and allow it to be freed */
		FUNC3(buf->dev);
	}

	FUNC1(buf);
}