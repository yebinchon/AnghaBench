
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int piping; int * pipe; } ;
typedef TYPE_1__ GLog ;
typedef int FILE ;


 int FATAL (char*,int ) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ read_lines (int *,TYPE_1__**,int) ;
 int strerror (int ) ;

__attribute__((used)) static int
read_log (GLog ** glog, const char *fn, int dry_run)
{
  FILE *fp = ((void*)0);
  int piping = 0;




  if (fn[0] == '-' && fn[1] == '\0' && (*glog)->pipe) {
    fp = (*glog)->pipe;
    (*glog)->piping = piping = 1;
  }


  if (!piping && (fp = fopen (fn, "r")) == ((void*)0))
    FATAL ("Unable to open the specified log file. %s", strerror (errno));


  if (read_lines (fp, glog, dry_run)) {
    if (!piping)
      fclose (fp);
    return 1;
  }


  if (!piping)
    fclose (fp);

  return 0;
}
