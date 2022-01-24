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
struct TYPE_2__ {scalar_t__ should_keep_alive; int /*<<< orphan*/  message_complete_on_eof; int /*<<< orphan*/  message_complete_cb_called; int /*<<< orphan*/  body_is_final; scalar_t__ body_size; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  currently_parsing_eof ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* messages ; 
 size_t num_messages ; 
 int /*<<< orphan*/  parser ; 
 int /*<<< orphan*/  stderr ; 

int
FUNC5 (http_parser *p)
{
  FUNC1(p == &parser);
  if (messages[num_messages].should_keep_alive !=
      FUNC4(&parser))
  {
    FUNC2(stderr, "\n\n *** Error http_should_keep_alive() should have same "
                    "value in both on_message_complete and on_headers_complete "
                    "but it doesn't! ***\n\n");
    FUNC1(0);
    FUNC0();
  }

  if (messages[num_messages].body_size &&
      FUNC3(p) &&
      !messages[num_messages].body_is_final)
  {
    FUNC2(stderr, "\n\n *** Error http_body_is_final() should return 1 "
                    "on last on_body callback call "
                    "but it doesn't! ***\n\n");
    FUNC1(0);
    FUNC0();
  }

  messages[num_messages].message_complete_cb_called = TRUE;

  messages[num_messages].message_complete_on_eof = currently_parsing_eof;

  num_messages++;
  return 0;
}