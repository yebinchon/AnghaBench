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
typedef  int /*<<< orphan*/  date ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct evkeyvalq*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC1 (struct evkeyvalq*,char*) ; 
 int FUNC2 (char*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC3(struct evkeyvalq *headers)
{
	if (FUNC1(headers, "Date") == NULL) {
		char date[50];
		if (sizeof(date) - FUNC2(date, sizeof(date), NULL) > 0) {
			FUNC0(headers, "Date", date);
		}
	}
}