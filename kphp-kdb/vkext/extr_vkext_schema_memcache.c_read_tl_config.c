
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADD_PMALLOC (int ) ;
 long long MAX_TL_CONFIG_SIZE ;
 int O_RDONLY ;
 int SEEK_END ;
 int SEEK_SET ;
 int assert (int) ;
 int close (int) ;
 int do_rpc_parse (char*,long long) ;
 int fprintf (int ,char*,char const*,long long) ;
 int free (char*) ;
 long long lseek (int,int ,int ) ;
 char* malloc (long long) ;
 int open (char const*,int ) ;
 long long read (int,char*,long long) ;
 int renew_tl_config () ;
 int stderr ;
 int strlen (int ) ;
 int tl_config_name ;
 int verbosity ;
 int zzstrdup (char const*) ;

int read_tl_config (const char *name) {
  int fd = open (name, O_RDONLY);

  if (fd < 0) { return -1; }
  long long x = lseek (fd, 0, SEEK_END);
  if (x < 0) { return -1; }
  if (x > MAX_TL_CONFIG_SIZE) {
    return -1;
  }
  if (verbosity >= 2) {
    fprintf (stderr, "File found. Name %s. size = %lld\n", name, x);
  }
  char *s = malloc (x);
  assert (lseek (fd, 0, SEEK_SET) == 0);
  assert (read (fd, s, x) == x);
  close (fd);
  do_rpc_parse (s, x);
  int res = renew_tl_config ();
  free (s);
  if (res > 0) {
    tl_config_name = zzstrdup (name);
    ADD_PMALLOC (strlen (tl_config_name));
  }

  return res;
}
