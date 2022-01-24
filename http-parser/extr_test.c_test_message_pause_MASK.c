#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct message {char* name; scalar_t__ upgrade; int /*<<< orphan*/  type; scalar_t__ raw; } ;
struct TYPE_6__ {char* upgrade; scalar_t__ message_complete_cb_called; } ;
struct TYPE_5__ {scalar_t__ upgrade; } ;

/* Variables and functions */
 scalar_t__ HPE_PAUSED ; 
 scalar_t__ HPE_STRICT ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct message const*) ; 
 TYPE_2__* messages ; 
 int num_messages ; 
 size_t FUNC5 (char*,size_t) ; 
 TYPE_1__ parser ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (scalar_t__) ; 

void
FUNC9 (const struct message *msg)
{
  char *buf = (char*) msg->raw;
  size_t buflen = FUNC8(msg->raw);
  size_t nread;

  FUNC6(msg->type);

  do {
    nread = FUNC5(buf, buflen);

    // We can only set the upgrade buffer once we've gotten our message
    // completion callback.
    if (messages[0].message_complete_cb_called &&
        msg->upgrade &&
        parser.upgrade) {
      messages[0].upgrade = buf + nread;
      goto test;
    }

    if (nread < buflen) {

      // Not much do to if we failed a strict-mode check
      if (FUNC0(&parser) == HPE_STRICT) {
        return;
      }

      FUNC2 (FUNC0(&parser) == HPE_PAUSED);
    }

    buf += nread;
    buflen -= nread;
    FUNC3(&parser, 0);
  } while (buflen > 0);

  nread = FUNC5(NULL, 0);
  FUNC2 (nread == 0);

test:
  if (num_messages != 1) {
    FUNC7("\n*** num_messages != 1 after testing '%s' ***\n\n", msg->name);
    FUNC1();
  }

  if(!FUNC4(0, 0, msg)) FUNC1();
}