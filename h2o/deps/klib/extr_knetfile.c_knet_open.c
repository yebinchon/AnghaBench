
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int fd; int ctrl_fd; int type; } ;
typedef TYPE_1__ knetFile ;


 int KNF_TYPE_LOCAL ;
 int O_BINARY ;
 int O_RDONLY ;
 scalar_t__ calloc (int,int) ;
 int fprintf (int ,char*) ;
 int kftp_connect (TYPE_1__*) ;
 int kftp_connect_file (TYPE_1__*) ;
 TYPE_1__* kftp_parse_url (char const*,char const*) ;
 int khttp_connect_file (TYPE_1__*) ;
 TYPE_1__* khttp_parse_url (char const*,char const*) ;
 int knet_close (TYPE_1__*) ;
 int open (char const*,int) ;
 int perror (char*) ;
 int stderr ;
 char const* strstr (char const*,char*) ;

knetFile *knet_open(const char *fn, const char *mode)
{
 knetFile *fp = 0;
 if (mode[0] != 'r') {
  fprintf(stderr, "[kftp_open] only mode \"r\" is supported.\n");
  return 0;
 }
 if (strstr(fn, "ftp://") == fn) {
  fp = kftp_parse_url(fn, mode);
  if (fp == 0) return 0;
  if (kftp_connect(fp) == -1) {
   knet_close(fp);
   return 0;
  }
  kftp_connect_file(fp);
 } else if (strstr(fn, "http://") == fn) {
  fp = khttp_parse_url(fn, mode);
  if (fp == 0) return 0;
  khttp_connect_file(fp);
 } else {






  int fd = open(fn, O_RDONLY);

  if (fd == -1) {
   perror("open");
   return 0;
  }
  fp = (knetFile*)calloc(1, sizeof(knetFile));
  fp->type = KNF_TYPE_LOCAL;
  fp->fd = fd;
  fp->ctrl_fd = -1;
 }
 if (fp && fp->fd == -1) {
  knet_close(fp);
  return 0;
 }
 return fp;
}
