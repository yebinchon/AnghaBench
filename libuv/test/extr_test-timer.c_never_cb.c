
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_timer_t ;


 int FATAL (char*) ;

__attribute__((used)) static void never_cb(uv_timer_t* handle) {
  FATAL("never_cb should never be called");
}
