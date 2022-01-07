
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FATAL (char*) ;

__attribute__((used)) static void fail_cb(void) {
  FATAL("fail_cb should not have been called");
}
