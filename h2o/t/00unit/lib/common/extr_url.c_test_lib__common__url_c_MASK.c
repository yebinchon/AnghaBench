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
 int /*<<< orphan*/  test_hostport ; 
 int /*<<< orphan*/  test_normalize_path ; 
 int /*<<< orphan*/  test_parse ; 
 int /*<<< orphan*/  test_parse_relative ; 
 int /*<<< orphan*/  test_resolve ; 

void FUNC1(void)
{
    FUNC0("normalize_path", test_normalize_path);
    FUNC0("hostport", test_hostport);
    FUNC0("parse", test_parse);
    FUNC0("parse_relative", test_parse_relative);
    FUNC0("resolve", test_resolve);
}