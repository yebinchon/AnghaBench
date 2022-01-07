
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ASSERT (int) ;

__attribute__((used)) static void fail_cb2(void) {
  ASSERT(0 && "fail_cb2 should not have been called");
}
