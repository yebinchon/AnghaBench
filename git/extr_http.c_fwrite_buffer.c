
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,char*,size_t) ;

size_t fwrite_buffer(char *ptr, size_t eltsize, size_t nmemb, void *buffer_)
{
 size_t size = eltsize * nmemb;
 struct strbuf *buffer = buffer_;

 strbuf_add(buffer, ptr, size);
 return nmemb;
}
