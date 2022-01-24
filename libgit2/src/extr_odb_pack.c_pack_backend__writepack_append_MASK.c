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
struct pack_writepack {int /*<<< orphan*/  indexer; } ;
struct git_odb_writepack {int dummy; } ;
typedef  int /*<<< orphan*/  git_indexer_progress ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct pack_writepack*) ; 
 int FUNC1 (int /*<<< orphan*/ ,void const*,size_t,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(struct git_odb_writepack *_writepack, const void *data, size_t size, git_indexer_progress *stats)
{
	struct pack_writepack *writepack = (struct pack_writepack *)_writepack;

	FUNC0(writepack);

	return FUNC1(writepack->indexer, data, size, stats);
}