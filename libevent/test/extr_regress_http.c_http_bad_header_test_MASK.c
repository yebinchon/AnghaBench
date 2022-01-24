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
struct evkeyvalq {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evkeyvalq*) ; 
 int FUNC1 (struct evkeyvalq*,char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct evkeyvalq*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static void
FUNC4(void *ptr)
{
	struct evkeyvalq headers;

	FUNC0(&headers);

	FUNC3(FUNC1(&headers, "One", "Two") == 0);
	FUNC3(FUNC1(&headers, "One", "Two\r\n Three") == 0);
	FUNC3(FUNC1(&headers, "One\r", "Two") == -1);
	FUNC3(FUNC1(&headers, "One\n", "Two") == -1);
	FUNC3(FUNC1(&headers, "One", "Two\r") == -1);
	FUNC3(FUNC1(&headers, "One", "Two\n") == -1);

	FUNC2(&headers);
}