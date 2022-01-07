
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
size_t fwrite_null(char *ptr, size_t eltsize, size_t nmemb, void *strbuf)
{
 return nmemb;
}
