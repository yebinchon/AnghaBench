
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ BIO_get_shutdown (int *) ;
 int BIO_set_data (int *,int *) ;
 int BIO_set_init (int *,int ) ;
 int TT_BLATHER (char*) ;

__attribute__((used)) static int
bio_rwcount_free(BIO *b)
{
 TT_BLATHER(("bio_rwcount_free: %p", b));
 if (!b)
  return 0;
 if (BIO_get_shutdown(b)) {
  BIO_set_init(b, 0);
  BIO_set_data(b, ((void*)0));
 }
 return 1;
}
