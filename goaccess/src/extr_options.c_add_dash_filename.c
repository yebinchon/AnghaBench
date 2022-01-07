
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int filenames_idx; char** filenames; int read_stdin; } ;


 int MAX_FILENAMES ;
 TYPE_1__ conf ;

void
add_dash_filename (void)
{
  int i;

  for (i = 0; i < conf.filenames_idx; ++i) {
    if (conf.filenames[i][0] == '-' && conf.filenames[i][1] == '\0')
      return;
  }

  if (conf.filenames_idx < MAX_FILENAMES && !conf.read_stdin) {
    conf.read_stdin = 1;
    conf.filenames[conf.filenames_idx++] = "-";
  }
}
