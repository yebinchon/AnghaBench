
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fuse_file_info {int fh; } ;
struct connection {int dummy; } ;
typedef int inode_id_t ;


 int cmd_get ;
 int ff_create (int ,int,struct fuse_file_info*) ;
 int ff_open (int ,struct fuse_file_info*) ;
 int ff_read (int *,int ,unsigned int,unsigned int,struct fuse_file_info*) ;
 int filesys_prepare_stats (struct connection*) ;
 int fprintf (int ,char*,char const*) ;
 int free_tmp_buffers (struct connection*) ;
 int parse_path (struct connection*) ;
 int return_one_key (struct connection*,char const*,int ,int) ;
 int return_one_long (struct connection*,char const*,int ) ;
 int sscanf (char const*,char*,...) ;
 int stderr ;
 int strcmp (char const*,char*) ;
 int strncmp (char const*,char*,int) ;
 int value_buff ;
 int verbosity ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  if (verbosity >= 3) {
    fprintf (stderr, "memcache_get: key='%s'\n", key);
  }
  struct fuse_file_info fi;
  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int stats_len = filesys_prepare_stats(c);
    return_one_key (c, key, value_buff, stats_len);
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
      if (!strncmp (key, "creat", 5) && sscanf (key, "creat%d", &x) >= 1 && !parse_path (c)) {
        r = ff_create (value_buff, x, &fi);
        if (!r) {
          return_one_long (c, key, fi.fh);
        }
      }
      break;
    case 'o':
      if (!strcmp (key, "open") && !parse_path (c)) {
        r = ff_open (value_buff, &fi);
        if (!r) {
          return_one_long (c, key, fi.fh);
        }
      }
      break;
    case 'r':
      if (!strncmp (key, "read", 4) && sscanf (key, "read%u,%u,%lld", &offset, &length, &inode) >= 3) {
        fi.fh = inode;
        r = ff_read (((void*)0), value_buff, length, offset, &fi);
        if (r >= 0) {
          return_one_key (c, key, value_buff, r);
        }
      }
  }

  free_tmp_buffers (c);
  return 0;
}
