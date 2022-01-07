
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {int res; int size; int * prog; } ;
struct connection {int dummy; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;





 int cmd_get ;
 int forth_request_unload_prog (struct forth_request*) ;
 int get_hits ;
 int get_missed ;
 struct forth_request* hash_get_req_f (long long) ;
 int image_prepare_stats (struct connection*) ;
 int memcache_write_res (struct connection*,char const*,int) ;
 int memcmp (char const*,char*,int) ;
 int not_zero_exit_code ;
 int return_one_key (struct connection*,char const*,int *,int) ;
 int sigabrt ;
 int sigkill ;
 int sigother ;
 int sigsegv ;
 int sigterm ;
 int sigxcpu ;
 int sscanf (char const*,char*,...) ;
 int stat_failure_write (struct connection*,char const*,int *) ;
 int * stats_buffer ;
 int strncmp (char const*,char*,int) ;
 int vkprintf (int,char*,...) ;

int memcache_get (struct connection *c, const char *key, int key_len) {
  vkprintf (3, "memcache_get_process: key='%s'\n", key);
  cmd_get++;
  long long prog_id;
  int res = -1;


  if (key_len >= 8 && !memcmp (key, "request", 7) && sscanf (key + 7, "%lld", &prog_id) == 1) {
    struct forth_request *R = hash_get_req_f (prog_id);
    if (R != ((void*)0)) {
      res = R->res;
    }
    return memcache_write_res (c, key, res);
  }

  if (key_len >= 7 && !memcmp (key, "output", 6) && sscanf (key + 6, "%lld", &prog_id) == 1) {
    struct forth_request *R = hash_get_req_f (prog_id);
    if (R != ((void*)0)) {
      res = R->res;
    }
    if ((res == EXIT_SUCCESS || res == EXIT_FAILURE) && R->prog != ((void*)0)) {
      get_hits++;
      return_one_key (c, key, R->prog, R->size);
      if (R->size >= 1024) {
        forth_request_unload_prog (R);
      }
      return 0;
    }
  }

  int signo;
  if (key_len >= 18 && !memcmp (key, "last_failure_prog", 17) && sscanf (key + 17, "%d", &signo) == 1) {
    vkprintf (4, "get(\"error\", signo: %d)\n", signo);
    switch (signo) {
      case 0: return stat_failure_write (c, key, &not_zero_exit_code);
      case 132: return stat_failure_write (c, key, &sigabrt);
      case 131: return stat_failure_write (c, key, &sigkill);
      case 130: return stat_failure_write (c, key, &sigsegv);
      case 129: return stat_failure_write (c, key, &sigterm);
      case 128: return stat_failure_write (c, key, &sigxcpu);
      default: return stat_failure_write (c, key, &sigother);
    }
  }

  if (key_len >= 5 && !strncmp (key, "stats", 5)) {
    int stats_len = image_prepare_stats (c);
    return_one_key (c, key, stats_buffer, stats_len);
    return 0;
  }
  get_missed++;
  return 0;
}
