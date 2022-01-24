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
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  label; int /*<<< orphan*/  line; int /*<<< orphan*/  file; struct TYPE_3__* next; } ;
typedef  TYPE_1__ hunkblock_t ;
typedef  int /*<<< orphan*/  buf ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* hunkblocks ; 
 int /*<<< orphan*/  logfile ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

void FUNC4( void) {
	hunkblock_t	*block;
	char		buf[4096];
	int size, numBlocks;

	if (!logfile || !FUNC1())
		return;
	size = 0;
	numBlocks = 0;
	FUNC0(buf, sizeof(buf), "\r\n================\r\nHunk log\r\n================\r\n");
	FUNC2(buf, FUNC3(buf), logfile);
	for (block = hunkblocks ; block; block = block->next) {
#ifdef HUNK_DEBUG
		Com_sprintf(buf, sizeof(buf), "size = %8d: %s, line: %d (%s)\r\n", block->size, block->file, block->line, block->label);
		FS_Write(buf, strlen(buf), logfile);
#endif
		size += block->size;
		numBlocks++;
	}
	FUNC0(buf, sizeof(buf), "%d Hunk memory\r\n", size);
	FUNC2(buf, FUNC3(buf), logfile);
	FUNC0(buf, sizeof(buf), "%d hunk blocks\r\n", numBlocks);
	FUNC2(buf, FUNC3(buf), logfile);
}