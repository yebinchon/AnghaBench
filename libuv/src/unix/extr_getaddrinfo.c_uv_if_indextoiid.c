
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int uv_if_indextoname (unsigned int,char*,size_t*) ;

int uv_if_indextoiid(unsigned int ifindex, char* buffer, size_t* size) {
  return uv_if_indextoname(ifindex, buffer, size);
}
