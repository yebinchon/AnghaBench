
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * cache; } ;


 int REFRESH_QUIET ;
 scalar_t__ ce_uptodate (int ) ;
 int die (char*,char const*) ;
 int discard_cache () ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int index_name_pos (TYPE_1__*,char const*,int ) ;
 int printf (char*,char const*,char*) ;
 int read_cache () ;
 int refresh_index (TYPE_1__*,int ,int *,int *,int *) ;
 int setup_git_directory () ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strlen (char const*) ;
 int strtol (char const*,int *,int ) ;
 TYPE_1__ the_index ;
 int write_file (char const*,char*,int) ;

int cmd__read_cache(int argc, const char **argv)
{
 int i, cnt = 1;
 const char *name = ((void*)0);

 if (argc > 1 && skip_prefix(argv[1], "--print-and-refresh=", &name)) {
  argc--;
  argv++;
 }

 if (argc == 2)
  cnt = strtol(argv[1], ((void*)0), 0);
 setup_git_directory();
 git_config(git_default_config, ((void*)0));
 for (i = 0; i < cnt; i++) {
  read_cache();
  if (name) {
   int pos;

   refresh_index(&the_index, REFRESH_QUIET,
          ((void*)0), ((void*)0), ((void*)0));
   pos = index_name_pos(&the_index, name, strlen(name));
   if (pos < 0)
    die("%s not in index", name);
   printf("%s is%s up to date\n", name,
          ce_uptodate(the_index.cache[pos]) ? "" : " not");
   write_file(name, "%d\n", i);
  }
  discard_cache();
 }
 return 0;
}
