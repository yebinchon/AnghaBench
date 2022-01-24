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
struct message {char* name; int /*<<< orphan*/ * raw; int /*<<< orphan*/  type; } ;

/* Variables and functions */
 size_t FUNC0 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct message const*) ; 
 int num_messages ; 
 size_t FUNC3 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 

void
FUNC8 (const struct message *message)
{
  FUNC4(message->type);

  size_t read;
  size_t l = FUNC7(message->raw);
  size_t i, toread;
  size_t chunk = 4024;

  for (i = 0; i < l; i+= chunk) {
    toread = FUNC0(l-i, chunk);
    read = FUNC3(message->raw + i, toread);
    if (read != toread) {
      FUNC5(message->raw, read);
      FUNC1();
    }
  }


  read = FUNC3(NULL, 0);
  if (read != 0) {
    FUNC5(message->raw, read);
    FUNC1();
  }

  if (num_messages != 1) {
    FUNC6("\n*** num_messages != 1 after testing '%s' ***\n\n", message->name);
    FUNC1();
  }

  if(!FUNC2(0, 0, message)) FUNC1();
}