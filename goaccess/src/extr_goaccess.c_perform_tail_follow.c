
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct TYPE_4__ {int output_stdout; } ;
struct TYPE_3__ {scalar_t__ load_from_disk_only; int * pipe; } ;
typedef int FILE ;


 int FATAL (char*,int ) ;
 int SEEK_SET ;
 TYPE_2__ conf ;
 int errno ;
 int fclose (int *) ;
 scalar_t__ file_size (char const*) ;
 int * fopen (char const*,char*) ;
 int fseeko (int *,scalar_t__,int ) ;
 TYPE_1__* glog ;
 int parse_tail_follow (int *) ;
 int strerror (int ) ;
 int tail_html () ;
 int tail_term () ;
 int usleep (int) ;

__attribute__((used)) static void
perform_tail_follow (uint64_t * size1, const char *fn)
{
  FILE *fp = ((void*)0);
  uint64_t size2 = 0;

  if (fn[0] == '-' && fn[1] == '\0') {
    parse_tail_follow (glog->pipe);
    goto out;
  }
  if (glog->load_from_disk_only)
    return;

  size2 = file_size (fn);


  if (size2 == *size1)
    return;

  if (!(fp = fopen (fn, "r")))
    FATAL ("Unable to read log file %s.", strerror (errno));

  if (!fseeko (fp, *size1, SEEK_SET))
    parse_tail_follow (fp);
  fclose (fp);

  *size1 = size2;

out:

  if (!conf.output_stdout)
    tail_term ();
  else
    tail_html ();

  usleep (200000);
}
