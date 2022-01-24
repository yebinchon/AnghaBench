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
typedef  enum http_parser_type { ____Placeholder_http_parser_type } http_parser_type ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  messages ; 
 scalar_t__ num_messages ; 
 int /*<<< orphan*/  parser ; 

void
FUNC2 (enum http_parser_type type)
{
  num_messages = 0;
  FUNC0(&parser, type);
  FUNC1(&messages, 0, sizeof messages);
}