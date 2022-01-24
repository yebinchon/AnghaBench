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
struct forth_request {int res; int size; int /*<<< orphan*/ * prog; } ;
struct connection {int dummy; } ;

/* Variables and functions */
 int EXIT_FAILURE ; 
 int EXIT_SUCCESS ; 
#define  SIGABRT 132 
#define  SIGKILL 131 
#define  SIGSEGV 130 
#define  SIGTERM 129 
#define  SIGXCPU 128 
 int /*<<< orphan*/  cmd_get ; 
 int /*<<< orphan*/  FUNC0 (struct forth_request*) ; 
 int /*<<< orphan*/  get_hits ; 
 int /*<<< orphan*/  get_missed ; 
 struct forth_request* FUNC1 (long long) ; 
 int FUNC2 (struct connection*) ; 
 int FUNC3 (struct connection*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char*,int) ; 
 int /*<<< orphan*/  not_zero_exit_code ; 
 int /*<<< orphan*/  FUNC5 (struct connection*,char const*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sigabrt ; 
 int /*<<< orphan*/  sigkill ; 
 int /*<<< orphan*/  sigother ; 
 int /*<<< orphan*/  sigsegv ; 
 int /*<<< orphan*/  sigterm ; 
 int /*<<< orphan*/  sigxcpu ; 
 int FUNC6 (char const*,char*,...) ; 
 int FUNC7 (struct connection*,char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * stats_buffer ; 
 int /*<<< orphan*/  FUNC8 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,char*,...) ; 

int FUNC10 (struct connection *c, const char *key, int key_len) {
  FUNC9 (3, "memcache_get_process: key='%s'\n", key);
  cmd_get++;
  long long prog_id;
  int res = -1;

  /* the most frequent request */
  if (key_len >= 8 && !FUNC4 (key, "request", 7) && FUNC6 (key + 7, "%lld", &prog_id) == 1) {
    struct forth_request *R = FUNC1 (prog_id);
    if (R != NULL) {
      res = R->res;
    }
    return FUNC3 (c, key, res);
  }

  if (key_len >= 7 && !FUNC4 (key, "output", 6) && FUNC6 (key + 6, "%lld", &prog_id) == 1) {
    struct forth_request *R = FUNC1 (prog_id);
    if (R != NULL) {
      res = R->res;
    }
    if ((res == EXIT_SUCCESS || res == EXIT_FAILURE) && R->prog != NULL) {
      get_hits++;
      FUNC5 (c, key, R->prog, R->size);
      if (R->size >= 1024) {
        FUNC0 (R);
      }
      return 0;
    }
  }

  int signo;
  if (key_len >= 18 && !FUNC4 (key, "last_failure_prog", 17) && FUNC6 (key + 17, "%d", &signo) == 1) {
    FUNC9 (4, "get(\"error\", signo: %d)\n", signo);
    switch (signo) {
      case 0: return FUNC7 (c, key, &not_zero_exit_code);
      case SIGABRT: return FUNC7 (c, key, &sigabrt);//6
      case SIGKILL: return FUNC7 (c, key, &sigkill);//9
      case SIGSEGV: return FUNC7 (c, key, &sigsegv);//11
      case SIGTERM: return FUNC7 (c, key, &sigterm);//15
      case SIGXCPU: return FUNC7 (c, key, &sigxcpu);//24
      default: return FUNC7 (c, key, &sigother);
    }
  }

  if (key_len >= 5 && !FUNC8 (key, "stats", 5)) {
    int stats_len = FUNC2 (c);
    FUNC5 (c, key, stats_buffer, stats_len);
    return 0;
  }
  get_missed++;
  return 0;
}