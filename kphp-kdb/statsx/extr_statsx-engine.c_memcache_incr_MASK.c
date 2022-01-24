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
typedef  int /*<<< orphan*/  region ;
typedef  int /*<<< orphan*/  country ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int FUNC1 (long long,int,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (long long,int,int /*<<< orphan*/ ,int,int,char,char,char,char,char,int,int,int,char) ; 
 scalar_t__ custom_version_names ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC6 (char const*,int) ; 
 long long incr_counter_id ; 
 int incr_version ; 
 scalar_t__ incr_version_read ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ,int) ; 
 int FUNC9 (struct connection*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int*,char*,char*,char*) ; 
 int /*<<< orphan*/  stats_buff ; 
 int /*<<< orphan*/  stderr ; 
 long long FUNC12 (char*,char**,int) ; 
 long long FUNC13 (char const*,char**,int) ; 
 int verbosity ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC15 (struct connection *c, int op, const char *key, int len, long long arg) {
  if (verbosity >= 4) {
    FUNC5 (stderr, "memcache_incr (op = %d, key = \"", op);
    FUNC4 (key, len);
    FUNC5 (stderr, "\")\n");
  }

  const int dog_len = FUNC6 (key, len);
  key += dog_len;
  len -= dog_len;

  if (len >= 7 && !FUNC7 (key, "counter", 7)) {
    long long cnt_id, tmp;
    int  subcnt_id=-1,  uid, city = 0, res;
    char sex = 0, age = 0, status = 0, polit = 0, section = 0, region[4], country[4], source = 0, *p;
    char optional_params_is_given = 1;
    int version = -1;
    FUNC8 (region, 0, sizeof (region));
    FUNC8 (country, 0, sizeof (country));
    errno = 0; tmp = FUNC13 (key + 7, &p, 10);
    if (errno) {
      FUNC3 ("incr", "fail to parse counter_id", key, len);
      return FUNC9 (c);
    }
    cnt_id = tmp;
    if (*p == '@') {
      errno = 0; tmp = FUNC12(p + 1, &p, 10);
      if (errno || tmp < 0) {
        FUNC3 ("incr", "fail to parse version",  key, len);
        return FUNC9 (c);
      }
      if (verbosity >= 3) {
        FUNC5 (stderr, "version = %d\n", version);
      }
      version = (int) tmp;
    }
    if (*p == ':') {
      errno = 0; tmp = FUNC12(p+1, &p, 10);
      if (errno) {
        FUNC3 ("incr", "fail to parse subcnt_id",  key, len);
        return FUNC9 (c);
      }
      subcnt_id = (int) tmp;
    }
    if (*p != '#') {
      FUNC3 ("incr", "missed uid (expected '#')", key, len);
      return FUNC9 (c);
    }
    errno = 0; tmp = FUNC12 (p+1, &p, 10);
    if (errno) {
      FUNC3 ("incr", "fail to parse uid", key, len);
      return FUNC9 (c);
    }
    uid = (int) tmp;
    if (*p && *p != '#') {
      FUNC3 ("incr", "expected '#' after uid", key, len);
      return FUNC9 (c);
    }
    if (verbosity >= 4) {
      FUNC5 (stderr, "incr (cnt_id = %lld, subcnt_id = %d, uid = %d)\n", cnt_id, subcnt_id, uid);
    }
    if (!(*p)) optional_params_is_given = 0;
    if (*p) p++;
    if (*p) sex = *p++;
    if (*p) age = *p++;
    if (*p) status = *p++;
    if (*p) polit = *p++;
    if (*p) section = *p++;
    if (*p == ';') {
      FUNC11 (p+1,"%d;%3[^;];%3[^;];%c", &city, region, country, &source);
    }
    if (sex > '0' && sex <= '2') { sex -= '0'; } else { sex = 0; }
    if (age > '0' && age <= '8') { age -= '0'; } else { age = 0; }
    if (status > '0' && status <= '8') { status -= '0'; } else { status = 0; }
    if (polit > '0' && polit <= '8') { polit -= '0'; } else { polit = 0; }
    if (section >= 'A' && section <= 'P') { section -= 'A' - 1; } else { section = 0; }
    if (source >= 'A' && source <= 'P') { source -= 'A' - 1; } else { source = 0; }
    if (verbosity >= 4) {
      FUNC5 (stderr, "optional_params_is_given = %d\n", optional_params_is_given);
      FUNC5 (stderr, "sex = %d, age = %d, status = %d, polit = %d, section = %d, city = %d, region = %d, country = %d, source = %d\n",
             sex, age, status, polit, section, city, FUNC0(region), FUNC0(country),(int) source);
    }
    //int counter_incr_ext (int counter_id, int user_id, int replaying, int op, int subcnt, int sex, int age, int m_status, int polit_views, int section, int city, int country, int geoip_country, int source);
    incr_version = version;
    incr_counter_id = cnt_id;
    incr_version_read = 0;
    if ((version >= 0 && !custom_version_names) || (version < 0 && custom_version_names)) {
      FUNC3 ("incr", "fail due to version",  key, len);
      return FUNC9 (c);
    }
    res = (optional_params_is_given && subcnt_id == -1) ?
           FUNC2 (cnt_id, uid, 0, op, subcnt_id, sex, age, status, polit, section, city, FUNC0(region), FUNC0(country), source) :
           FUNC1 (cnt_id, uid, 0, op, subcnt_id);
    //int counter_incr (int counter_id, int user_id, int replaying, int op, int subcnt);
    if (res < 0) return FUNC9 (c);
    FUNC14 (&c->Out, stats_buff, FUNC10 (stats_buff, "%d\r\n", res));
    return 0;
  }
  return FUNC9 (c);
}