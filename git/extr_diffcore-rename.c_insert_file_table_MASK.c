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
struct repository {int dummy; } ;
struct hashmap {int dummy; } ;
struct file_similarity {int index; int /*<<< orphan*/  entry; struct diff_filespec* filespec; } ;
struct diff_filespec {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct repository*,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC1 (struct hashmap*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 struct file_similarity* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4(struct repository *r,
			      struct hashmap *table, int index,
			      struct diff_filespec *filespec)
{
	struct file_similarity *entry = FUNC3(sizeof(*entry));

	entry->index = index;
	entry->filespec = filespec;

	FUNC2(&entry->entry, FUNC0(r, filespec));
	FUNC1(table, &entry->entry);
}