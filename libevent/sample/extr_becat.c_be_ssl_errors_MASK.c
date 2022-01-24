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
struct bufferevent {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (int) ; 
 char* FUNC1 (int) ; 
 char* FUNC2 (int) ; 
 int FUNC3 (struct bufferevent*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,char const*,char const*) ; 

__attribute__((used)) static void FUNC5(struct bufferevent *bev)
{
	int err;
	while ((err = FUNC3(bev))) {
		const char *msg = FUNC2(err);
		const char *lib = FUNC1(err);
		const char *func = FUNC0(err);
		FUNC4("ssl/err=%d/%s in %s %s\n", err, msg, lib, func);
	}
}