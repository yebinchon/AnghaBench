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
struct TYPE_6__ {int ngood; int nbad; } ;
struct TYPE_5__ {TYPE_2__ b; } ;
typedef  TYPE_1__ user ;

/* Variables and functions */
#define  HAM 129 
#define  SPAM 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,scalar_t__,int,int) ; 
 scalar_t__ binlog_readed ; 
 TYPE_1__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 TYPE_2__ global_bayes ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int*) ; 
 int /*<<< orphan*/  stderr ; 
 char* FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  teach_messages ; 
 int verbosity ; 
 scalar_t__* words ; 

int FUNC6 (char *text, int text_len, int type) {
  if (verbosity > 1 && binlog_readed) {
    FUNC2 (stderr, "bayes_set %d : %s\n", type, text);
  }

  int i;

  int out = 0;
  char *out_s = FUNC5 (text, "out ");
  if (out_s != NULL) {
    FUNC4 (out_s + 5, "%d", &out);
  }

  int uid = 0;
  char *uid_s = FUNC5 (text, "uid ");
  if (uid_s != NULL) {
    FUNC4 (uid_s + 5, "%d", &uid);
  }

  user *u = FUNC1 (uid);

  if (!out || u != NULL) {
    teach_messages++;
    FUNC3 (text);
  } else {
    return 0;
  }

  int add_ham = 0, add_spam = 0;
  switch (type) {
    case HAM:
      add_ham = 1;
      break;
    case SPAM:
      add_spam = 1;
      break;
    case HAM + 2:
      add_ham = -1;
      break;
    case SPAM + 2:
      add_spam = -1;
      break;
    case HAM + 4:
      add_ham = 1;
      add_spam = -1;
      break;
    case SPAM + 4:
      add_ham = -1;
      add_spam = 1;
      break;
  }

//  if (u != NULL) {
//    fprintf (stderr, "bayes_set %d %d %d : %s\n", type, add_ham, add_spam, text);
//  }

  if (!out) {
    for (i = 0; words[i]; i++) {
      FUNC0 (&global_bayes, words[i], add_ham, add_spam);
    }

    global_bayes.ngood += add_ham;
    global_bayes.nbad += add_spam;
  }

  if (u != NULL) {
    for (i = 0; words[i]; i++) {
      FUNC0 (&u->b, words[i], add_ham, add_spam);
    }

    u->b.ngood += add_ham;
    u->b.nbad += add_spam;
  }
  return 1;
}