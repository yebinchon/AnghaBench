
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcpy (void*,void*,size_t) ;

__attribute__((used)) static inline void memcpy_dir(void *buf, void *sgdata, size_t nbytes, int out)
{
 void *src = out ? buf : sgdata;
 void *dst = out ? sgdata : buf;

 memcpy(dst, src, nbytes);
}
