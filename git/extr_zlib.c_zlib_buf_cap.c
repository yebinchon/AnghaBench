
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uInt ;


 unsigned long ZLIB_BUF_MAX ;

__attribute__((used)) static inline uInt zlib_buf_cap(unsigned long len)
{
 return (ZLIB_BUF_MAX < len) ? ZLIB_BUF_MAX : len;
}
