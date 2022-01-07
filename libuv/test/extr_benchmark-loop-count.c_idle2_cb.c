
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_idle_t ;


 int ticks ;

__attribute__((used)) static void idle2_cb(uv_idle_t* handle) {
  ticks++;
}
