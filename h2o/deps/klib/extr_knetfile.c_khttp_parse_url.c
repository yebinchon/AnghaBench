
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* http_host; char* host; int ctrl_fd; int fd; scalar_t__ seek_offset; int type; void* path; void* port; } ;
typedef TYPE_1__ knetFile ;


 int KNF_TYPE_HTTP ;
 scalar_t__ calloc (int,int) ;
 char* getenv (char*) ;
 void* strdup (char const*) ;
 int strncpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;

knetFile *khttp_parse_url(const char *fn, const char *mode)
{
 knetFile *fp;
 char *p, *proxy, *q;
 int l;
 if (strstr(fn, "http://") != fn) return 0;

 for (p = (char*)fn + 7; *p && *p != '/'; ++p);
 l = p - fn - 7;
 fp = (knetFile*)calloc(1, sizeof(knetFile));
 fp->http_host = (char*)calloc(l + 1, 1);
 strncpy(fp->http_host, fn + 7, l);
 fp->http_host[l] = 0;
 for (q = fp->http_host; *q && *q != ':'; ++q);
 if (*q == ':') *q++ = 0;

 proxy = getenv("http_proxy");

 if (proxy == 0) {
  fp->host = strdup(fp->http_host);
  fp->port = strdup(*q? q : "80");
  fp->path = strdup(*p? p : "/");
 } else {
  fp->host = (strstr(proxy, "http://") == proxy)? strdup(proxy + 7) : strdup(proxy);
  for (q = fp->host; *q && *q != ':'; ++q);
  if (*q == ':') *q++ = 0;
  fp->port = strdup(*q? q : "80");
  fp->path = strdup(fn);
 }
 fp->type = KNF_TYPE_HTTP;
 fp->ctrl_fd = fp->fd = -1;
 fp->seek_offset = 0;
 return fp;
}
