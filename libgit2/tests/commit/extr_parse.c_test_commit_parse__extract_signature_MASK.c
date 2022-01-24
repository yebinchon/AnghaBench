#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_1__ git_buf ;
struct TYPE_9__ {int /*<<< orphan*/  klass; } ;

/* Variables and functions */
 TYPE_1__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  GIT_ERROR_INVALID ; 
 int /*<<< orphan*/  GIT_ERROR_OBJECT ; 
 int /*<<< orphan*/  GIT_OBJECT_COMMIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 TYPE_2__* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 char const** passing_commit_cases ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 

void FUNC12(void)
{
	git_odb *odb;
	git_oid commit_id;
	git_buf signature = GIT_BUF_INIT, signed_data = GIT_BUF_INIT;
	const char *gpgsig = "-----BEGIN PGP SIGNATURE-----\n\
Version: GnuPG v1.4.12 (Darwin)\n\
\n\
iQIcBAABAgAGBQJQ+FMIAAoJEH+LfPdZDSs1e3EQAJMjhqjWF+WkGLHju7pTw2al\n\
o6IoMAhv0Z/LHlWhzBd9e7JeCnanRt12bAU7yvYp9+Z+z+dbwqLwDoFp8LVuigl8\n\
JGLcnwiUW3rSvhjdCp9irdb4+bhKUnKUzSdsR2CK4/hC0N2i/HOvMYX+BRsvqweq\n\
AsAkA6dAWh+gAfedrBUkCTGhlNYoetjdakWqlGL1TiKAefEZrtA1TpPkGn92vbLq\n\
SphFRUY9hVn1ZBWrT3hEpvAIcZag3rTOiRVT1X1flj8B2vGCEr3RrcwOIZikpdaW\n\
who/X3xh/DGbI2RbuxmmJpxxP/8dsVchRJJzBwG+yhwU/iN3MlV2c5D69tls/Dok\n\
6VbyU4lm/ae0y3yR83D9dUlkycOnmmlBAHKIZ9qUts9X7mWJf0+yy2QxJVpjaTGG\n\
cmnQKKPeNIhGJk2ENnnnzjEve7L7YJQF6itbx5VCOcsGh3Ocb3YR7DMdWjt7f8pu\n\
c6j+q1rP7EpE2afUN/geSlp5i3x8aXZPDj67jImbVCE/Q1X9voCtyzGJH7MXR0N9\n\
ZpRF8yzveRfMH8bwAJjSOGAFF5XkcR/RNY95o+J+QcgBLdX48h+ZdNmUf6jqlu3J\n\
7KmTXXQcOVpN6dD3CmRFsbjq+x6RHwa8u1iGn+oIkX908r97ckfB/kHKH7ZdXIJc\n\
cpxtDQQMGYFpXK/71stq\n\
=ozeK\n\
-----END PGP SIGNATURE-----";

	const char *data =  "tree 6b79e22d69bf46e289df0345a14ca059dfc9bdf6\n\
parent 34734e478d6cf50c27c9d69026d93974d052c454\n\
author Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
committer Ben Burkert <ben@benburkert.com> 1358451456 -0800\n\
\n\
a simple commit which works\n";

	const char *oneline_signature = "tree 51832e6397b30309c8bcad9c55fa6ae67778f378\n\
parent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\n\
author Some User <someuser@gmail.com> 1454537944 -0700\n\
committer Some User <someuser@gmail.com> 1454537944 -0700\n\
gpgsig bad\n\
\n\
corrupt signature\n";

	const char *oneline_data = "tree 51832e6397b30309c8bcad9c55fa6ae67778f378\n\
parent a1b6decaaac768b5e01e1b5dbf5b2cc081bed1eb\n\
author Some User <someuser@gmail.com> 1454537944 -0700\n\
committer Some User <someuser@gmail.com> 1454537944 -0700\n\
\n\
corrupt signature\n";


	FUNC3(FUNC10(&odb, g_repo));
	FUNC3(FUNC8(&commit_id, odb, passing_commit_cases[4], FUNC11(passing_commit_cases[4]), GIT_OBJECT_COMMIT));

	FUNC3(FUNC6(&signature, &signed_data, g_repo, &commit_id, NULL));
	FUNC1(gpgsig, signature.ptr);
	FUNC1(data, signed_data.ptr);

	FUNC4(&signature);
	FUNC4(&signed_data);

	FUNC3(FUNC6(&signature, &signed_data, g_repo, &commit_id, "gpgsig"));
	FUNC1(gpgsig, signature.ptr);
	FUNC1(data, signed_data.ptr);

	/* Try to parse a tree */
	FUNC3(FUNC9(&commit_id, "45dd856fdd4d89b884c340ba0e047752d9b085d6"));
	FUNC2(GIT_ENOTFOUND, FUNC6(&signature, &signed_data, g_repo, &commit_id, NULL));
	FUNC0(GIT_ERROR_INVALID, FUNC7()->klass);

	/* Try to parse an unsigned commit */
	FUNC3(FUNC8(&commit_id, odb, passing_commit_cases[1], FUNC11(passing_commit_cases[1]), GIT_OBJECT_COMMIT));
	FUNC2(GIT_ENOTFOUND, FUNC6(&signature, &signed_data, g_repo, &commit_id, NULL));
	FUNC0(GIT_ERROR_OBJECT, FUNC7()->klass);

	/* Parse the commit with a single-line signature */
	FUNC4(&signature);
	FUNC4(&signed_data);
	FUNC3(FUNC8(&commit_id, odb, oneline_signature, FUNC11(oneline_signature), GIT_OBJECT_COMMIT));
	FUNC3(FUNC6(&signature, &signed_data, g_repo, &commit_id, NULL));
	FUNC1("bad", signature.ptr);
	FUNC1(oneline_data, signed_data.ptr);


	FUNC5(&signature);
	FUNC5(&signed_data);

}