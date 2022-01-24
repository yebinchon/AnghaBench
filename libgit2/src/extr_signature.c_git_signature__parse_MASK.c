#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int offset; char sign; int /*<<< orphan*/  time; } ;
struct TYPE_6__ {TYPE_1__ when; int /*<<< orphan*/ * email; int /*<<< orphan*/ * name; } ;
typedef  TYPE_2__ git_signature ;

/* Variables and functions */
 void* FUNC0 (char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char,int) ; 
 scalar_t__ FUNC3 (int*,char const*,int,char const**,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,char const*,int,char const**,int) ; 
 char* FUNC5 (char const*,char,int) ; 
 scalar_t__ FUNC6 (char const*,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char*) ; 
 size_t FUNC9 (char const*) ; 

int FUNC10(git_signature *sig, const char **buffer_out,
		const char *buffer_end, const char *header, char ender)
{
	const char *buffer = *buffer_out;
	const char *email_start, *email_end;

	FUNC7(sig, 0, sizeof(git_signature));

	if (ender &&
		(buffer_end = FUNC5(buffer, ender, buffer_end - buffer)) == NULL)
		return FUNC8("no newline given");

	if (header) {
		const size_t header_len = FUNC9(header);

		if (buffer + header_len >= buffer_end || FUNC6(buffer, header, header_len) != 0)
			return FUNC8("expected prefix doesn't match actual");

		buffer += header_len;
	}

	email_start = FUNC2(buffer, '<', buffer_end - buffer);
	email_end = FUNC2(buffer, '>', buffer_end - buffer);

	if (!email_start || !email_end || email_end <= email_start)
		return FUNC8("malformed e-mail");

	email_start += 1;
	sig->name = FUNC0(buffer, email_start - buffer - 1);
	sig->email = FUNC0(email_start, email_end - email_start);

	/* Do we even have a time at the end of the signature? */
	if (email_end + 2 < buffer_end) {
		const char *time_start = email_end + 2;
		const char *time_end;

		if (FUNC4(&sig->when.time, time_start,
				   buffer_end - time_start, &time_end, 10) < 0) {
			FUNC1(sig->name);
			FUNC1(sig->email);
			sig->name = sig->email = NULL;
			return FUNC8("invalid Unix timestamp");
		}

		/* do we have a timezone? */
		if (time_end + 1 < buffer_end) {
			int offset, hours, mins;
			const char *tz_start, *tz_end;

			tz_start = time_end + 1;

			if ((tz_start[0] != '-' && tz_start[0] != '+') ||
			    FUNC3(&offset, tz_start + 1,
					   buffer_end - tz_start - 1, &tz_end, 10) < 0) {
				/* malformed timezone, just assume it's zero */
				offset = 0;
			}

			hours = offset / 100;
			mins = offset % 100;

			/*
			 * only store timezone if it's not overflowing;
			 * see http://www.worldtimezone.com/faq.html
			 */
			if (hours <= 14 && mins <= 59) {
				sig->when.offset = (hours * 60) + mins;
				sig->when.sign = tz_start[0];
				if (tz_start[0] == '-')
					sig->when.offset = -sig->when.offset;
			}
		}
	}

	*buffer_out = buffer_end + 1;
	return 0;
}