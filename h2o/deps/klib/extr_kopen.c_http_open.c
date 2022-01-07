
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* calloc (int,int) ;
 int close (int) ;
 int free (char*) ;
 char* getenv (char*) ;
 scalar_t__ read (int,char*,int) ;
 int socket_connect (char*,char*) ;
 scalar_t__ sprintf (char*,char*,...) ;
 char* strdup (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char const*,int) ;
 char* strstr (char const*,char*) ;
 int strtol (char*,char**,int ) ;
 int write (int,char*,int) ;

__attribute__((used)) static int http_open(const char *fn)
{
 char *p, *proxy, *q, *http_host, *host, *port, *path, *buf;
 int fd, ret, l;


 if (strstr(fn, "http://") != fn) return 0;

 for (p = (char*)fn + 7; *p && *p != '/'; ++p);
 l = p - fn - 7;
 http_host = calloc(l + 1, 1);
 strncpy(http_host, fn + 7, l);
 http_host[l] = 0;
 for (q = http_host; *q && *q != ':'; ++q);
 if (*q == ':') *q++ = 0;

 proxy = getenv("http_proxy");

 if (proxy == 0) {
  host = strdup(http_host);
  port = strdup(*q? q : "80");
  path = strdup(*p? p : "/");
 } else {
  host = (strstr(proxy, "http://") == proxy)? strdup(proxy + 7) : strdup(proxy);
  for (q = host; *q && *q != ':'; ++q);
  if (*q == ':') *q++ = 0;
  port = strdup(*q? q : "80");
  path = strdup(fn);
 }


 l = 0;
 fd = socket_connect(host, port);
 buf = calloc(0x10000, 1);
 l += sprintf(buf + l, "GET %s HTTP/1.0\r\nHost: %s\r\n", path, http_host);
 l += sprintf(buf + l, "\r\n");
 write(fd, buf, l);
 l = 0;
 while (read(fd, buf + l, 1)) {
  if (buf[l] == '\n' && l >= 3)
   if (strncmp(buf + l - 3, "\r\n\r\n", 4) == 0) break;
  ++l;
 }
 buf[l] = 0;
 if (l < 14) {
  close(fd);
  fd = -1;
 }
 ret = strtol(buf + 8, &p, 0);
 if (ret != 200) {
  close(fd);
  fd = -1;
 }
 free(buf); free(http_host); free(host); free(port); free(path);
 return fd;
}
