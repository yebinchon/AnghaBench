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
typedef  scalar_t__ timestamp_t ;
struct date_mode {int /*<<< orphan*/  member_0; } ;
struct atom_value {scalar_t__ value; void* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATE_NORMAL ; 
 scalar_t__ ERANGE ; 
 long LONG_MAX ; 
 long LONG_MIN ; 
 scalar_t__ TIME_MAX ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC0 (char const*,struct date_mode*) ; 
 scalar_t__ FUNC1 (char const*,char**,int) ; 
 char* FUNC2 (scalar_t__,long,struct date_mode*) ; 
 char* FUNC3 (char const*,char) ; 
 char* FUNC4 (char const*,char*) ; 
 long FUNC5 (char*,int /*<<< orphan*/ *,int) ; 
 void* FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(const char *buf, struct atom_value *v, const char *atomname)
{
	const char *eoemail = FUNC4(buf, "> ");
	char *zone;
	timestamp_t timestamp;
	long tz;
	struct date_mode date_mode = { DATE_NORMAL };
	const char *formatp;

	/*
	 * We got here because atomname ends in "date" or "date<something>";
	 * it's not possible that <something> is not ":<format>" because
	 * parse_ref_filter_atom() wouldn't have allowed it, so we can assume that no
	 * ":" means no format is specified, and use the default.
	 */
	formatp = FUNC3(atomname, ':');
	if (formatp != NULL) {
		formatp++;
		FUNC0(formatp, &date_mode);
	}

	if (!eoemail)
		goto bad;
	timestamp = FUNC1(eoemail + 2, &zone, 10);
	if (timestamp == TIME_MAX)
		goto bad;
	tz = FUNC5(zone, NULL, 10);
	if ((tz == LONG_MIN || tz == LONG_MAX) && errno == ERANGE)
		goto bad;
	v->s = FUNC6(FUNC2(timestamp, tz, &date_mode));
	v->value = timestamp;
	return;
 bad:
	v->s = FUNC6("");
	v->value = 0;
}