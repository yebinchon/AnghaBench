
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct connection {int Out; } ;


 int INIT ;
 int RETURN (int ,int ) ;
 int delete ;
 scalar_t__ do_del_exception (int,int) ;
 int eat_at (char const*,int,char**,int*) ;
 int fprintf (int ,char*,char const*) ;
 int sscanf (char*,char*,int*,int*) ;
 int stderr ;
 int strncmp (char*,char*,int) ;
 int verbosity ;
 int write_out (int *,char*,int) ;

int memcache_delete (struct connection *c, const char *old_key, int old_key_len) {
  INIT;

  if (verbosity > 1) {
    fprintf (stderr, "memcache_delete: key='%s'\n", old_key);
  }

  char *key;
  int key_len;

  eat_at (old_key, old_key_len, &key, &key_len);


  if (key_len >= 9 && !strncmp (key, "exception", 9)) {
    int id, fid;
    if (sscanf (key, "exception%d_%d", &id, &fid) == 2 && do_del_exception (id, fid)) {
      write_out (&c->Out, "DELETED\r\n", 9);
      RETURN(delete, 0);
    }

    write_out (&c->Out, "NOT_FOUND\r\n", 11);
    RETURN(delete, 0);
  }

  RETURN(delete, 0);
}
