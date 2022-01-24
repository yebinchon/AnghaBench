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
struct TYPE_3__ {int size; int /*<<< orphan*/  tag; struct TYPE_3__* next; struct TYPE_3__* prev; } ;
typedef  TYPE_1__ memblock_t ;
typedef  int /*<<< orphan*/  byte ;
struct TYPE_4__ {TYPE_1__ blocklist; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 TYPE_2__* mainzone ; 

__attribute__((used)) static void FUNC1( void ) {
	memblock_t	*block;
	
	for (block = mainzone->blocklist.next ; ; block = block->next) {
		if (block->next == &mainzone->blocklist) {
			break;			// all blocks have been hit
		}
		if ( (byte *)block + block->size != (byte *)block->next)
			FUNC0( ERR_FATAL, "Z_CheckHeap: block size does not touch the next block" );
		if ( block->next->prev != block) {
			FUNC0( ERR_FATAL, "Z_CheckHeap: next block doesn't have proper back link" );
		}
		if ( !block->tag && !block->next->tag ) {
			FUNC0( ERR_FATAL, "Z_CheckHeap: two consecutive free blocks" );
		}
	}
}