
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int INIT ;
 int RETURN (int ,int ) ;
 int del_pattern ;
 scalar_t__ do_del_pattern (int) ;
 int sscanf (char const*,char*,int*,int*) ;
 int strncmp (char const*,char*,int const) ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *key, int key_len) {
  INIT;


  const int shift = 7;
  if (key_len >= shift && !strncmp (key, "pattern", shift)) {
    int id = 0, already_read = 0;
    if (sscanf (key + shift, "%d%n", &id, &already_read) >= 1 && !key[shift + already_read]) {
      if (do_del_pattern (id)) {
        write_out (&c->Out, "DELETED\r\n", 9);
        RETURN (del_pattern, 0);
      }
    }
  }
  write_out (&c->Out, "NOT_FOUND\r\n", 11);
  RETURN (del_pattern, 0);
}
