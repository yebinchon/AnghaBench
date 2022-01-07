
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int getArgFrom (char*,int,char const*,int ,int ) ;
 int qGet ;
 int qGetLen ;
 int qPost ;
 int qPostLen ;

int getArg (char *buffer, int b_len, const char *arg_name) {
  int res = getArgFrom (buffer, b_len, arg_name, qGet, qGetLen);
  if (res < 0) {
    res = getArgFrom (buffer, b_len, arg_name, qPost, qPostLen);
  }
  return res;
}
