
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uv__getentropy_cb ;


 int RTLD_DEFAULT ;
 scalar_t__ dlsym (int ,char*) ;
 scalar_t__ uv__getentropy ;

__attribute__((used)) static void uv__random_getentropy_init(void) {
  uv__getentropy = (uv__getentropy_cb) dlsym(RTLD_DEFAULT, "getentropy");
}
