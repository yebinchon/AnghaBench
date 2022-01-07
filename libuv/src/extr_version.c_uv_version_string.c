
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* UV_VERSION_STRING ;

const char* uv_version_string(void) {
  return UV_VERSION_STRING;
}
