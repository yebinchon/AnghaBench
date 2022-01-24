#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {char* text; } ;
typedef  TYPE_1__ message ;

/* Variables and functions */
 double BAYES_SPAM_LIMIT ; 
 double FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 scalar_t__ FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

int FUNC4 (message *msg, int random_tag) {
  if (FUNC3 (msg, random_tag) < 0) {
    return -1;
  }

  if (verbosity > 2) {
    FUNC2 (stderr, "bayes_is_spam\n%s\n", msg->text);
  }
  FUNC1 ("CHECK: <%s>\n", msg->text);

  double result = FUNC0 (msg, random_tag);

  FUNC1 ("RES: %.9lf\n", result);
  FUNC1 ("%s\n", result > BAYES_SPAM_LIMIT ? "spam" : "ham");

  if (result < -1.99999) {
    return -2;
  }

  return result > BAYES_SPAM_LIMIT;
}