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
struct strbuf {int dummy; } ;
struct passwd {int /*<<< orphan*/  pw_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strbuf*,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(const struct passwd *pw, struct strbuf *email,
		       int *is_bogus)
{
	/*
	 * Make up a fake email address
	 * (name + '@' + hostname [+ '.' + domainname])
	 */
	FUNC3(email, pw->pw_name);
	FUNC2(email, '@');

	if (!FUNC1(email))
		return;	/* read from "/etc/mailname" (Debian) */
	FUNC0(email, is_bogus);
}