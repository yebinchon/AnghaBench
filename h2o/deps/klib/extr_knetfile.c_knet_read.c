
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ off_t ;
struct TYPE_6__ {int fd; scalar_t__ type; scalar_t__ is_ready; int offset; int no_reconnect; } ;
typedef TYPE_1__ knetFile ;


 scalar_t__ EINTR ;
 scalar_t__ KNF_TYPE_FTP ;
 scalar_t__ KNF_TYPE_HTTP ;
 scalar_t__ KNF_TYPE_LOCAL ;
 scalar_t__ errno ;
 int kftp_connect_file (TYPE_1__*) ;
 int kftp_reconnect (TYPE_1__*) ;
 int khttp_connect_file (TYPE_1__*) ;
 scalar_t__ my_netread (int,void*,scalar_t__) ;
 scalar_t__ read (int,void*,scalar_t__) ;

off_t knet_read(knetFile *fp, void *buf, off_t len)
{
 off_t l = 0;
 if (fp->fd == -1) return 0;
 if (fp->type == KNF_TYPE_FTP) {
  if (fp->is_ready == 0) {
   if (!fp->no_reconnect) kftp_reconnect(fp);
   kftp_connect_file(fp);
  }
 } else if (fp->type == KNF_TYPE_HTTP) {
  if (fp->is_ready == 0)
   khttp_connect_file(fp);
 }
 if (fp->type == KNF_TYPE_LOCAL) {
  off_t rest = len, curr;
  while (rest) {
   do {
    curr = read(fp->fd, buf + l, rest);
   } while (curr < 0 && EINTR == errno);
   if (curr < 0) return -1;
   if (curr == 0) break;
   l += curr; rest -= curr;
  }
 } else l = my_netread(fp->fd, buf, len);
 fp->offset += l;
 return l;
}
