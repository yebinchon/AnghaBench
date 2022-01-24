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
typedef  int /*<<< orphan*/  CURLcode ;
typedef  int /*<<< orphan*/  CURLINFO ;
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*) ; 

__attribute__((used)) static CURLcode FUNC3(CURL *curl, CURLINFO info, struct strbuf *buf)
{
	char *ptr;
	CURLcode ret;

	FUNC2(buf);
	ret = FUNC0(curl, info, &ptr);
	if (!ret && ptr)
		FUNC1(buf, ptr);
	return ret;
}