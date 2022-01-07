
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int off_t ;
typedef int intmax_t ;
struct TYPE_2__ {scalar_t__ log_size; int filenames_idx; char** filenames; } ;


 TYPE_1__ conf ;
 scalar_t__ file_size (char*) ;

intmax_t
get_log_sizes (void)
{
  int i;
  off_t size = 0;


  if (conf.log_size > 0)
    return (intmax_t) conf.log_size;

  for (i = 0; i < conf.filenames_idx; ++i) {
    if (conf.filenames[i][0] == '-' && conf.filenames[i][1] == '\0')
      size += 0;
    else
      size += file_size (conf.filenames[i]);
  }

  return (intmax_t) size;
}
