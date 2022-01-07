
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct stat {scalar_t__ st_size; } ;
struct TYPE_3__ {int stdout_file; } ;
typedef TYPE_1__ process_info_t ;


 int fileno (int ) ;
 int fstat (int ,struct stat*) ;

long int process_output_size(process_info_t *p) {

  struct stat buf;

  int r = fstat(fileno(p->stdout_file), &buf);
  if (r < 0) {
    return -1;
  }

  return (long)buf.st_size;
}
