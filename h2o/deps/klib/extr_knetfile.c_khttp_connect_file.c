
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int off_t ;
struct TYPE_3__ {int fd; char* path; char* http_host; scalar_t__ offset; int is_ready; int port; int host; } ;
typedef TYPE_1__ knetFile ;


 scalar_t__ calloc (int,int) ;
 int fprintf (int ,char*,int) ;
 int free (char*) ;
 scalar_t__ my_netread (int,char*,int) ;
 int netclose (int) ;
 scalar_t__ netread (int,char*,int) ;
 int netwrite (int,char*,int) ;
 int socket_connect (int ,int ) ;
 scalar_t__ sprintf (char*,char*,...) ;
 int stderr ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strtol (char*,char**,int ) ;

int khttp_connect_file(knetFile *fp)
{
 int ret, l = 0;
 char *buf, *p;
 if (fp->fd != -1) netclose(fp->fd);
 fp->fd = socket_connect(fp->host, fp->port);
 buf = (char*)calloc(0x10000, 1);
 l += sprintf(buf + l, "GET %s HTTP/1.0\r\nHost: %s\r\n", fp->path, fp->http_host);
    l += sprintf(buf + l, "Range: bytes=%lld-\r\n", (long long)fp->offset);
 l += sprintf(buf + l, "\r\n");
 netwrite(fp->fd, buf, l);
 l = 0;
 while (netread(fp->fd, buf + l, 1)) {
  if (buf[l] == '\n' && l >= 3)
   if (strncmp(buf + l - 3, "\r\n\r\n", 4) == 0) break;
  ++l;
 }
 buf[l] = 0;
 if (l < 14) {
  netclose(fp->fd);
  fp->fd = -1;
  return -1;
 }
 ret = strtol(buf + 8, &p, 0);
 if (ret == 200 && fp->offset>0) {
  off_t rest = fp->offset;
  while (rest) {
   off_t l = rest < 0x10000? rest : 0x10000;
   rest -= my_netread(fp->fd, buf, l);
  }
 } else if (ret != 206 && ret != 200) {
  free(buf);
  fprintf(stderr, "[khttp_connect_file] fail to open file (HTTP code: %d).\n", ret);
  netclose(fp->fd);
  fp->fd = -1;
  return -1;
 }
 free(buf);
 fp->is_ready = 1;
 return 0;
}
