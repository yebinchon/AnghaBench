#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct stat {int dummy; } ;
typedef  int ssize_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_4__ {int /*<<< orphan*/  local_objects; int /*<<< orphan*/  indexed_objects; int /*<<< orphan*/  received_objects; int /*<<< orphan*/  total_objects; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ git_indexer_progress ;
typedef  int /*<<< orphan*/  git_indexer ;
typedef  int /*<<< orphan*/  buffer ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_BLOB ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  base_obj ; 
 int /*<<< orphan*/  base_obj_len ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int FUNC16 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC17 (int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC18 (char const*,struct stat*) ; 
 unsigned char* thin_pack ; 
 int thin_pack_len ; 

void FUNC19(void)
{
	git_indexer *idx = NULL;
	git_indexer_progress stats = { 0 };
	git_repository *repo;
	git_odb *odb;
	git_oid id, should_id;

	FUNC3(FUNC13(&repo, "thin.git", true));
	FUNC3(FUNC14(&odb, repo));

	/* Store the missing base into your ODB so the indexer can fix the pack */
	FUNC3(FUNC10(&id, odb, base_obj, base_obj_len, GIT_OBJECT_BLOB));
	FUNC11(&should_id, "e68fe8129b546b101aee9510c5328e7f21ca1d18");
	FUNC2(&should_id, &id);

	FUNC3(FUNC8(&idx, ".", 0, odb, NULL));
	FUNC3(FUNC4(idx, thin_pack, thin_pack_len, &stats));
	FUNC3(FUNC5(idx, &stats));

	FUNC1(stats.total_objects, 2);
	FUNC1(stats.received_objects, 2);
	FUNC1(stats.indexed_objects, 2);
	FUNC1(stats.local_objects, 1);

	FUNC11(&should_id, "fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13");
	FUNC2(&should_id, FUNC7(idx));

	FUNC6(idx);
	FUNC9(odb);
	FUNC12(repo);

	/*
	 * The pack's name/hash only tells us what objects there are,
	 * so we need to go through the packfile again in order to
	 * figure out whether we calculated the trailer correctly.
	 */
	{
		unsigned char buffer[128];
		int fd;
		ssize_t read;
		struct stat st;
		const char *name = "pack-fefdb2d740a3a6b6c03a0c7d6ce431c6d5810e13.pack";

		fd = FUNC16(name, O_RDONLY);
		FUNC0(fd != -1);

		FUNC3(FUNC18(name, &st));

		FUNC3(FUNC8(&idx, ".", 0, NULL, NULL));
		read = FUNC17(fd, buffer, sizeof(buffer));
		FUNC0(read != -1);
		FUNC15(fd);

		FUNC3(FUNC4(idx, buffer, read, &stats));
		FUNC3(FUNC5(idx, &stats));

		FUNC1(stats.total_objects, 3);
		FUNC1(stats.received_objects, 3);
		FUNC1(stats.indexed_objects, 3);
		FUNC1(stats.local_objects, 0);

		FUNC6(idx);
	}
}