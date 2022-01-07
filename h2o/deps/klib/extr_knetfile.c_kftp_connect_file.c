
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int fd; char* size_cmd; char* response; long long file_size; scalar_t__ offset; char* retr; int is_ready; scalar_t__ no_reconnect; } ;
typedef TYPE_1__ knetFile ;


 int fprintf (int ,char*,char*) ;
 int int64tostr (char*,scalar_t__) ;
 int kftp_get_response (TYPE_1__*) ;
 int kftp_pasv_connect (TYPE_1__*) ;
 int kftp_pasv_prep (TYPE_1__*) ;
 int kftp_send_cmd (TYPE_1__*,char*,int) ;
 int netclose (int) ;
 int sprintf (char*,char*,long long) ;
 int sscanf (char*,char*,long long*) ;
 int stderr ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 long long strtoint64 (char const*) ;

int kftp_connect_file(knetFile *fp)
{
 int ret;
 long long file_size;
 if (fp->fd != -1) {
  netclose(fp->fd);
  if (fp->no_reconnect) kftp_get_response(fp);
 }
 kftp_pasv_prep(fp);
    kftp_send_cmd(fp, fp->size_cmd, 1);

    if ( sscanf(fp->response,"%*d %lld", &file_size) != 1 )
    {
        fprintf(stderr,"[kftp_connect_file] %s\n", fp->response);
        return -1;
    }






 fp->file_size = file_size;
 if (fp->offset>=0) {
  char tmp[32];

  sprintf(tmp, "REST %lld\r\n", (long long)fp->offset);





  kftp_send_cmd(fp, tmp, 1);
 }
 kftp_send_cmd(fp, fp->retr, 0);
 kftp_pasv_connect(fp);
 ret = kftp_get_response(fp);
 if (ret != 150) {
  fprintf(stderr, "[kftp_connect_file] %s\n", fp->response);
  netclose(fp->fd);
  fp->fd = -1;
  return -1;
 }
 fp->is_ready = 1;
 return 0;
}
