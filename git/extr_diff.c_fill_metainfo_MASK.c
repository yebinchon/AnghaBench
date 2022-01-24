#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct strbuf {int dummy; } ;
struct TYPE_3__ {scalar_t__ binary; scalar_t__ full_index; } ;
struct diff_options {int /*<<< orphan*/  repo; TYPE_1__ flags; } ;
struct diff_filespec {char const* mode; int /*<<< orphan*/  oid; } ;
struct diff_filepair {int status; int /*<<< orphan*/  score; } ;
typedef  int /*<<< orphan*/  mmfile_t ;
struct TYPE_4__ {unsigned int hexsz; } ;

/* Variables and functions */
 unsigned int const DEFAULT_ABBREV ; 
 int /*<<< orphan*/  DIFF_METAINFO ; 
 int /*<<< orphan*/  DIFF_RESET ; 
#define  DIFF_STATUS_COPIED 130 
#define  DIFF_STATUS_MODIFIED 129 
#define  DIFF_STATUS_RENAMED 128 
 int PATH_MAX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,struct diff_filespec*) ; 
 char* FUNC2 (int,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct diff_options*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,struct diff_filespec*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (char const*,struct strbuf*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct diff_filepair*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,int) ; 
 TYPE_2__* the_hash_algo ; 

__attribute__((used)) static void FUNC10(struct strbuf *msg,
			  const char *name,
			  const char *other,
			  struct diff_filespec *one,
			  struct diff_filespec *two,
			  struct diff_options *o,
			  struct diff_filepair *p,
			  int *must_show_header,
			  int use_color)
{
	const char *set = FUNC2(use_color, DIFF_METAINFO);
	const char *reset = FUNC2(use_color, DIFF_RESET);
	const char *line_prefix = FUNC3(o);

	*must_show_header = 1;
	FUNC9(msg, PATH_MAX * 2 + 300);
	switch (p->status) {
	case DIFF_STATUS_COPIED:
		FUNC8(msg, "%s%ssimilarity index %d%%",
			    line_prefix, set, FUNC7(p));
		FUNC8(msg, "%s\n%s%scopy from ",
			    reset,  line_prefix, set);
		FUNC6(name, msg, NULL, 0);
		FUNC8(msg, "%s\n%s%scopy to ", reset, line_prefix, set);
		FUNC6(other, msg, NULL, 0);
		FUNC8(msg, "%s\n", reset);
		break;
	case DIFF_STATUS_RENAMED:
		FUNC8(msg, "%s%ssimilarity index %d%%",
			    line_prefix, set, FUNC7(p));
		FUNC8(msg, "%s\n%s%srename from ",
			    reset, line_prefix, set);
		FUNC6(name, msg, NULL, 0);
		FUNC8(msg, "%s\n%s%srename to ",
			    reset, line_prefix, set);
		FUNC6(other, msg, NULL, 0);
		FUNC8(msg, "%s\n", reset);
		break;
	case DIFF_STATUS_MODIFIED:
		if (p->score) {
			FUNC8(msg, "%s%sdissimilarity index %d%%%s\n",
				    line_prefix,
				    set, FUNC7(p), reset);
			break;
		}
		/* fallthru */
	default:
		*must_show_header = 0;
	}
	if (one && two && !FUNC5(&one->oid, &two->oid)) {
		const unsigned hexsz = the_hash_algo->hexsz;
		int abbrev = o->flags.full_index ? hexsz : DEFAULT_ABBREV;

		if (o->flags.binary) {
			mmfile_t mf;
			if ((!FUNC4(o->repo, &mf, one) &&
			     FUNC1(o->repo, one)) ||
			    (!FUNC4(o->repo, &mf, two) &&
			     FUNC1(o->repo, two)))
				abbrev = hexsz;
		}
		FUNC8(msg, "%s%sindex %s..%s", line_prefix, set,
			    FUNC0(&one->oid, abbrev),
			    FUNC0(&two->oid, abbrev));
		if (one->mode == two->mode)
			FUNC8(msg, " %06o", one->mode);
		FUNC8(msg, "%s\n", reset);
	}
}