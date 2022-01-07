
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int close (int) ;
 int die_errno (char*,...) ;
 int fclose (int ) ;
 int freopen (char*,char*,int ) ;
 int printf (char*) ;
 scalar_t__ serve_cache_loop (int) ;
 int stderr ;
 int stdout ;
 int unix_stream_listen (char const*) ;

__attribute__((used)) static void serve_cache(const char *socket_path, int debug)
{
 int fd;

 fd = unix_stream_listen(socket_path);
 if (fd < 0)
  die_errno("unable to bind to '%s'", socket_path);

 printf("ok\n");
 fclose(stdout);
 if (!debug) {
  if (!freopen("/dev/null", "w", stderr))
   die_errno("unable to point stderr to /dev/null");
 }

 while (serve_cache_loop(fd))
  ;

 close(fd);
}
