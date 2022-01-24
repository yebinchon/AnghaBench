#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct message {char* raw; char* name; scalar_t__ upgrade; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {char const* upgrade; int /*<<< orphan*/  headers_complete_cb_called; } ;
struct TYPE_3__ {size_t nread; scalar_t__ upgrade; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct message const*) ; 
 TYPE_2__* messages ; 
 int num_messages ; 
 size_t FUNC3 (char const*,size_t) ; 
 TYPE_1__ parser ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 size_t FUNC7 (char*) ; 

void
FUNC8 (const struct message *message)
{
  size_t raw_len = FUNC7(message->raw);
  size_t msg1len;
  for (msg1len = 0; msg1len < raw_len; msg1len++) {
    FUNC4(message->type);

    size_t read;
    const char *msg1 = message->raw;
    const char *msg2 = msg1 + msg1len;
    size_t msg2len = raw_len - msg1len;

    if (msg1len) {
      FUNC1(num_messages == 0);
      messages[0].headers_complete_cb_called = FALSE;

      read = FUNC3(msg1, msg1len);

      if (!messages[0].headers_complete_cb_called && parser.nread != read) {
        FUNC1(parser.nread == read);
        FUNC5(msg1, read);
        FUNC0();
      }

      if (message->upgrade && parser.upgrade && num_messages > 0) {
        messages[num_messages - 1].upgrade = msg1 + read;
        goto test;
      }

      if (read != msg1len) {
        FUNC5(msg1, read);
        FUNC0();
      }
    }


    read = FUNC3(msg2, msg2len);

    if (message->upgrade && parser.upgrade) {
      messages[num_messages - 1].upgrade = msg2 + read;
      goto test;
    }

    if (read != msg2len) {
      FUNC5(msg2, read);
      FUNC0();
    }

    read = FUNC3(NULL, 0);

    if (read != 0) {
      FUNC5(message->raw, read);
      FUNC0();
    }

  test:

    if (num_messages != 1) {
      FUNC6("\n*** num_messages != 1 after testing '%s' ***\n\n", message->name);
      FUNC0();
    }

    if(!FUNC2(0, 0, message)) FUNC0();
  }
}