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
typedef  int /*<<< orphan*/  header ;
typedef  int /*<<< orphan*/  git_off_t ;
typedef  int /*<<< orphan*/  git_object_t ;
typedef  int /*<<< orphan*/  git_hash_ctx ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char*,size_t) ; 
 int FUNC1 (size_t*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(git_hash_ctx *ctx, git_off_t size, git_object_t type)
{
	char header[64];
	size_t hdrlen;
	int error;

	 if ((error = FUNC1(&hdrlen,
		header, sizeof(header), size, type)) < 0)
		return error;

	return FUNC0(ctx, header, hdrlen);
}