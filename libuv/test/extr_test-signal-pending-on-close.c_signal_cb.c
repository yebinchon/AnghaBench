
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_signal_t ;


 int ASSERT (int ) ;

__attribute__((used)) static void signal_cb(uv_signal_t* signal, int signum) {
  ASSERT(0);
}
