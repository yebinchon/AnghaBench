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
 int /*<<< orphan*/  test_build_destination ; 
 int /*<<< orphan*/  test_build_destination_escaping ; 
 int /*<<< orphan*/  test_extract_push_path_from_link_header ; 
 int /*<<< orphan*/  test_parse_proxy_line ; 

void FUNC1()
{
    FUNC0("parse_proxy_line", test_parse_proxy_line);
    FUNC0("extract_push_path_from_link_header", test_extract_push_path_from_link_header);
    FUNC0("test_build_destination", test_build_destination);
    FUNC0("test_build_destination_escaping", test_build_destination_escaping);
}