
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; char* host; int no_reconnect; char* retr; char* size_cmd; scalar_t__ seek_offset; int port; int type; } ;
typedef TYPE_1__ knetFile ;


 int KNF_TYPE_FTP ;
 scalar_t__ calloc (int,int) ;
 int sprintf (char*,char*,char*) ;
 scalar_t__ strchr (char const*,char) ;
 int strdup (char*) ;
 int strlen (char*) ;
 int strncpy (char*,char const*,int) ;
 char const* strstr (char const*,char*) ;

knetFile *kftp_parse_url(const char *fn, const char *mode)
{
 knetFile *fp;
 char *p;
 int l;
 if (strstr(fn, "ftp://") != fn) return 0;
 for (p = (char*)fn + 6; *p && *p != '/'; ++p);
 if (*p != '/') return 0;
 l = p - fn - 6;
 fp = (knetFile*)calloc(1, sizeof(knetFile));
 fp->type = KNF_TYPE_FTP;
 fp->fd = -1;


 fp->port = strdup("21");
 fp->host = (char*)calloc(l + 1, 1);
 if (strchr(mode, 'c')) fp->no_reconnect = 1;
 strncpy(fp->host, fn + 6, l);
 fp->retr = (char*)calloc(strlen(p) + 8, 1);
 sprintf(fp->retr, "RETR %s\r\n", p);
    fp->size_cmd = (char*)calloc(strlen(p) + 8, 1);
    sprintf(fp->size_cmd, "SIZE %s\r\n", p);
 fp->seek_offset = 0;
 return fp;
}
