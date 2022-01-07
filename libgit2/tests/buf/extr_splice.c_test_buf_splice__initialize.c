
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _buf ;
 int git_buf_init (int *,int) ;

void test_buf_splice__initialize(void) {
   git_buf_init(&_buf, 16);
}
