
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct buffer {TYPE_1__ buf; } ;
typedef int curl_write_callback ;
typedef int CURL ;


 int CURLOPT_CUSTOMREQUEST ;
 int CURLOPT_INFILE ;
 int CURLOPT_INFILESIZE ;
 int CURLOPT_IOCTLDATA ;
 int CURLOPT_IOCTLFUNCTION ;
 int CURLOPT_NOBODY ;
 int CURLOPT_PUT ;
 int CURLOPT_READFUNCTION ;
 int CURLOPT_UPLOAD ;
 int CURLOPT_URL ;
 int CURLOPT_WRITEFUNCTION ;
 int curl_easy_setopt (int *,int ,...) ;
 int fread_buffer ;
 int ioctl_buffer ;

__attribute__((used)) static void curl_setup_http(CURL *curl, const char *url,
  const char *custom_req, struct buffer *buffer,
  curl_write_callback write_fn)
{
 curl_easy_setopt(curl, CURLOPT_PUT, 1);
 curl_easy_setopt(curl, CURLOPT_URL, url);
 curl_easy_setopt(curl, CURLOPT_INFILE, buffer);
 curl_easy_setopt(curl, CURLOPT_INFILESIZE, buffer->buf.len);
 curl_easy_setopt(curl, CURLOPT_READFUNCTION, fread_buffer);

 curl_easy_setopt(curl, CURLOPT_IOCTLFUNCTION, ioctl_buffer);
 curl_easy_setopt(curl, CURLOPT_IOCTLDATA, buffer);

 curl_easy_setopt(curl, CURLOPT_WRITEFUNCTION, write_fn);
 curl_easy_setopt(curl, CURLOPT_NOBODY, 0);
 curl_easy_setopt(curl, CURLOPT_CUSTOMREQUEST, custom_req);
 curl_easy_setopt(curl, CURLOPT_UPLOAD, 1);
}
