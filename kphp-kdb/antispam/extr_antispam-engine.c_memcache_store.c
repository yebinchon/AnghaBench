
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct connection {int Tmp; int In; } ;
struct TYPE_9__ {unsigned int member_0; int member_1; unsigned int member_2; unsigned int member_3; } ;
typedef TYPE_1__ request_t ;
typedef int request ;
struct TYPE_10__ {int flags; int uahash; int ip; int id; } ;
typedef TYPE_2__ antispam_pattern_t ;


 int INIT ;
 int MAX_PATTERN_LEN ;
 int RETURN (int ,int) ;
 int TRUE ;
 int add_pattern ;
 int do_add_pattern (TYPE_2__,int ,TYPE_1__*,int) ;
 int fprintf (int ,char*,char const*,int,int) ;
 int free_tmp_buffers (struct connection*) ;
 int init_tmp_buffers (struct connection*) ;
 int mct_add ;
 int other ;
 int set_matches ;
 int sscanf (char const*,char*,unsigned int*,unsigned int*,unsigned int*,int*,...) ;
 int st_printf (char*,unsigned int,int,unsigned int,unsigned int,unsigned int) ;
 int st_safe_read_in (int *,TYPE_1__*,int) ;
 int stderr ;
 int strlen (TYPE_1__*) ;
 int strncmp (char const*,char*,int const) ;
 scalar_t__ unlikely (int) ;
 TYPE_1__* value_buf ;
 int verbosity ;
 int write_out (int ,TYPE_1__*,int) ;

int memcache_store (struct connection *c, int op, const char *key, int key_len, int flags, int delay, int size) {
  INIT;

  free_tmp_buffers (c);
  if (verbosity >= 2) {
    fprintf (stderr, "memcache_store: key='%s', key_len=%d, value_len=%d\n", key, key_len, size);
  }

  if (unlikely (size >= MAX_PATTERN_LEN)) {
    RETURN (other, -2);
  }

  const int shift = 7;


  if (key_len >= shift && !strncmp (key, "pattern", shift)) {
    antispam_pattern_t p;
    int already_read = 0;
    st_safe_read_in (&c->In, value_buf, size);

    if (sscanf (key + shift, "%d,%u,%u%n,%hu%n", &p.id, &p.ip, &p.uahash, &already_read, &p.flags, &already_read) < 3
     || key[shift + already_read]) {
      RETURN (add_pattern, 0);
    }
    int res = do_add_pattern (p, strlen (value_buf), value_buf, (op != mct_add));
    RETURN (add_pattern, res);
  }

  else if (key_len >= shift && !strncmp (key, "matches", shift)) {
    int already_read = 0;
    unsigned int ip, uahash, random_tag;

    st_safe_read_in (&c->In, value_buf, size);
    if (sscanf (key + shift, "%u,%u,%u%n", &ip, &uahash, &random_tag, &already_read) != 3 || key[shift + already_read]) {
      RETURN (set_matches, 0);
    }

    bool res = TRUE;
    request_t request = {random_tag, size, ip, uahash};
    init_tmp_buffers (c);
    if (verbosity >= 3) {
      st_printf ("STORED: random_tag = %u, size = %d, ip = %u, uahash = %u\n"
                   "expect '$2get matches$6%u$^' command\n", random_tag, size, ip, uahash, random_tag);
    }
    res &= (write_out (c->Tmp, &request, sizeof (request)) == sizeof (request));
    res &= (write_out (c->Tmp, value_buf, size) == size);
    RETURN (set_matches, res);
  }

  RETURN (other, -2);
}
