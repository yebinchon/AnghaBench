
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_check_t ;


 int ticks ;

__attribute__((used)) static void check_cb(uv_check_t* handle) {
  ticks++;
}
