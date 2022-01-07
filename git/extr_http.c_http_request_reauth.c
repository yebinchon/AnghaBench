
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct http_get_options {TYPE_2__* effective_url; TYPE_1__* base_url; } ;
struct TYPE_4__ {char* buf; } ;
struct TYPE_3__ {int buf; } ;


 int BUG (char*) ;
 int HTTP_OK ;
 int HTTP_REAUTH ;


 int HTTP_START_FAILED ;
 int credential_fill (int *) ;
 int credential_from_url (int *,int ) ;
 int error_errno (char*) ;
 int fflush (void*) ;
 int fileno (void*) ;
 int ftruncate (int ,int ) ;
 int http_auth ;
 int http_request (char const*,void*,int,struct http_get_options*) ;
 int rewind (void*) ;
 int strbuf_reset (void*) ;
 scalar_t__ update_url_from_redirect (TYPE_1__*,char const*,TYPE_2__*) ;

__attribute__((used)) static int http_request_reauth(const char *url,
          void *result, int target,
          struct http_get_options *options)
{
 int ret = http_request(url, result, target, options);

 if (ret != HTTP_OK && ret != HTTP_REAUTH)
  return ret;

 if (options && options->effective_url && options->base_url) {
  if (update_url_from_redirect(options->base_url,
          url, options->effective_url)) {
   credential_from_url(&http_auth, options->base_url->buf);
   url = options->effective_url->buf;
  }
 }

 if (ret != HTTP_REAUTH)
  return ret;





 switch (target) {
 case 128:
  strbuf_reset(result);
  break;
 case 129:
  if (fflush(result)) {
   error_errno("unable to flush a file");
   return HTTP_START_FAILED;
  }
  rewind(result);
  if (ftruncate(fileno(result), 0) < 0) {
   error_errno("unable to truncate a file");
   return HTTP_START_FAILED;
  }
  break;
 default:
  BUG("Unknown http_request target");
 }

 credential_fill(&http_auth);

 return http_request(url, result, target, options);
}
