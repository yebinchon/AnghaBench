
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* memchr (char const*,char,size_t) ;

size_t git__linenlen(const char *buffer, size_t buffer_len)
{
 char *nl = memchr(buffer, '\n', buffer_len);
 return nl ? (size_t)(nl - buffer) + 1 : buffer_len;
}
