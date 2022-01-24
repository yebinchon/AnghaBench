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
struct fuse_file_info {int /*<<< orphan*/  fh; } ;
struct connection {int dummy; } ;
typedef  int /*<<< orphan*/  inode_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  cmd_get ; 
 int FUNC0 (int /*<<< orphan*/ ,int,struct fuse_file_info*) ; 
 int FUNC1 (int /*<<< orphan*/ ,struct fuse_file_info*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,unsigned int,unsigned int,struct fuse_file_info*) ; 
 int FUNC3 (struct connection*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct connection*) ; 
 int /*<<< orphan*/  FUNC6 (struct connection*) ; 
 int /*<<< orphan*/  FUNC7 (struct connection*,char const*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct connection*,char const*,int /*<<< orphan*/ ) ; 
 int FUNC9 (char const*,char*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*,int) ; 
 int /*<<< orphan*/  value_buff ; 
 int verbosity ; 

int FUNC12 (struct connection *c, const char *key, int key_len) {
  if (verbosity >= 3) {
    FUNC4 (stderr, "memcache_get: key='%s'\n", key);
  }
  struct fuse_file_info fi;
  if (key_len >= 5 && !FUNC11 (key, "stats", 5)) {
    int stats_len = FUNC3(c);
    FUNC7 (c, key, value_buff, stats_len);
    return 0;
  }
  cmd_get++;
  if (key_len <= 0) {
    return 0;
  }
  int r = -11;
  int x;
  unsigned int offset, length;
  inode_id_t inode;

  switch (key[0]) {
    case 'c':
      if (!FUNC11 (key, "creat", 5) && FUNC9 (key, "creat%d", &x) >= 1 && !FUNC6 (c)) {
        r = FUNC0 (value_buff, x, &fi);
        if (!r) {
          FUNC8 (c, key, fi.fh);
        }
      }
      break;
    case 'o':
      if (!FUNC10 (key, "open") && !FUNC6 (c)) {
        r = FUNC1 (value_buff, &fi);
        if (!r) {
          FUNC8 (c, key, fi.fh);
        }
      }
      break;
    case 'r':
      if (!FUNC11 (key, "read", 4) && FUNC9 (key, "read%u,%u,%lld", &offset, &length, &inode) >= 3) {
        fi.fh = inode;
        r = FUNC2 (NULL, value_buff, length, offset, &fi);
        if (r >= 0) {
          FUNC7 (c, key, value_buff, r);
        }
      }
  }

  FUNC5 (c);
  return 0;
}