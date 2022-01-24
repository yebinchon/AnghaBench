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
struct curl_slist {int /*<<< orphan*/  data; struct curl_slist* next; } ;

/* Variables and functions */
 struct curl_slist* FUNC0 (struct curl_slist*,int /*<<< orphan*/ ) ; 
 struct curl_slist* extra_http_headers ; 

struct curl_slist *FUNC1(void)
{
	struct curl_slist *headers = NULL, *h;

	for (h = extra_http_headers; h; h = h->next)
		headers = FUNC0(headers, h->data);

	return headers;
}