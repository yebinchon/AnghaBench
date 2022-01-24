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
 int /*<<< orphan*/  cmd_get ; 
 int FUNC0 (struct connection*) ; 
 int FUNC1 (unsigned long long,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (char const*,int) ; 
 char* FUNC4 () ; 
 char* FUNC5 (unsigned long long,int) ; 
 char* FUNC6 (unsigned long long,int) ; 
 char* FUNC7 (unsigned long long) ; 
 char* FUNC8 (unsigned long long,int,unsigned int,unsigned int) ; 
 char* FUNC9 (unsigned long long,int,char*) ; 
 char* FUNC10 (unsigned long long,int,char*,unsigned int) ; 
 char* FUNC11 (unsigned long long,int) ; 
 char* FUNC12 (unsigned long long,int) ; 
 char* FUNC13 (unsigned long long,int) ; 
 char* FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (char const*,char*,int) ; 
 int FUNC16 (struct connection*,char const*,char*,int) ; 
 int FUNC17 (char const*,char*,unsigned long long*,...) ; 
 char* stats_buff ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char const*,char*,int) ; 

int FUNC20 (struct connection *c, const char *key, int key_len) {
  cmd_get++;
  unsigned long long volume_id = 0, random_tag = 0;
  int transaction_id = 0;
  char status[32];
  const int dog_len = FUNC3 (key, key_len);
  key += dog_len;
  key_len -= dog_len;

  if (key_len >= 5 && !FUNC19 (key, "stats", 5)) {
    int len = FUNC0 (c);
    return FUNC16 (c, key - dog_len, stats_buff, len);
  }

  if (key_len >= 6 && !FUNC15 (key, "rfreqs", 6)) {
    if (FUNC17 (key + 6, "%llu,%d", &volume_id, &transaction_id) == 2) {
      char *r = FUNC11 (volume_id, transaction_id);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 6 && !FUNC15 (key, "sfreqs", 6)) {
    if (FUNC17 (key + 6, "%llu,%d", &volume_id, &transaction_id) == 2) {
      char *r = FUNC12 (volume_id, transaction_id);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 7 && !FUNC15 (key, "srfreqs", 7)) {
    if (FUNC17 (key + 7, "%llu,%d", &volume_id, &transaction_id) == 2) {
      char *r = FUNC13 (volume_id, transaction_id);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 6 && !FUNC15 (key, "rhosts", 6)) {
    unsigned result_or, result_and;
    if (FUNC17 (key + 5, "%llu,%d,%u,%u", &volume_id, &transaction_id, &result_or, &result_and) == 4) {
      char *r = FUNC8 (volume_id, transaction_id, result_or, result_and);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 6 && !FUNC15 (key, "shosts", 6)) {
    if (FUNC17 (key + 6, "%llu,%d,%31[a-z_]", &volume_id, &transaction_id, status) == 3) {
      char *r = FUNC9 (volume_id, transaction_id, status);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 7 && !FUNC15 (key, "srhosts", 7)) {
    unsigned result;
    if (FUNC17 (key + 7, "%llu,%d,%31[a-z_]:0x%x", &volume_id, &transaction_id, status, &result)== 4) {
      char *r = FUNC10 (volume_id, transaction_id, status, result);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len == 7 && !FUNC15 (key, "volumes", 7)) {
    char *r = FUNC14 ();
    if (r) {
      FUNC16 (c, key - dog_len, r, FUNC18 (r));
      FUNC2 (r);
      return 0;
    }
  }

  if (key_len >= 9 && !FUNC15 (key, "deadhosts", 9)) {
    int delay;
    if (FUNC17 (key + 9, "%llu,%d", &volume_id, &delay) == 2) {
      char *r = FUNC5 (volume_id, delay);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len >= 14 && !FUNC15 (key, "deadhosts_full", 14)) {
    int delay;
    if (FUNC17 (key + 14, "%llu,%d", &volume_id, &delay) == 2) {
      char *r = FUNC6 (volume_id, delay);
      if (r) {
        FUNC16 (c, key - dog_len, r, FUNC18 (r));
        FUNC2 (r);
        return 0;
      }
    }
  }

  if (key_len == 10 && !FUNC15 (key, "collisions", 10)){
    char *r = FUNC4 ();
    if (r) {
      FUNC16 (c, key - dog_len, r, FUNC18 (r));
      FUNC2 (r);
      return 0;
    }
  }

  if (key_len >= 6 && !FUNC15 (key, "enable", 6) && FUNC17 (key + 6, "0x%llx", &random_tag) == 1) {
    int r = FUNC1 (random_tag, 1);
    return FUNC16 (c, key - dog_len, (r >= 0) ? "1" : "0", 1);
  }

  if (key_len >= 7 && !FUNC15 (key, "disable", 7) && FUNC17 (key + 7, "0x%llx", &random_tag) == 1) {
    int r = FUNC1 (random_tag, 0);
    return FUNC16 (c, key - dog_len, (r >= 0) ? "1" : "0", 1);
  }

  if (key_len >= 13 && !FUNC15 (key, "list_disabled", 13) && FUNC17 (key + 13, "%llu", &volume_id) == 1) {
    char *r = FUNC7 (volume_id);
    if (r != NULL) {
      FUNC16 (c, key - dog_len, r, FUNC18 (r));
      FUNC2 (r);
      return 0;
    }
  }

  return 0;
}