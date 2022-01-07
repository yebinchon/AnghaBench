
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int last_error ;


 int MAX_ERROR_BUF_SIZE ;
 int snprintf (char*,int,char*,int) ;
 int vkprintf (int,char*,int,void*) ;

__attribute__((used)) static int ip_append (void **IP, int *n, int ip_size, void *cmd, char last_error[MAX_ERROR_BUF_SIZE]) {
  vkprintf (4, "ip_append (*n = %d, cmd = %p)\n", *n, cmd);
  if (*n >= ip_size) {
    snprintf (last_error, sizeof (last_error[0]) * MAX_ERROR_BUF_SIZE, "too many commands (%d)", *n);
    return 0;
  }
  IP[(*n)++] = cmd;
  return 1;
}
