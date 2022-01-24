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
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  test_at_position ; 
 int /*<<< orphan*/  test_decode_base64 ; 
 int /*<<< orphan*/  test_get_filext ; 
 int /*<<< orphan*/  test_htmlescape ; 
 int /*<<< orphan*/  test_next_token ; 
 int /*<<< orphan*/  test_next_token2 ; 
 int /*<<< orphan*/  test_next_token3 ; 
 int /*<<< orphan*/  test_stripws ; 
 int /*<<< orphan*/  test_strstr ; 
 int /*<<< orphan*/  test_uri_escape ; 

void FUNC1(void)
{
    FUNC0("strstr", test_strstr);
    FUNC0("stripws", test_stripws);
    FUNC0("get_filext", test_get_filext);
    FUNC0("next_token", test_next_token);
    FUNC0("next_token2", test_next_token2);
    FUNC0("next_token3", test_next_token3);
    FUNC0("decode_base64", test_decode_base64);
    FUNC0("htmlescape", test_htmlescape);
    FUNC0("uri_escape", test_uri_escape);
    FUNC0("at_position", test_at_position);
}