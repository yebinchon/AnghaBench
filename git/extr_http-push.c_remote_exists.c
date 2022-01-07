
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int url; } ;





 char* curl_errorstr ;
 int error (char*,char*,char*) ;
 int free (char*) ;
 int http_get_strbuf (char*,int *,int *) ;
 TYPE_1__* repo ;
 char* xstrfmt (char*,int ,char const*) ;

__attribute__((used)) static int remote_exists(const char *path)
{
 char *url = xstrfmt("%s%s", repo->url, path);
 int ret;


 switch (http_get_strbuf(url, ((void*)0), ((void*)0))) {
 case 128:
  ret = 1;
  break;
 case 129:
  ret = 0;
  break;
 case 130:
  error("unable to access '%s': %s", url, curl_errorstr);

 default:
  ret = -1;
 }
 free(url);
 return ret;
}
