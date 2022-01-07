
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
typedef int CURLcode ;
typedef int CURLINFO ;
typedef int CURL ;


 int curl_easy_getinfo (int *,int ,char**) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_reset (struct strbuf*) ;

__attribute__((used)) static CURLcode curlinfo_strbuf(CURL *curl, CURLINFO info, struct strbuf *buf)
{
 char *ptr;
 CURLcode ret;

 strbuf_reset(buf);
 ret = curl_easy_getinfo(curl, info, &ptr);
 if (!ret && ptr)
  strbuf_addstr(buf, ptr);
 return ret;
}
