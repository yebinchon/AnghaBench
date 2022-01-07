
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ev_uint32_t ;



__attribute__((used)) static inline int evutil_v4addr_is_classd(ev_uint32_t addr)
{ return ((addr>>24) & 0xf0) == 0xe0; }
