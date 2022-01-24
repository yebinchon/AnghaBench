#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ val; } ;
struct TYPE_9__ {TYPE_1__ cancelled; } ;
typedef  TYPE_2__ transport_smart ;
struct git_odb_writepack {scalar_t__ (* append ) (struct git_odb_writepack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ;scalar_t__ (* commit ) (struct git_odb_writepack*,int /*<<< orphan*/ *) ;} ;
struct TYPE_10__ {int /*<<< orphan*/  offset; int /*<<< orphan*/  data; } ;
typedef  TYPE_3__ gitno_buffer ;
typedef  int /*<<< orphan*/  git_indexer_progress ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ERROR_NET ; 
 int GIT_EUSER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (struct git_odb_writepack*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (struct git_odb_writepack*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(transport_smart *t, struct git_odb_writepack *writepack, gitno_buffer *buf, git_indexer_progress *stats)
{
	int recvd;

	do {
		if (t->cancelled.val) {
			FUNC0(GIT_ERROR_NET, "The fetch was cancelled by the user");
			return GIT_EUSER;
		}

		if (writepack->append(writepack, buf->data, buf->offset, stats) < 0)
			return -1;

		FUNC1(buf, buf->offset);

		if ((recvd = FUNC2(buf)) < 0)
			return recvd;
	} while(recvd > 0);

	if (writepack->commit(writepack, stats) < 0)
		return -1;

	return 0;
}