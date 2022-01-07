
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int dummy; } ;


 int EXIT_FAILURE ;
 int EXIT_SUCCESS ;
 int REQ_RUNNING ;
 int REQ_WAITING ;
 int get_hits ;
 int get_missed ;
 int return_one_key_int (struct connection*,char const*,int) ;

__attribute__((used)) static int memcache_write_res (struct connection *c, const char *key, int res) {
  if (res == REQ_WAITING) {
    get_hits++;
    return return_one_key_int (c, key, 2);
  }
  if (res == REQ_RUNNING) {
    get_hits++;
    return return_one_key_int (c, key, 3);
  }
  if (res == EXIT_SUCCESS) {
    get_hits++;
    return return_one_key_int (c, key, 0);
  }
  if (res == EXIT_FAILURE) {
    get_hits++;
    return return_one_key_int (c, key, 1);
  }
  get_missed++;
  return 0;
}
