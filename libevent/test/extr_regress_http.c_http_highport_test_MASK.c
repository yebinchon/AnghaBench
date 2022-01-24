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
struct evhttp {int dummy; } ;
struct basic_test_data {int /*<<< orphan*/  base; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct evhttp*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct evhttp*) ; 
 struct evhttp* FUNC2 (int /*<<< orphan*/ ) ; 
 int test_ok ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct basic_test_data *data = arg;
	int i = -1;
	struct evhttp *myhttp = NULL;

	/* Try a few different ports */
	for (i = 0; i < 50; ++i) {
		myhttp = FUNC2(data->base);
		if (FUNC0(myhttp, "127.0.0.1", 65535 - i) == 0) {
			test_ok = 1;
			FUNC1(myhttp);
			return;
		}
		FUNC1(myhttp);
	}

	FUNC3("Couldn't get a high port");
}