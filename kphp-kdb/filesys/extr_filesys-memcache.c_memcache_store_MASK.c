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
struct fuse_file_info {int fh; } ;
struct connection {int /*<<< orphan*/  Tmp; int /*<<< orphan*/  In; } ;
typedef  int /*<<< orphan*/  size ;
typedef  int inode_id_t ;

/* Variables and functions */
 int MAX_VALUE_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  cmd_set ; 
 int FUNC1 (int*,int) ; 
 int FUNC2 (int*,int,int) ; 
 int FUNC3 (int*,int) ; 
 int FUNC4 (int*) ; 
 int FUNC5 (int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int*,int,unsigned int,struct fuse_file_info*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*) ; 
 int mct_set ; 
 int FUNC9 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC10 (char const*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,char*,int) ; 
 int* value_buff ; 
 scalar_t__ verbosity ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int*,int) ; 

int FUNC14 (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  cmd_set++;
  inode_id_t inode;
  unsigned int offset = 0;
  int act = 0;
  int x = 0, y = 0;
  struct fuse_file_info fi;
  if (size < MAX_VALUE_LEN && key_len > 0 && op == mct_set) {
    switch (*key) {
      case 'c':
        if (!FUNC12 (key, "chmod", 5) && FUNC10 (key, "chmod%d", &x) >= 1) {
          act = 6;
        }
        if (!FUNC12 (key, "chown", 5) && FUNC10 (key, "chown%d,%d", &x, &y) >= 2) {
          act = 7;
        }
        break;
      case 'm':
        if (!FUNC12 (key, "mkdir", 5) && FUNC10 (key, "mkdir%d", &x) >= 1) {
          act = 1;
        }
        break;
      case 'p':
        if (!FUNC11 (key, "path")) {
          act = 3;
        }
      case 'r':
        if (!FUNC11 (key, "rmdir")) {
          act = 4;
        }
      case 'w':
        if (FUNC10 (key, "write%u,%lld", &offset, &inode) >= 2) {
          act = 2;
        }
        break;
      case 'u':
        if (!FUNC11 (key, "unlink")) {
          act = 5;
        }
    }
    int r = -11;
    if (act) {
      FUNC0 (FUNC9 (&c->In, value_buff, size) == size);
      value_buff[size] = 0;
      switch (act) {
        case 1:
          r = FUNC3 (value_buff, x);
          break;
        case 2:
          fi.fh = inode;
          r = FUNC6 (NULL, value_buff, size, offset, &fi);
          if (r >= 0) {
            r = 0;
          }
          break;
        case 3:
          FUNC8 (c);
          FUNC13 (c->Tmp, &size, sizeof (size));
          FUNC13 (c->Tmp, value_buff, size);
          r = 0;
          break;
        case 4:
          r = FUNC4 (value_buff);
          break;
        case 5:
          r = FUNC5 (value_buff);
          break;
        case 6:
          r = FUNC1 (value_buff, x);
          break;
        case 7:
          r = FUNC2 (value_buff, x, y);
          break;
      }
      if (!r) {
        return 1;
      }
      if (verbosity > 0 && r < 0) {
        FUNC7 (stderr, "store: fail (act = %d, res = %d)\n", act, r);
      }
      return 0;
    }
  }
  return -2;
}