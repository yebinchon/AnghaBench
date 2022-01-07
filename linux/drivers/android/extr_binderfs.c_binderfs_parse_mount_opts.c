
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int substring_t ;
struct binderfs_mount_opts {int max; int stats_mode; } ;


 int BINDERFS_MAX_MINOR ;
 int CAP_SYS_ADMIN ;
 int EINVAL ;
 int ENOMEM ;
 int MAX_OPT_ARGS ;


 int STATS_GLOBAL ;
 int STATS_NONE ;
 int capable (int ) ;
 int kfree (char*) ;
 int match_int (int *,int*) ;
 char* match_strdup (int *) ;
 int match_token (char*,int ,int *) ;
 int pr_err (char*) ;
 int strcmp (char*,char*) ;
 char* strsep (char**,char*) ;
 int tokens ;

__attribute__((used)) static int binderfs_parse_mount_opts(char *data,
         struct binderfs_mount_opts *opts)
{
 char *p, *stats;
 opts->max = BINDERFS_MAX_MINOR;
 opts->stats_mode = STATS_NONE;

 while ((p = strsep(&data, ",")) != ((void*)0)) {
  substring_t args[MAX_OPT_ARGS];
  int token;
  int max_devices;

  if (!*p)
   continue;

  token = match_token(p, tokens, args);
  switch (token) {
  case 129:
   if (match_int(&args[0], &max_devices) ||
       (max_devices < 0 ||
        (max_devices > BINDERFS_MAX_MINOR)))
    return -EINVAL;

   opts->max = max_devices;
   break;
  case 128:
   if (!capable(CAP_SYS_ADMIN))
    return -EINVAL;

   stats = match_strdup(&args[0]);
   if (!stats)
    return -ENOMEM;

   if (strcmp(stats, "global") != 0) {
    kfree(stats);
    return -EINVAL;
   }

   opts->stats_mode = STATS_GLOBAL;
   kfree(stats);
   break;
  default:
   pr_err("Invalid mount options\n");
   return -EINVAL;
  }
 }

 return 0;
}
