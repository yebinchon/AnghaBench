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
 int /*<<< orphan*/  CURLOPT_CUSTOMREQUEST ; 
 int /*<<< orphan*/  CURLOPT_HTTPGET ; 
 int /*<<< orphan*/  CURLOPT_URL ; 
 int /*<<< orphan*/  CURLOPT_WRITEFUNCTION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 char const* fwrite_null ; 

__attribute__((used)) static void FUNC1(CURL *curl, const char *url,
		const char *custom_req)
{
	FUNC0(curl, CURLOPT_HTTPGET, 1);
	FUNC0(curl, CURLOPT_URL, url);
	FUNC0(curl, CURLOPT_CUSTOMREQUEST, custom_req);
	FUNC0(curl, CURLOPT_WRITEFUNCTION, fwrite_null);
}