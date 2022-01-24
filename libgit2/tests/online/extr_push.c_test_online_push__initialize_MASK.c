#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {scalar_t__ length; scalar_t__ contents; } ;
typedef  TYPE_1__ git_vector ;
struct TYPE_14__ {char** member_0; scalar_t__ member_1; } ;
typedef  TYPE_2__ git_strarray ;
typedef  int /*<<< orphan*/  git_remote_head ;
typedef  int /*<<< orphan*/  git_remote_callbacks ;
struct TYPE_15__ {int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_3__ git_push_options ;
struct TYPE_16__ {int /*<<< orphan*/  callbacks; } ;
typedef  TYPE_4__ git_fetch_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 TYPE_4__ GIT_FETCH_OPTIONS_INIT ; 
 TYPE_3__ GIT_PUSH_OPTIONS_INIT ; 
 TYPE_1__ GIT_VECTOR_INIT ; 
 int /*<<< orphan*/  _oid_b1 ; 
 int /*<<< orphan*/  _oid_b2 ; 
 int /*<<< orphan*/  _oid_b3 ; 
 int /*<<< orphan*/  _oid_b4 ; 
 int /*<<< orphan*/  _oid_b5 ; 
 int /*<<< orphan*/  _oid_b6 ; 
 int /*<<< orphan*/  _record_cbs ; 
 int /*<<< orphan*/  _record_cbs_data ; 
 int /*<<< orphan*/ * _remote ; 
 void* _remote_default ; 
 void* _remote_pass ; 
 void* _remote_ssh_key ; 
 void* _remote_ssh_passphrase ; 
 void* _remote_ssh_pubkey ; 
 void* _remote_url ; 
 void* _remote_user ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  _tag_blob ; 
 int /*<<< orphan*/  _tag_commit ; 
 int /*<<< orphan*/  _tag_lightweight ; 
 int /*<<< orphan*/  _tag_tag ; 
 int /*<<< orphan*/  _tag_tree ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 void* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/  const**,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,void*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/  const***,size_t*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_2__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

void FUNC20(void)
{
	git_vector delete_specs = GIT_VECTOR_INIT;
	const git_remote_head **heads;
	size_t heads_len;
	git_push_options push_opts = GIT_PUSH_OPTIONS_INIT;
	git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;

	_repo = FUNC3("push_src");

	FUNC2(FUNC14(_repo, "Random J. Hacker", "foo@example.com"));
	FUNC0("testrepo.git");
	FUNC4("push_src/submodule/.gitted", "push_src/submodule/.git");

	FUNC19(FUNC15(_repo));

	/* git log --format=oneline --decorate --graph
	 * *-.   951bbbb90e2259a4c8950db78946784fb53fcbce (HEAD, b6) merge b3, b4, and b5 to b6
	 * |\ \
	 * | | * fa38b91f199934685819bea316186d8b008c52a2 (b5) added submodule named 'submodule' pointing to '../testrepo.git'
	 * | * | 27b7ce66243eb1403862d05f958c002312df173d (b4) edited fold\b.txt
	 * | |/
	 * * | d9b63a88223d8367516f50bd131a5f7349b7f3e4 (b3) edited a.txt
	 * |/
	 * * a78705c3b2725f931d3ee05348d83cc26700f247 (b2, b1) added fold and fold/b.txt
	 * * 5c0bb3d1b9449d1cc69d7519fd05166f01840915 added a.txt
	 */
	FUNC7(&_oid_b6, "951bbbb90e2259a4c8950db78946784fb53fcbce");
	FUNC7(&_oid_b5, "fa38b91f199934685819bea316186d8b008c52a2");
	FUNC7(&_oid_b4, "27b7ce66243eb1403862d05f958c002312df173d");
	FUNC7(&_oid_b3, "d9b63a88223d8367516f50bd131a5f7349b7f3e4");
	FUNC7(&_oid_b2, "a78705c3b2725f931d3ee05348d83cc26700f247");
	FUNC7(&_oid_b1, "a78705c3b2725f931d3ee05348d83cc26700f247");

	FUNC7(&_tag_commit, "805c54522e614f29f70d2413a0470247d8b424ac");
	FUNC7(&_tag_tree, "ff83aa4c5e5d28e3bcba2f5c6e2adc61286a4e5e");
	FUNC7(&_tag_blob, "b483ae7ba66decee9aee971f501221dea84b1498");
	FUNC7(&_tag_lightweight, "951bbbb90e2259a4c8950db78946784fb53fcbce");
	FUNC7(&_tag_tag, "eea4f2705eeec2db3813f2430829afce99cd00b5");

	/* Remote URL environment variable must be set.  User and password are optional.  */

	_remote_url = FUNC1("GITTEST_REMOTE_URL");
	_remote_user = FUNC1("GITTEST_REMOTE_USER");
	_remote_pass = FUNC1("GITTEST_REMOTE_PASS");
	_remote_ssh_key = FUNC1("GITTEST_REMOTE_SSH_KEY");
	_remote_ssh_pubkey = FUNC1("GITTEST_REMOTE_SSH_PUBKEY");
	_remote_ssh_passphrase = FUNC1("GITTEST_REMOTE_SSH_PASSPHRASE");
	_remote_default = FUNC1("GITTEST_REMOTE_DEFAULT");
	_remote = NULL;

	/* Skip the test if we're missing the remote URL */
	if (!_remote_url)
		FUNC5();

	FUNC2(FUNC9(&_remote, _repo, "test", _remote_url));

	FUNC18(&_record_cbs_data);

	FUNC2(FUNC8(_remote, GIT_DIRECTION_PUSH, &_record_cbs, NULL, NULL));

	/* Clean up previously pushed branches.  Fails if receive.denyDeletes is
	 * set on the remote.  Also, on Git 1.7.0 and newer, you must run
	 * 'git config receive.denyDeleteCurrent ignore' in the remote repo in
	 * order to delete the remote branch pointed to by HEAD (usually master).
	 * See: https://raw.github.com/git/git/master/Documentation/RelNotes/1.7.0.txt
	 */
	FUNC2(FUNC12(&heads, &heads_len, _remote));
	FUNC2(FUNC6(&delete_specs, heads, heads_len));
	if (delete_specs.length) {
		git_strarray arr = {
			(char **) delete_specs.contents,
			delete_specs.length,
		};

		FUNC17(&push_opts.callbacks, &_record_cbs, sizeof(git_remote_callbacks));
		FUNC2(FUNC13(_remote, &arr, &push_opts));
	}

	FUNC10(_remote);
	FUNC16(&delete_specs);

	/* Now that we've deleted everything, fetch from the remote */
	FUNC17(&fetch_opts.callbacks, &_record_cbs, sizeof(git_remote_callbacks));
	FUNC2(FUNC11(_remote, NULL, &fetch_opts, NULL));
}