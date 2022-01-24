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

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_chunked ; 
 int /*<<< orphan*/  test_chunked_consume_trailer ; 
 int /*<<< orphan*/  test_headers ; 
 int /*<<< orphan*/  test_request ; 
 int /*<<< orphan*/  test_response ; 

int FUNC2(int argc, char **argv)
{
    FUNC1("request", test_request);
    FUNC1("response", test_response);
    FUNC1("headers", test_headers);
    FUNC1("chunked", test_chunked);
    FUNC1("chunked-consume-trailer", test_chunked_consume_trailer);
    return FUNC0();
}