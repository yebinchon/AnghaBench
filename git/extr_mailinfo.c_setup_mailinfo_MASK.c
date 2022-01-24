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
struct mailinfo {int header_stage; int use_inbody_headers; int /*<<< orphan*/  content; int /*<<< orphan*/  content_top; int /*<<< orphan*/  inbody_header_accum; int /*<<< orphan*/  log_message; int /*<<< orphan*/  charset; int /*<<< orphan*/  email; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct mailinfo*) ; 
 int /*<<< orphan*/  git_mailinfo_config ; 
 int /*<<< orphan*/  FUNC1 (struct mailinfo*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(struct mailinfo *mi)
{
	FUNC1(mi, 0, sizeof(*mi));
	FUNC2(&mi->name, 0);
	FUNC2(&mi->email, 0);
	FUNC2(&mi->charset, 0);
	FUNC2(&mi->log_message, 0);
	FUNC2(&mi->inbody_header_accum, 0);
	mi->header_stage = 1;
	mi->use_inbody_headers = 1;
	mi->content_top = mi->content;
	FUNC0(git_mailinfo_config, mi);
}