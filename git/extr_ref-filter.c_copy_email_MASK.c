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

/* Variables and functions */
 char* FUNC0 (char const*,char) ; 
 char const* FUNC1 (char const*,int) ; 
 char const* FUNC2 (char*) ; 

__attribute__((used)) static const char *FUNC3(const char *buf)
{
	const char *email = FUNC0(buf, '<');
	const char *eoemail;
	if (!email)
		return FUNC2("");
	eoemail = FUNC0(email, '>');
	if (!eoemail)
		return FUNC2("");
	return FUNC1(email, eoemail + 1 - email);
}