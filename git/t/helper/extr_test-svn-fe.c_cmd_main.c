
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int apply_delta (int,char const**) ;
 int strcmp (char const*,char*) ;
 int svndump_deinit () ;
 scalar_t__ svndump_init (char const*) ;
 int svndump_read (int *,char*,char*) ;
 int svndump_reset () ;
 int test_svnfe_usage ;
 int usage (int ) ;

int cmd_main(int argc, const char **argv)
{
 if (argc == 2) {
  if (svndump_init(argv[1]))
   return 1;
  svndump_read(((void*)0), "refs/heads/master", "refs/notes/svn/revs");
  svndump_deinit();
  svndump_reset();
  return 0;
 }

 if (argc >= 2 && !strcmp(argv[1], "-d"))
  return apply_delta(argc, argv);
 usage(test_svnfe_usage);
}
