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
struct message {char* raw; int /*<<< orphan*/  type; } ;
struct TYPE_2__ {scalar_t__ upgrade; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int FUNC1 (int,struct message const*,struct message const*,struct message const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,struct message const*) ; 
 int num_messages ; 
 size_t FUNC4 (char*,size_t) ; 
 TYPE_1__ parser ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,size_t) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 size_t FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,size_t,int,struct message const*,struct message const*,struct message const*) ; 

void
FUNC10 (const struct message *r1, const struct message *r2, const struct message *r3)
{
  int message_count = FUNC1(3, r1, r2, r3);

  char total[ FUNC8(r1->raw)
            + FUNC8(r2->raw)
            + FUNC8(r3->raw)
            + 1
            ];
  total[0] = '\0';

  FUNC7(total, r1->raw);
  FUNC7(total, r2->raw);
  FUNC7(total, r3->raw);

  FUNC5(r1->type);

  size_t read;

  read = FUNC4(total, FUNC8(total));

  if (parser.upgrade) {
    FUNC9(total, read, 3, r1, r2, r3);
    goto test;
  }

  if (read != FUNC8(total)) {
    FUNC6(total, read);
    FUNC0();
  }

  read = FUNC4(NULL, 0);

  if (read != 0) {
    FUNC6(total, read);
    FUNC0();
  }

test:

  if (message_count != num_messages) {
    FUNC2(stderr, "\n\n*** Parser didn't see 3 messages only %d *** \n", num_messages);
    FUNC0();
  }

  if (!FUNC3(0, 0, r1)) FUNC0();
  if (message_count > 1 && !FUNC3(1, 0, r2)) FUNC0();
  if (message_count > 2 && !FUNC3(2, 0, r3)) FUNC0();
}