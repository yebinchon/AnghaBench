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
typedef  int /*<<< orphan*/  http_parser ;

/* Variables and functions */
 scalar_t__ HPE_INVALID_CONTENT_LENGTH ; 
 scalar_t__ HPE_OK ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  HTTP_RESPONSE ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  settings_null ; 

__attribute__((used)) static void
FUNC4 (const char *buf, size_t buflen, int expect_ok)
{
  http_parser parser;
  FUNC3(&parser, HTTP_RESPONSE);
  FUNC2(&parser, &settings_null, buf, buflen);

  if (expect_ok)
    FUNC1(FUNC0(&parser) == HPE_OK);
  else
    FUNC1(FUNC0(&parser) == HPE_INVALID_CONTENT_LENGTH);
}