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
struct fwimage_trailer {int /*<<< orphan*/  size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct fwimage_trailer*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct fwimage_trailer*,struct fwimage_trailer*,int) ; 

__attribute__((used)) static void
FUNC3(FILE *out, struct fwimage_trailer *tr)
{
	tr->size = FUNC0(tr->size);
	FUNC1(tr, sizeof(*tr), 1, out);
	FUNC2(tr, tr, sizeof(*tr));
}