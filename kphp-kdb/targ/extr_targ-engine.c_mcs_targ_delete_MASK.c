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
struct connection {int /*<<< orphan*/  Out; } ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int,int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int FUNC6 (int) ; 
 int FUNC7 (int) ; 
 int FUNC8 (int) ; 
 int FUNC9 (int) ; 
 int FUNC10 (int) ; 
 int FUNC11 (int,int) ; 
 int FUNC12 (int,int) ; 
 int FUNC13 (int) ; 
 int /*<<< orphan*/  FUNC14 (struct connection*) ; 
 int FUNC15 (char const*,char*,int*,...) ; 
 int /*<<< orphan*/  FUNC16 (int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,char*,int) ; 

int FUNC18 (struct connection *c, const char *str, int len) {
  int user_id = -1, group_id = 0, lang_id = -1, type = 0, res = 0;

  FUNC16 (2, "delete \"%s\"\n", str);
  FUNC14 (c);
  
  switch (*str) {
  case 'a':
    if (FUNC15 (str, "address%d ", &user_id) == 1) {
      res = FUNC0 (user_id);
    }
    break;
  case 'c':
    if (FUNC15 (str, "company%d ", &user_id) == 1) {
      res = FUNC13 (user_id);
    }
    break;
  case 'e':
    if (FUNC15 (str, "education%d ", &user_id) == 1) {
      res = FUNC1 (user_id);
    }
    break;
  case 'i':
    if (FUNC15 (str, "interests%d#%d ", &user_id, &type) >= 1) {
      res = FUNC3 (user_id, type);
    }
    break;
  case 'm':
    if (FUNC15 (str, "military%d ", &user_id) == 1) {
      res = FUNC5 (user_id);
    }
    break;
  case 'p':
    if (FUNC15 (str, "proposal%d ", &user_id) == 1) {
      res = FUNC8 (user_id);
    }
    break;
  case 's':
    if (FUNC15 (str, "school%d ", &user_id) == 1) {
      res = FUNC9 (user_id);
    }
    break;
  case 'u':
    if (FUNC15 (str, "user_group%d_%d ", &user_id, &group_id) == 2) {
      res = FUNC11 (user_id, group_id);
    } else if (FUNC15 (str, "user_langs%d ", &user_id) == 1) {
      res = FUNC4 (user_id);
    } else if (FUNC15 (str, "user_lang%d_%d ", &user_id, &lang_id) == 2) {
      res = FUNC12 (user_id, lang_id);
    } else if (FUNC15 (str, "user_groups%d ", &user_id) == 1) {
      res = FUNC2 (user_id);
    } else if (FUNC15 (str, "user_groups_positive%d ", &user_id) == 1) {
      res = FUNC7 (user_id);
    } else if (FUNC15 (str, "user_groups_negative%d ", &user_id) == 1) {
      res = FUNC6 (user_id);
    } else if (FUNC15 (str, "user%d ", &user_id) == 1) {
      res = FUNC10 (user_id);
    }
    break;
  }

  if (!res) {
    FUNC17 (&c->Out, "NOT_FOUND\r\n", 11);
  } else {
    FUNC17 (&c->Out, "DELETED\r\n", 9);
  }
  return 0;
}