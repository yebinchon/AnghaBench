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
typedef  int /*<<< orphan*/  timestamp_t ;
struct strbuf {char* buf; int len; } ;
struct object_id {int dummy; } ;
typedef  int (* each_reflog_ent_fn ) (struct object_id*,struct object_id*,char const*,int /*<<< orphan*/ ,int,char*,void*) ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char const*,struct object_id*,char const**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char**,int) ; 
 char* FUNC3 (char const*,char) ; 
 int FUNC4 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC5(struct strbuf *sb, each_reflog_ent_fn fn, void *cb_data)
{
	struct object_id ooid, noid;
	char *email_end, *message;
	timestamp_t timestamp;
	int tz;
	const char *p = sb->buf;

	/* old SP new SP name <email> SP time TAB msg LF */
	if (!sb->len || sb->buf[sb->len - 1] != '\n' ||
	    FUNC1(p, &ooid, &p) || *p++ != ' ' ||
	    FUNC1(p, &noid, &p) || *p++ != ' ' ||
	    !(email_end = FUNC3(p, '>')) ||
	    email_end[1] != ' ' ||
	    !(timestamp = FUNC2(email_end + 2, &message, 10)) ||
	    !message || message[0] != ' ' ||
	    (message[1] != '+' && message[1] != '-') ||
	    !FUNC0(message[2]) || !FUNC0(message[3]) ||
	    !FUNC0(message[4]) || !FUNC0(message[5]))
		return 0; /* corrupt? */
	email_end[1] = '\0';
	tz = FUNC4(message + 1, NULL, 10);
	if (message[6] != '\t')
		message += 6;
	else
		message += 7;
	return fn(&ooid, &noid, p, timestamp, tz, message, cb_data);
}