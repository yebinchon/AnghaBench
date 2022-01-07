
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stdout_file; } ;
typedef TYPE_1__ process_info_t ;
typedef int buf ;
typedef int FILE ;


 int SEEK_SET ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,int,int ) ;
 int fseek (int ,int ,int ) ;
 int perror (char*) ;
 int print_lines (char*,int ,int *) ;
 int strlen (char*) ;

int process_copy_output(process_info_t* p, FILE* stream) {
  char buf[1024];
  int r;

  r = fseek(p->stdout_file, 0, SEEK_SET);
  if (r < 0) {
    perror("fseek");
    return -1;
  }


  while (fgets(buf, sizeof(buf), p->stdout_file) != ((void*)0))
    print_lines(buf, strlen(buf), stream);

  if (ferror(p->stdout_file)) {
    perror("read");
    return -1;
  }

  return 0;
}
