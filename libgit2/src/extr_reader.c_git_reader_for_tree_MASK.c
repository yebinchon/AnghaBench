#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  read; } ;
struct TYPE_6__ {int /*<<< orphan*/ * tree; TYPE_1__ reader; } ;
typedef  TYPE_2__ tree_reader ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_reader ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 TYPE_2__* FUNC2 (int,int) ; 
 int /*<<< orphan*/  tree_reader_read ; 

int FUNC3(git_reader **out, git_tree *tree)
{
	tree_reader *reader;

	FUNC1(out && tree);

	reader = FUNC2(1, sizeof(tree_reader));
	FUNC0(reader);

	reader->reader.read = tree_reader_read;
	reader->tree = tree;

	*out = (git_reader *)reader;
	return 0;
}