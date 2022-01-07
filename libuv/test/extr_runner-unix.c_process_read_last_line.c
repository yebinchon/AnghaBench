
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int stdout_file; } ;
typedef TYPE_1__ process_info_t ;


 int SEEK_SET ;
 scalar_t__ ferror (int ) ;
 int * fgets (char*,size_t,int ) ;
 int fseek (int ,int ,int ) ;
 int perror (char*) ;

int process_read_last_line(process_info_t *p,
                           char* buffer,
                           size_t buffer_len) {
  char* ptr;

  int r = fseek(p->stdout_file, 0, SEEK_SET);
  if (r < 0) {
    perror("fseek");
    return -1;
  }

  buffer[0] = '\0';

  while (fgets(buffer, buffer_len, p->stdout_file) != ((void*)0)) {
    for (ptr = buffer; *ptr && *ptr != '\r' && *ptr != '\n'; ptr++);
    *ptr = '\0';
  }

  if (ferror(p->stdout_file)) {
    perror("read");
    buffer[0] = '\0';
    return -1;
  }
  return 0;
}
