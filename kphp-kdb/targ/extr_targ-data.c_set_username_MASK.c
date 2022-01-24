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
struct TYPE_4__ {int /*<<< orphan*/  name_hashes; int /*<<< orphan*/  uid; int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ user_t ;
struct lev_username {int user_id; char* s; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,char*,int) ; 
 TYPE_1__* FUNC6 (int) ; 
 int /*<<< orphan*/  q_name ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9 (struct lev_username *E, int len) {
  int i, j = 0;
  int user_id = E->user_id;
  char *text = E->s;

  FUNC1 (!text[len]);
  /*  if (user_id == 20205559 && verbosity > 0) {
    fprintf (stderr, "name of %d: '%s' (len=%d; now=%d, logpos=%lld)\n", user_id, text, len, now, log_cur_pos());
    }*/
  for (i = 0; i < len; i++) {
    if (text[i] == 9) { j++; }
    else if ((unsigned char) text[i] < ' ') { 
      FUNC5 (stderr, "name of %d: '%s' (len=%d)\n", user_id, text, len);
//      assert ((unsigned char) text[i] >= ' ');
      break;
    }
  }
  FUNC1 (j >= 0);
  user_t *U = FUNC6 (user_id);
  if (U) {
    FUNC4 (U->name);
    U->name = FUNC3 (text, len);
    FUNC2 (U->uid, U->name_hashes);
    U->name_hashes = FUNC8 (U->name, 0, ~2, 1, q_name);
    FUNC0 (U->uid, U->name_hashes);

    FUNC7 (U);
    return 1;
  }
  return 0;
}