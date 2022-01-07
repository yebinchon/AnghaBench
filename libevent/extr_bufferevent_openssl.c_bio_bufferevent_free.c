
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int BIO_free (int *) ;
 scalar_t__ BIO_get_data (int *) ;
 scalar_t__ BIO_get_init (int *) ;
 scalar_t__ BIO_get_shutdown (int *) ;
 int bufferevent_free (scalar_t__) ;

__attribute__((used)) static int
bio_bufferevent_free(BIO *b)
{
 if (!b)
  return 0;
 if (BIO_get_shutdown(b)) {
  if (BIO_get_init(b) && BIO_get_data(b))
   bufferevent_free(BIO_get_data(b));
  BIO_free(b);
 }
 return 1;
}
