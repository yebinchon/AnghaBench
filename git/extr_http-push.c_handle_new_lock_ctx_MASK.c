#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct xml_ctx {scalar_t__ cdata; int /*<<< orphan*/  name; scalar_t__ userData; } ;
struct remote_lock {char* tmpfile_suffix; void* token; int /*<<< orphan*/  timeout; void* owner; } ;
typedef  int /*<<< orphan*/  git_hash_ctx ;
struct TYPE_2__ {int /*<<< orphan*/  hexsz; int /*<<< orphan*/  (* final_fn ) (unsigned char*,int /*<<< orphan*/ *) ;int /*<<< orphan*/  (* update_fn ) (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* init_fn ) (int /*<<< orphan*/ *) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  DAV_ACTIVELOCK_OWNER ; 
 int /*<<< orphan*/  DAV_ACTIVELOCK_TIMEOUT ; 
 int /*<<< orphan*/  DAV_ACTIVELOCK_TOKEN ; 
 int GIT_MAX_RAWSZ ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,char*,char const**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ *) ; 
 TYPE_1__* the_hash_algo ; 
 void* FUNC9 (scalar_t__) ; 

__attribute__((used)) static void FUNC10(struct xml_ctx *ctx, int tag_closed)
{
	struct remote_lock *lock = (struct remote_lock *)ctx->userData;
	git_hash_ctx hash_ctx;
	unsigned char lock_token_hash[GIT_MAX_RAWSZ];

	if (tag_closed && ctx->cdata) {
		if (!FUNC3(ctx->name, DAV_ACTIVELOCK_OWNER)) {
			lock->owner = FUNC9(ctx->cdata);
		} else if (!FUNC3(ctx->name, DAV_ACTIVELOCK_TIMEOUT)) {
			const char *arg;
			if (FUNC2(ctx->cdata, "Second-", &arg))
				lock->timeout = FUNC5(arg, NULL, 10);
		} else if (!FUNC3(ctx->name, DAV_ACTIVELOCK_TOKEN)) {
			lock->token = FUNC9(ctx->cdata);

			the_hash_algo->init_fn(&hash_ctx);
			the_hash_algo->update_fn(&hash_ctx, lock->token, FUNC4(lock->token));
			the_hash_algo->final_fn(lock_token_hash, &hash_ctx);

			lock->tmpfile_suffix[0] = '_';
			FUNC1(lock->tmpfile_suffix + 1, FUNC0(lock_token_hash), the_hash_algo->hexsz);
		}
	}
}