
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct curl_slist {int data; struct curl_slist* next; } ;


 struct curl_slist* curl_slist_append (struct curl_slist*,int ) ;
 struct curl_slist* extra_http_headers ;

struct curl_slist *http_copy_default_headers(void)
{
 struct curl_slist *headers = ((void*)0), *h;

 for (h = extra_http_headers; h; h = h->next)
  headers = curl_slist_append(headers, h->data);

 return headers;
}
