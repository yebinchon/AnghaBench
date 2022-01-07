
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int bio_rwcount_write (int *,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static int
bio_rwcount_puts(BIO *b, const char *s)
{
 return bio_rwcount_write(b, s, strlen(s));
}
