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
struct opts {char* member_0; int action; scalar_t__ verbose; int /*<<< orphan*/ * rev; int /*<<< orphan*/  member_3; int /*<<< orphan*/  member_2; int /*<<< orphan*/ * member_1; } ;
typedef  int /*<<< orphan*/  oidstr ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_tag ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_odb_object ;
typedef  int /*<<< orphan*/  git_odb ;
typedef  int /*<<< orphan*/  git_object ;
typedef  int /*<<< orphan*/  git_commit ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
#define  GIT_OBJECT_BLOB 135 
#define  GIT_OBJECT_COMMIT 134 
#define  GIT_OBJECT_TAG 133 
#define  GIT_OBJECT_TREE 132 
 int /*<<< orphan*/  GIT_OID_HEXSZ ; 
#define  SHOW_NONE 131 
#define  SHOW_PRETTY 130 
#define  SHOW_SIZE 129 
#define  SHOW_TYPE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct opts*,int,char**) ; 
 int /*<<< orphan*/  FUNC13 (char*,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/  const*) ; 

int FUNC18(git_repository *repo, int argc, char *argv[])
{
	struct opts o = { ".", NULL, 0, 0 };
	git_object *obj = NULL;
	char oidstr[GIT_OID_HEXSZ + 1];

	FUNC12(&o, argc, argv);

	FUNC0(FUNC11(&obj, repo, o.rev),
			"Could not resolve", o.rev);

	if (o.verbose) {
		char oidstr[GIT_OID_HEXSZ + 1];
		FUNC9(oidstr, sizeof(oidstr), FUNC2(obj));

		FUNC13("%s %s\n--\n",
			FUNC4(FUNC3(obj)), oidstr);
	}

	switch (o.action) {
	case SHOW_TYPE:
		FUNC13("%s\n", FUNC4(FUNC3(obj)));
		break;
	case SHOW_SIZE: {
		git_odb *odb;
		git_odb_object *odbobj;

		FUNC0(FUNC10(&odb, repo), "Could not open ODB", NULL);
		FUNC0(FUNC8(&odbobj, odb, FUNC2(obj)),
			"Could not find obj", NULL);

		FUNC13("%ld\n", (long)FUNC7(odbobj));

		FUNC6(odbobj);
		FUNC5(odb);
		}
		break;
	case SHOW_NONE:
		/* just want return result */
		break;
	case SHOW_PRETTY:

		switch (FUNC3(obj)) {
		case GIT_OBJECT_BLOB:
			FUNC14((const git_blob *)obj);
			break;
		case GIT_OBJECT_COMMIT:
			FUNC15((const git_commit *)obj);
			break;
		case GIT_OBJECT_TREE:
			FUNC17((const git_tree *)obj);
			break;
		case GIT_OBJECT_TAG:
			FUNC16((const git_tag *)obj);
			break;
		default:
			FUNC13("unknown %s\n", oidstr);
			break;
		}
		break;
	}

	FUNC1(obj);

	return 0;
}