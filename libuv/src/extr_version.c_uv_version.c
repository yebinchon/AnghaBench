
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned int UV_VERSION_HEX ;

unsigned int uv_version(void) {
  return UV_VERSION_HEX;
}
