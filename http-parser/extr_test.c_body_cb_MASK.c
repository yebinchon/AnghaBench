#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  http_parser ;
struct TYPE_2__ {size_t body_size; int /*<<< orphan*/  body; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 TYPE_1__* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  parser ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char const*,size_t) ; 

int
FUNC3 (http_parser *p, const char *buf, size_t len)
{
  FUNC0(p == &parser);
  FUNC2(messages[num_messages].body,
           sizeof(messages[num_messages].body),
           buf,
           len);
  messages[num_messages].body_size += len;
  FUNC1(p);
 // printf("body_cb: '%s'\n", requests[num_messages].body);
  return 0;
}