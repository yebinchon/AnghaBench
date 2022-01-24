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
 int currently_parsing_eof ; 
 size_t FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  parser ; 
 int /*<<< orphan*/  settings_count_body ; 

size_t FUNC1 (const char *buf, size_t len)
{
  size_t nparsed;
  currently_parsing_eof = (len == 0);
  nparsed = FUNC0(&parser, &settings_count_body, buf, len);
  return nparsed;
}