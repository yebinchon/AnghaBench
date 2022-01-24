#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct repl_server_status {int dummy; } ;
struct remote_binlog {char* binlog_tag; int flags; struct location_list_entry* first; } ;
struct location_list_entry {int location_len; char* location; int flags; struct location_list_entry* next; } ;
struct TYPE_2__ {int flags; struct location_list_entry* master; struct location_list_entry* local; struct remote_binlog* binlog; struct repl_server_status* server_last; struct repl_server_status* server_first; } ;

/* Variables and functions */
 int HASH_PRIME ; 
 TYPE_1__* LR ; 
 int MAX_CONFIG_SIZE ; 
 int MAX_LOCAL_RBS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int* cfg_cur ; 
 scalar_t__* cfg_end ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int FUNC2 (int) ; 
 scalar_t__ cfg_lex ; 
 int cfg_lno ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 void* cfg_start ; 
 scalar_t__ check_all_locations ; 
 scalar_t__ FUNC5 (struct remote_binlog*) ; 
 void* config_buff ; 
 int config_bytes ; 
 char* config_filename ; 
 int /*<<< orphan*/ * fd ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,...) ; 
 struct location_list_entry* FUNC7 (struct remote_binlog*) ; 
 struct remote_binlog* FUNC8 (int*,int,int) ; 
 char* hostname ; 
 int hostname_len ; 
 int local_masters ; 
 int local_rbs ; 
 int /*<<< orphan*/  FUNC9 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (char*,int*,int) ; 
 struct remote_binlog** rb_hash ; 
 int FUNC12 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC13 (char*) ; 
 scalar_t__ verbosity ; 
 void* FUNC14 (int) ; 

int FUNC15 (int flags) {
  int r, l, i;
  //struct hostent *h;
  struct remote_binlog *B;

  if (!(flags & 1)) {
    config_bytes = r = FUNC12 (fd[0], config_buff, MAX_CONFIG_SIZE+1);
  } else {
    r = config_bytes;
  }

  if (r < 0) {
    FUNC6 (stderr, "error reading configuration file %s: %m\n", config_filename);
    return -2;
  }
  if (r > MAX_CONFIG_SIZE) {
    FUNC6 (stderr, "configuration file %s too long (max %d bytes)\n", config_filename, MAX_CONFIG_SIZE);
    return -2;
  }
  cfg_cur = cfg_start = config_buff;
  cfg_end = cfg_start + r;
  *cfg_end = 0;
  cfg_lno = 1;

  while (1) {
    FUNC3 ();

    l = FUNC2 (1);
    if (!l) {
      break;
    }
    B = FUNC8 (cfg_cur, l, 1);

    cfg_cur += l;

    while (*cfg_cur == 32 || *cfg_cur == 9) {
      FUNC4();
      int flags = 1;

      if (*cfg_cur == '#') {
        break;
      }
      if (*cfg_cur == '*') {
        flags = 0;
        cfg_cur++;
      }
      l = FUNC2 (0);
      if (!l) {
        if (!flags) {
          return FUNC13 ("'*' must be followed with target description");
        }
        break;
      }

      struct location_list_entry *Q = B->first;
      while (Q) {
        if (l == Q->location_len && !FUNC10 (Q->location, cfg_cur, l)) {
          Q->flags |= flags;
          break;
        }
        Q = Q->next;
      }

      if (!Q) {
        char *s = FUNC14 (l + 1);
        FUNC11 (s, cfg_cur, l);
        s[l] = 0;
        if (!FUNC9 (s, ':', l)) {
          FUNC6 (stderr, "error at line %d: location %s for binlog %s is not of <hostname>:<path> format\n", cfg_lno, s, B->binlog_tag);
          return -1;
        }
        Q = FUNC14 (sizeof (struct location_list_entry));
        Q->next = B->first;
        Q->location = s;
        Q->location_len = l;
        B->first = Q;
        if (l > hostname_len && !FUNC10 (s, hostname, hostname_len) && s[hostname_len] == ':') {
          flags |= 2;
          if (!(B->flags & 2)) {
            B->flags |= 2;
            /* add here B to local interest group */
            FUNC0 (local_rbs < MAX_LOCAL_RBS);
            for (i = 0; i < local_rbs; i++) {
              if (LR[i].local->location_len == l && !FUNC10 (LR[i].local->location, s, l)) {
                FUNC6 (stderr, "error: location %s suggested for two different binlogs %s and %s\n", s, B->binlog_tag, LR[i].binlog->binlog_tag);
                return -1;
              }
            }
            LR[local_rbs].local = Q;
            LR[local_rbs].server_first = LR[local_rbs].server_last = (struct repl_server_status *) &LR[local_rbs];
            LR[local_rbs++].binlog = B;
            if (verbosity > 0) {
              FUNC6 (stderr, "found related binlog: %s at %s\n", B->binlog_tag, Q->location);
            }
          }
        }
        Q->flags = flags;
      }
      cfg_cur += l;
    }

    FUNC4();
    if (*cfg_cur != 13 && *cfg_cur != 10 && *cfg_cur != '#') {
      break;
    }

  }

  FUNC1 ();
  if (cfg_lex) {
    return FUNC13 ("EOF expected");
  }

  if (verbosity > 0) {
    FUNC6 (stderr, "%d related binlogs found\n", local_rbs);
  }

  if (check_all_locations) {
    int h, loc_errors = 0;
    for (h = 0; h < HASH_PRIME; h++) {
      if (rb_hash[h]) {
        loc_errors += FUNC5 (rb_hash[h]);
      }
    }
    if (loc_errors) {
      FUNC6 (stderr, "%d wrong remote binlog descriptions found in configuration file\n", loc_errors);
      return -1;
    }
  }

  int loc_errors = 0;
  for (i = 0; i < local_rbs; i++) {
    loc_errors += FUNC5 (LR[i].binlog);
    LR[i].master = FUNC7 (LR[i].binlog);
    if (LR[i].master == LR[i].local) {
      LR[i].binlog->flags |= 4;
      local_masters++;
    }
    LR[i].flags = LR[i].binlog->flags;
  }

  if (loc_errors) {
    FUNC6 (stderr, "%d wrong related binlog descriptions found\n", loc_errors);
    return -1;
  }

  if (verbosity > 0) {
    FUNC6 (stderr, "found %d related binlog descriptions, we (%s) hold master copy for %d of them\n", local_rbs, hostname, local_masters);
    for (i = 0; i < local_rbs; i++) {
      B = LR[i].binlog;
      if (B->flags & 4) {
        FUNC6 (stderr, "binlog #%d: %s, master at %s\n", i, B->binlog_tag, LR[i].local->location);
      } else {
        FUNC6 (stderr, "binlog #%d: %s, slave at %s, master is at %s\n", i, B->binlog_tag, LR[i].local->location, LR[i].master->location);
      }
    }
  }

  return 0;
}