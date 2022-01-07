
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int filenames_idx; char** filenames; int read_stdin; scalar_t__ load_from_disk; } ;
struct TYPE_6__ {int load_from_disk_only; } ;
typedef TYPE_1__ GLog ;


 int FATAL (char*,char const*) ;
 TYPE_5__ conf ;
 int fprintf (int ,char*,char*) ;
 scalar_t__ pre_process_log (TYPE_1__*,char*,int) ;
 scalar_t__ read_log (TYPE_1__**,char*,int) ;
 int stderr ;
 char* verify_formats () ;

int
parse_log (GLog ** glog, char *tail, int dry_run)
{
  const char *err_log = ((void*)0);
  int i;


  if (tail != ((void*)0)) {

    if (pre_process_log ((*glog), tail, dry_run))
      return 1;
    return 0;
  }


  if ((err_log = verify_formats ()))
    FATAL ("%s", err_log);


  if (conf.load_from_disk && !conf.filenames_idx && !conf.read_stdin) {
    (*glog)->load_from_disk_only = 1;
    return 0;
  }

  for (i = 0; i < conf.filenames_idx; ++i) {
    if (read_log (glog, conf.filenames[i], dry_run)) {
      fprintf (stderr, "%s\n", conf.filenames[i]);
      return 1;
    }
  }

  return 0;
}
