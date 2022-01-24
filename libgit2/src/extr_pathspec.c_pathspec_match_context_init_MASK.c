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
struct pathspec_match_context {int wildmatch_flags; int /*<<< orphan*/  strncomp; int /*<<< orphan*/  strcomp; } ;

/* Variables and functions */
 int WM_CASEFOLD ; 
 int /*<<< orphan*/  git__strcasecmp ; 
 int /*<<< orphan*/  git__strcmp ; 
 int /*<<< orphan*/  git__strncasecmp ; 
 int /*<<< orphan*/  git__strncmp ; 

__attribute__((used)) static void FUNC0(
	struct pathspec_match_context *ctxt,
	bool disable_fnmatch,
	bool casefold)
{
	if (disable_fnmatch)
		ctxt->wildmatch_flags = -1;
	else if (casefold)
		ctxt->wildmatch_flags = WM_CASEFOLD;
	else
		ctxt->wildmatch_flags = 0;

	if (casefold) {
		ctxt->strcomp  = git__strcasecmp;
		ctxt->strncomp = git__strncasecmp;
	} else {
		ctxt->strcomp  = git__strcmp;
		ctxt->strncomp = git__strncmp;
	}
}