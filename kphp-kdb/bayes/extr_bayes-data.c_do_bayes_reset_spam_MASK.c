#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* text; scalar_t__ len; } ;
typedef  TYPE_1__ message ;

/* Variables and functions */
 scalar_t__ SPAM ; 
 int FUNC0 (char*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC3 (message *msg, int random_tag) {
  if (FUNC2 (msg, random_tag) < 0) {
    return -1;
  }

  if (verbosity > 2) {
    FUNC1 (stderr, "bayes_set_spam\n%s\n", msg->text);
  }

  return FUNC0 (msg->text, msg->len - 1, SPAM + 4);
}