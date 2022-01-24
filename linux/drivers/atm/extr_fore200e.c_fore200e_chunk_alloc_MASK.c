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
struct fore200e {int /*<<< orphan*/  dev; } ;
struct chunk {int alloc_size; int direction; int /*<<< orphan*/ * alloc_addr; int /*<<< orphan*/  dma_addr; int /*<<< orphan*/ * align_addr; } ;

/* Variables and functions */
 int ENOMEM ; 
 unsigned long FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct fore200e* fore200e, struct chunk* chunk, int size, int alignment, int direction)
{
    unsigned long offset = 0;

    if (alignment <= sizeof(int))
	alignment = 0;

    chunk->alloc_size = size + alignment;
    chunk->direction  = direction;

    chunk->alloc_addr = FUNC4(chunk->alloc_size, GFP_KERNEL);
    if (chunk->alloc_addr == NULL)
	return -ENOMEM;

    if (alignment > 0)
	offset = FUNC0(chunk->alloc_addr, alignment); 
    
    chunk->align_addr = chunk->alloc_addr + offset;

    chunk->dma_addr = FUNC1(fore200e->dev, chunk->align_addr,
				     size, direction);
    if (FUNC2(fore200e->dev, chunk->dma_addr)) {
	FUNC3(chunk->alloc_addr);
	return -ENOMEM;
    }
    return 0;
}