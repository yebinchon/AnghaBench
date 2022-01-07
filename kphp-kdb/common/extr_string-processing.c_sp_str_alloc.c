
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ STRING_PROCESS_BUF_SIZE ;
 int sp_errno ;
 char* str_buf ;
 scalar_t__ str_buf_n ;

char *sp_str_alloc (int len) {



  len++;
  if (str_buf_n + len > STRING_PROCESS_BUF_SIZE) {
    sp_errno = 2;
    return ((void*)0);
  }

  char *res = str_buf + str_buf_n;
  str_buf_n += len;

  return res;
}
