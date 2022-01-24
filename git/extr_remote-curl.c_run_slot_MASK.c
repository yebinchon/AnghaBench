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
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct slot_results {int http_code; int curl_result; } ;
struct active_request_slot {int dummy; } ;

/* Variables and functions */
 int CURLE_OK ; 
 int HTTP_OK ; 
 int HTTP_REAUTH ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__* curl_errorstr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (struct active_request_slot*,struct slot_results*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static int FUNC7(struct active_request_slot *slot,
		    struct slot_results *results)
{
	int err;
	struct slot_results results_buf;

	if (!results)
		results = &results_buf;

	err = FUNC2(slot, results);

	if (err != HTTP_OK && err != HTTP_REAUTH) {
		struct strbuf msg = STRBUF_INIT;
		if (results->http_code && results->http_code != 200)
			FUNC4(&msg, "HTTP %ld", results->http_code);
		if (results->curl_result != CURLE_OK) {
			if (msg.len)
				FUNC3(&msg, ' ');
			FUNC4(&msg, "curl %d", results->curl_result);
			if (curl_errorstr[0]) {
				FUNC3(&msg, ' ');
				FUNC5(&msg, curl_errorstr);
			}
		}
		FUNC1(FUNC0("RPC failed; %s"), msg.buf);
		FUNC6(&msg);
	}

	return err;
}