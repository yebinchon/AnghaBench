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
struct diff_options {int /*<<< orphan*/ * file; } ;
typedef  int /*<<< orphan*/  o ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct diff_options*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (struct diff_options*,int,int,int) ; 

void FUNC2(FILE *fp, int files,
			int insertions, int deletions)
{
	struct diff_options o;
	FUNC0(&o, 0, sizeof(o));
	o.file = fp;

	FUNC1(&o, files, insertions, deletions);
}