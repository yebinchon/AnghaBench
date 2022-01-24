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
struct TYPE_4__ {unsigned char* id; } ;
typedef  TYPE_1__ git_oid ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int GIT_OID_RAWSZ ; 
 int FUNC0 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(git_oid *result, git_hash_ctx *ctx)
{
	git_oid hash;
	unsigned short carry = 0;
	int error, i;

	if ((error = FUNC0(&hash, ctx)) < 0 ||
	    (error = FUNC1(ctx)) < 0)
		return error;

	for (i = 0; i < GIT_OID_RAWSZ; i++) {
		carry += result->id[i] + hash.id[i];
		result->id[i] = (unsigned char)carry;
		carry >>= 8;
	}

	return 0;
}