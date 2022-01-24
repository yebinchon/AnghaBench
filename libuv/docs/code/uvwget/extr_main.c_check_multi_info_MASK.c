#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int msg; int /*<<< orphan*/  easy_handle; } ;
typedef  TYPE_1__ CURLMsg ;

/* Variables and functions */
 int /*<<< orphan*/  CURLINFO_EFFECTIVE_URL ; 
#define  CURLMSG_DONE 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  curl_handle ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

void FUNC7(void) {
    char *done_url;
    CURLMsg *message;
    int pending;

    while ((message = FUNC3(curl_handle, &pending))) {
        switch (message->msg) {
        case CURLMSG_DONE:
            FUNC2(message->easy_handle, CURLINFO_EFFECTIVE_URL,
                            &done_url);
            FUNC6("%s DONE\n", done_url);

            FUNC4(curl_handle, message->easy_handle);
            FUNC1(message->easy_handle);
            break;

        default:
            FUNC5(stderr, "CURLMSG default\n");
            FUNC0();
        }
    }
}