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
struct refname_atom {scalar_t__ option; int /*<<< orphan*/  rstrip; int /*<<< orphan*/  lstrip; } ;

/* Variables and functions */
 scalar_t__ R_LSTRIP ; 
 scalar_t__ R_RSTRIP ; 
 scalar_t__ R_SHORT ; 
 char const* FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  warn_ambiguous_refs ; 
 char const* FUNC3 (char const*) ; 

__attribute__((used)) static const char *FUNC4(struct refname_atom *atom, const char *refname)
{
	if (atom->option == R_SHORT)
		return FUNC2(refname, warn_ambiguous_refs);
	else if (atom->option == R_LSTRIP)
		return FUNC0(refname, atom->lstrip);
	else if (atom->option == R_RSTRIP)
		return FUNC1(refname, atom->rstrip);
	else
		return FUNC3(refname);
}