
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct walker {int get_verbosely; int get_recover; scalar_t__ corrupt_object_found; } ;


 int fprintf (int ,char*) ;
 int free (char*) ;
 struct walker* get_http_walker (char*) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int http_cleanup () ;
 int http_fetch_usage ;
 int http_init (int *,char*,int ) ;
 int setup_git_directory () ;
 int stderr ;
 int str_end_url_with_slash (char const*,char**) ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;
 int walker_fetch (struct walker*,int,char**,char const**,char*) ;
 int walker_free (struct walker*) ;
 int walker_targets_free (int,char**,char const**) ;
 int walker_targets_stdin (char***,char const***) ;

int cmd_main(int argc, const char **argv)
{
 struct walker *walker;
 int commits_on_stdin = 0;
 int commits;
 const char **write_ref = ((void*)0);
 char **commit_id;
 char *url = ((void*)0);
 int arg = 1;
 int rc = 0;
 int get_verbosely = 0;
 int get_recover = 0;

 while (arg < argc && argv[arg][0] == '-') {
  if (argv[arg][1] == 't') {
  } else if (argv[arg][1] == 'c') {
  } else if (argv[arg][1] == 'a') {
  } else if (argv[arg][1] == 'v') {
   get_verbosely = 1;
  } else if (argv[arg][1] == 'w') {
   write_ref = &argv[arg + 1];
   arg++;
  } else if (argv[arg][1] == 'h') {
   usage(http_fetch_usage);
  } else if (!strcmp(argv[arg], "--recover")) {
   get_recover = 1;
  } else if (!strcmp(argv[arg], "--stdin")) {
   commits_on_stdin = 1;
  }
  arg++;
 }
 if (argc != arg + 2 - commits_on_stdin)
  usage(http_fetch_usage);
 if (commits_on_stdin) {
  commits = walker_targets_stdin(&commit_id, &write_ref);
 } else {
  commit_id = (char **) &argv[arg++];
  commits = 1;
 }

 if (argv[arg])
  str_end_url_with_slash(argv[arg], &url);

 setup_git_directory();

 git_config(git_default_config, ((void*)0));

 http_init(((void*)0), url, 0);
 walker = get_http_walker(url);
 walker->get_verbosely = get_verbosely;
 walker->get_recover = get_recover;

 rc = walker_fetch(walker, commits, commit_id, write_ref, url);

 if (commits_on_stdin)
  walker_targets_free(commits, commit_id, write_ref);

 if (walker->corrupt_object_found) {
  fprintf(stderr,
"Some loose object were found to be corrupt, but they might be just\n"
"a false '404 Not Found' error message sent with incorrect HTTP\n"
"status code.  Suggest running 'git fsck'.\n");
 }

 walker_free(walker);
 http_cleanup();

 free(url);

 return rc;
}
