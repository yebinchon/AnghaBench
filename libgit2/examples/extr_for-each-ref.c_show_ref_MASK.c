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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 int GIT_OID_HEXSZ ; 
 scalar_t__ GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*,char*,char*) ; 

__attribute__((used)) static int FUNC11(git_reference *ref, void *data)
{
        git_repository *repo = data;
        git_reference *resolved = NULL;
        char hex[GIT_OID_HEXSZ+1];
        const git_oid *oid;
        git_object *obj;

        if (FUNC9(ref) == GIT_REFERENCE_SYMBOLIC)
                FUNC0(FUNC7(&resolved, ref),
                          "Unable to resolve symbolic reference",
                          FUNC6(ref));

        oid = FUNC8(resolved ? resolved : ref);
        FUNC4(hex, oid);
        hex[GIT_OID_HEXSZ] = 0;
        FUNC0(FUNC1(&obj, repo, oid, GIT_OBJECT_ANY),
                  "Unable to lookup object", hex);

        FUNC10("%s %-6s\t%s\n",
               hex,
               FUNC3(FUNC2(obj)),
               FUNC6(ref));

        if (resolved)
                FUNC5(resolved);
        return 0;
}