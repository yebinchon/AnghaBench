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
struct passwd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct passwd* FUNC1 (char*) ; 
 char* FUNC2 (char const*,size_t) ; 

__attribute__((used)) static struct passwd *FUNC3(const char *username, size_t len)
{
	struct passwd *pw;
	char *username_z = FUNC2(username, len);
	pw = FUNC1(username_z);
	FUNC0(username_z);
	return pw;
}