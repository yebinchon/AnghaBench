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
typedef  int /*<<< orphan*/  CURL ;

/* Variables and functions */
 int /*<<< orphan*/  CURLOPT_DEBUGDATA ; 
 int /*<<< orphan*/  CURLOPT_DEBUGFUNCTION ; 
 int /*<<< orphan*/  CURLOPT_VERBOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/ * curl_trace ; 
 int /*<<< orphan*/  trace_curl ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(CURL *handle)
{
	if (!FUNC1(&trace_curl))
		return;
	FUNC0(handle, CURLOPT_VERBOSE, 1L);
	FUNC0(handle, CURLOPT_DEBUGFUNCTION, curl_trace);
	FUNC0(handle, CURLOPT_DEBUGDATA, NULL);
}