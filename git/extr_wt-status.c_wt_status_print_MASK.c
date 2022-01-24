#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  nr; } ;
struct TYPE_6__ {int /*<<< orphan*/  nr; } ;
struct TYPE_5__ {int /*<<< orphan*/  nr; } ;
struct wt_status {int status_format; int /*<<< orphan*/  repo; TYPE_1__ ignored; TYPE_3__ untracked; TYPE_2__ change; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
#define  STATUS_FORMAT_LONG 133 
#define  STATUS_FORMAT_NONE 132 
#define  STATUS_FORMAT_PORCELAIN 131 
#define  STATUS_FORMAT_PORCELAIN_V2 130 
#define  STATUS_FORMAT_SHORT 129 
#define  STATUS_FORMAT_UNSPECIFIED 128 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC5 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC6 (struct wt_status*) ; 
 int /*<<< orphan*/  FUNC7 (struct wt_status*) ; 

void FUNC8(struct wt_status *s)
{
	FUNC1("status", s->repo, "count/changed", s->change.nr);
	FUNC1("status", s->repo, "count/untracked",
			   s->untracked.nr);
	FUNC1("status", s->repo, "count/ignored", s->ignored.nr);

	FUNC2("status", "print", s->repo);

	switch (s->status_format) {
	case STATUS_FORMAT_SHORT:
		FUNC7(s);
		break;
	case STATUS_FORMAT_PORCELAIN:
		FUNC5(s);
		break;
	case STATUS_FORMAT_PORCELAIN_V2:
		FUNC6(s);
		break;
	case STATUS_FORMAT_UNSPECIFIED:
		FUNC0("finalize_deferred_config() should have been called");
		break;
	case STATUS_FORMAT_NONE:
	case STATUS_FORMAT_LONG:
		FUNC4(s);
		break;
	}

	FUNC3("status", "print", s->repo);
}