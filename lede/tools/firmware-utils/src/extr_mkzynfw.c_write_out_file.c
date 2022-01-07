
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct csum_state {int dummy; } ;
typedef int buf ;
typedef int FILE ;


 int DBG (int,char*,char*,size_t) ;
 int ERRS (char*,char*) ;
 int FILE_BUF_LEN ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,size_t,int,int *) ;
 int write_out_data (int *,char*,size_t,struct csum_state*) ;

int
write_out_file(FILE *outfile, char *name, size_t len, struct csum_state *css)
{
 char buf[FILE_BUF_LEN];
 size_t buflen = sizeof(buf);
 FILE *f;
 int res;

 DBG(2, "writing out file, name=%s, len=%zu",
  name, len);

 errno = 0;
 f = fopen(name,"r");
 if (errno) {
  ERRS("unable to open file: %s", name);
  return -1;
 }

 while (len > 0) {
  if (len < buflen)
   buflen = len;


  errno = 0;
  fread(buf, buflen, 1, f);
  if (errno != 0) {
   ERRS("unable to read from file: %s",name);
   res = -1;
   break;
  }

  res = write_out_data(outfile, buf, buflen, css);
  if (res)
   break;

  len -= buflen;
 }

 fclose(f);
 return res;
}
