
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_NOCLOSE ;
 int BIO_free (int *) ;
 int * BIO_new_fp (int ,int ) ;
 int BIO_puts (int *,char*) ;
 int BIO_read (int *,char*,int) ;
 int BIO_write (int *,char*,int) ;
 int stdout ;

__attribute__((used)) static void send_http_get_and_print(BIO * sbio) {
  int len;
  char tmpbuf[1024];
  BIO * out = BIO_new_fp(stdout, BIO_NOCLOSE);

  BIO_puts(sbio, "GET / HTTP/1.0\n\n");
  for(;;) {
   len = BIO_read(sbio, tmpbuf, 1024);
   if(len <= 0) break;
  BIO_write(out, tmpbuf, len);
  }
  BIO_free(out);
}
