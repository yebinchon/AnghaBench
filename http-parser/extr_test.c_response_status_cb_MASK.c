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
struct TYPE_2__ {int /*<<< orphan*/  response_status; int /*<<< orphan*/  status_cb_called; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 TYPE_1__* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  parser ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,char const*,size_t) ; 

int
FUNC2 (http_parser *p, const char *buf, size_t len)
{
  FUNC0(p == &parser);

  messages[num_messages].status_cb_called = TRUE;

  FUNC1(messages[num_messages].response_status,
           sizeof(messages[num_messages].response_status),
           buf,
           len);
  return 0;
}