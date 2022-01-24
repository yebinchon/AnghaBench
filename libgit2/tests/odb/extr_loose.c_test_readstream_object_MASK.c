#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ object_data ;
struct TYPE_8__ {size_t len; char* data; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ git_rawobj ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_odb_stream ;
typedef  int /*<<< orphan*/  git_odb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

__attribute__((used)) static void FUNC10(object_data *data, size_t blocksize)
{
	git_oid id;
	git_odb *odb;
	git_odb_stream *stream;
	git_rawobj tmp;
	char buf[2048], *ptr = buf;
	size_t remain;
	int ret;

	FUNC9(data);

	FUNC1(FUNC4(&odb, "test-objects"));
	FUNC1(FUNC8(&id, data->id));
	FUNC1(FUNC5(&stream, &tmp.len, &tmp.type, odb, &id));

	remain = tmp.len;

	while (remain) {
		FUNC0((ret = FUNC7(stream, ptr, blocksize)) >= 0);
		if (ret == 0)
			break;

		FUNC0(remain >= (size_t)ret);
		remain -= ret;
		ptr += ret;
	}

	FUNC0(remain == 0);

	tmp.data = buf;

	FUNC2(&tmp, data);

	FUNC6(stream);
	FUNC3(odb);
}