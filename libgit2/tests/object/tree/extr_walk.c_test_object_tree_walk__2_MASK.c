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
struct treewalk_skip_data {char* skip; char* stop; int /*<<< orphan*/  dirs; int /*<<< orphan*/  files; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_TREEWALK_PRE ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct treewalk_skip_data*) ; 
 int /*<<< orphan*/  FUNC6 (struct treewalk_skip_data*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  treewalk_skip_de_cb ; 

void FUNC7(void)
{
	git_oid id;
	git_tree *tree;
	struct treewalk_skip_data data;

	/* look up a deep tree */
	FUNC2(&id, "ae90f12eea699729ed24555e40b9fd669da12a12");
	FUNC1(FUNC4(&tree, g_repo, &id));

	FUNC6(&data, 0, sizeof(data));
	data.skip = "de";

	FUNC0(0, FUNC5(
		tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
	FUNC0(5, data.files);
	FUNC0(3, data.dirs);

	FUNC6(&data, 0, sizeof(data));
	data.stop = "3.txt";

	FUNC0(-1, FUNC5(
		tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
	FUNC0(3, data.files);
	FUNC0(2, data.dirs);

	FUNC6(&data, 0, sizeof(data));
	data.skip = "new.txt";

	FUNC0(0, FUNC5(
		tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
	FUNC0(7, data.files);
	FUNC0(4, data.dirs);

	FUNC6(&data, 0, sizeof(data));
	data.stop = "new.txt";

	FUNC0(-1, FUNC5(
		tree, GIT_TREEWALK_PRE, treewalk_skip_de_cb, &data));
	FUNC0(7, data.files);
	FUNC0(4, data.dirs);

	FUNC3(tree);
}