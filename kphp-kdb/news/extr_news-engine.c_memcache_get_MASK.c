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
struct connection {int dummy; } ;

/* Variables and functions */
 scalar_t__ COMM_MODE ; 
 scalar_t__ NOTIFY_MODE ; 
 scalar_t__ RECOMMEND_MODE ; 
 scalar_t__ UG_MODE ; 
 scalar_t__ FUNC0 (int) ; 
 int FUNC1 (int,int,int,int,int) ; 
 int FUNC2 (struct connection*,char const*,int,int) ; 
 int FUNC3 (struct connection*,char const*,int,int) ; 
 int FUNC4 (struct connection*,char const*,int,int) ; 
 int FUNC5 (struct connection*,char const*,int,int) ; 
 int FUNC6 (struct connection*,char const*,int,int) ; 
 int FUNC7 (struct connection*,char const*,int,int) ; 
 int FUNC8 (struct connection*,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC10 (struct connection*) ; 
 int FUNC11 (char const*,int) ; 
 int FUNC12 (int) ; 
 int FUNC13 (int,int,double*) ; 
 int FUNC14 (struct connection*) ; 
 int FUNC15 (struct connection*) ; 
 int FUNC16 (struct connection*,char const*,char*,int) ; 
 int FUNC17 (char*,char*,double) ; 
 int FUNC18 (char const*,char*,int*,...) ; 
 char* stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*,int) ; 
 int verbosity ; 

int FUNC20 (struct connection *c, const char *key, int key_len) {
  int dog_len = FUNC11 (key, key_len);
  key += dog_len;
  key_len -= dog_len;
  int user_id, res = 0;

  if (key_len >= 11 && UG_MODE && (!FUNC19 (key, "raw_updates", 11) || !FUNC19 (key, "%raw_updates", 12))) {
    res = FUNC6 (c, key, key_len, dog_len);
    FUNC10 (c);
    return res;
  }

  if (key_len >= 16 && COMM_MODE && (!FUNC19 (key, "raw_comm_updates", 16) || !FUNC19 (key, "%raw_comm_updates", 17))) {
    res = FUNC3 (c, key, key_len, dog_len);
    FUNC10 (c);
    return res;
  }

  if (key_len >= 21 && RECOMMEND_MODE && (!FUNC19 (key, "raw_recommend_updates", 21) || !FUNC19 (key, "%raw_recommend_updates", 22))) {
    res = FUNC5 (c, key, key_len, dog_len);
    FUNC10 (c);
    return res;
  }
  FUNC10 (c);

  if (key_len >= 21 && COMM_MODE && (!FUNC19 (key, "raw_user_comm_updates", 21) || !FUNC19 (key, "%raw_user_comm_updates", 22))) {
    res = FUNC8 (c, key, key_len, dog_len);
    if (res < 0) {
      res = FUNC15 (c);
      return 0;
    }
    return res;
  }

  if (key_len >= 23 && COMM_MODE && (!FUNC19 (key, "raw_user_comm_bookmarks", 23) || !FUNC19 (key, "%raw_user_comm_bookmarks", 24))) {
    res = FUNC7 (c, key, key_len, dog_len);
    if (res < 0) {
      res = FUNC15 (c);
      return 0;
    }
    return res;
  }

  if (key_len >= 25 && NOTIFY_MODE && (!FUNC19 (key, "raw_notification_updates", 24) || !FUNC19 (key, "%raw_notification_updates", 25))) {
    res = FUNC4 (c, key, key_len, dog_len);
    return res;
  }

  if (key_len >= 21 && NOTIFY_MODE && !FUNC19 (key, "notification_updates", 20)) {
    res = FUNC2 (c, key, key_len, dog_len);
    return res;
  }


  if (UG_MODE && FUNC18 (key, "mask%d", &user_id) == 1) {
    res = FUNC12 (user_id);
    if (verbosity > 1) {
      FUNC9 (stderr, "get_privacy(%d) = %d\n", user_id, res);
    }
    if (res >= 0) {
      return FUNC16 (c, key - dog_len, stats_buff, FUNC17 (stats_buff, "%d", res));
    }
  }

  if (COMM_MODE && !FUNC19 (key, "add_bookmark", 12)) {
    int type, owner, place;
    if (FUNC18 (key, "add_bookmark_%d_%d_%d:%d", &type, &owner, &place, &user_id) == 4) {
      int res = 0;
      if (FUNC0 (owner) || FUNC0 (place)) {
        res = FUNC1 (user_id, type, owner, place, 1);
      }
      return FUNC16 (c, key - dog_len, res ? "1" : "0", 1);
    }
  }

  if (COMM_MODE && !FUNC19 (key, "del_bookmark", 12)) {
    int type, owner, place;
    if (FUNC18 (key, "del_bookmark_%d_%d_%d:%d", &type, &owner, &place, &user_id) == 4) {
      int res = 0;
      if (FUNC0 (owner) || FUNC0 (place)) {
        res = FUNC1 (user_id, type, owner, place, 0);
      }
      return FUNC16 (c, key - dog_len, res ? "1" : "0", 1);
    }
  }

  if (RECOMMEND_MODE && !FUNC19 (key, "recommend_rate", 14))  {
    int type, action;
    if (FUNC18 (key + 14, "%d,%d", &type, &action) == 2) {
      double rate;
      int res = FUNC13 (type, action, &rate);
      if (!res) {
        return FUNC16 (c, key - dog_len, stats_buff, FUNC17 (stats_buff, "%.10lf", rate));
      }
    }
  }

  if (key_len >= 5 && !FUNC19 (key, "stats", 5)) {
    int stats_len = FUNC14 (c);
    return FUNC16 (c, key - dog_len, stats_buff, stats_len);
  }
  return 0;
}