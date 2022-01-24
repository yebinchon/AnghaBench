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
struct TYPE_3__ {int /*<<< orphan*/ ** downloadBlocks; scalar_t__* downloadName; scalar_t__ download; } ;
typedef  TYPE_1__ client_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int MAX_DOWNLOAD_WINDOW ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2( client_t *cl ) {
	int i;

	// EOF
	if (cl->download) {
		FUNC0( cl->download );
	}
	cl->download = 0;
	*cl->downloadName = 0;

	// Free the temporary buffer space
	for (i = 0; i < MAX_DOWNLOAD_WINDOW; i++) {
		if (cl->downloadBlocks[i]) {
			FUNC1(cl->downloadBlocks[i]);
			cl->downloadBlocks[i] = NULL;
		}
	}

}