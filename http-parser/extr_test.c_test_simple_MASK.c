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
typedef  enum http_errno { ____Placeholder_http_errno } http_errno ;

/* Variables and functions */
 int /*<<< orphan*/  HTTP_REQUEST ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,int /*<<< orphan*/ ) ; 

void
FUNC1 (const char *buf, enum http_errno err_expected)
{
  FUNC0(buf, err_expected, HTTP_REQUEST);
}