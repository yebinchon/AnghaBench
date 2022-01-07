
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int snprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void result_as_unsigned (char *buf, int buf_len, unsigned result) {
  assert (snprintf (buf, buf_len, "%u", result) < buf_len);
}
