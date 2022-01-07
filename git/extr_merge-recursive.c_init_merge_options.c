
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct merge_options {int detect_renames; int rename_limit; int verbosity; int buffer_output; scalar_t__ renormalize; int obuf; int detect_directory_renames; struct repository* repo; } ;


 int MERGE_DIRECTORY_RENAMES_CONFLICT ;
 char* getenv (char*) ;
 int memset (struct merge_options*,int ,int) ;
 int merge_recursive_config (struct merge_options*) ;
 int strbuf_init (int *,int ) ;
 int strtol (char const*,int *,int) ;

void init_merge_options(struct merge_options *opt,
   struct repository *repo)
{
 const char *merge_verbosity;
 memset(opt, 0, sizeof(struct merge_options));

 opt->repo = repo;

 opt->detect_renames = -1;
 opt->detect_directory_renames = MERGE_DIRECTORY_RENAMES_CONFLICT;
 opt->rename_limit = -1;

 opt->verbosity = 2;
 opt->buffer_output = 1;
 strbuf_init(&opt->obuf, 0);

 opt->renormalize = 0;

 merge_recursive_config(opt);
 merge_verbosity = getenv("GIT_MERGE_VERBOSITY");
 if (merge_verbosity)
  opt->verbosity = strtol(merge_verbosity, ((void*)0), 10);
 if (opt->verbosity >= 5)
  opt->buffer_output = 0;
}
