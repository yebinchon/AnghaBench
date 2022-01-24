#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_7__ ;
typedef  struct TYPE_20__   TYPE_6__ ;
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {scalar_t__ status; } ;
typedef  TYPE_4__ git_diff_delta ;
struct TYPE_16__ {int /*<<< orphan*/  inflatedlen; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
struct TYPE_15__ {int /*<<< orphan*/  inflatedlen; int /*<<< orphan*/  datalen; int /*<<< orphan*/  data; int /*<<< orphan*/  type; } ;
struct TYPE_19__ {TYPE_2__ old_file; TYPE_1__ new_file; int /*<<< orphan*/  contains_data; } ;
typedef  TYPE_5__ git_diff_binary ;
struct TYPE_17__ {int /*<<< orphan*/  num_lines; } ;
struct TYPE_20__ {int flags; TYPE_3__ line; TYPE_7__* buf; } ;
typedef  TYPE_6__ diff_print_info ;
struct TYPE_21__ {size_t size; } ;

/* Variables and functions */
 scalar_t__ GIT_DELTA_UNMODIFIED ; 
 int GIT_DIFF_SHOW_BINARY ; 
 int GIT_EBUFS ; 
 int FUNC0 (TYPE_6__*,TYPE_4__*,char const*,char const*) ; 
 int FUNC1 (TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_7__*,size_t) ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static int FUNC5(
	diff_print_info *pi, git_diff_delta *delta,
	const char *old_pfx, const char *new_pfx,
	const git_diff_binary *binary)
{
	size_t pre_binary_size;
	int error;

	if (delta->status == GIT_DELTA_UNMODIFIED)
		return 0;

	if ((pi->flags & GIT_DIFF_SHOW_BINARY) == 0 || !binary->contains_data)
		return FUNC0(
			pi, delta, old_pfx, new_pfx);

	pre_binary_size = pi->buf->size;
	FUNC2(pi->buf, "GIT binary patch\n");
	pi->line.num_lines++;

	if ((error = FUNC1(pi, binary->new_file.type, binary->new_file.data,
		binary->new_file.datalen, binary->new_file.inflatedlen)) < 0 ||
		(error = FUNC1(pi, binary->old_file.type, binary->old_file.data,
			binary->old_file.datalen, binary->old_file.inflatedlen)) < 0) {

		if (error == GIT_EBUFS) {
			FUNC4();
			FUNC3(pi->buf, pre_binary_size);

			return FUNC0(
				pi, delta, old_pfx, new_pfx);
		}
	}

	pi->line.num_lines++;
	return error;
}