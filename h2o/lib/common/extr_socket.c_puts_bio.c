
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 scalar_t__ strlen (char const*) ;
 int write_bio (int *,char const*,int) ;

__attribute__((used)) static int puts_bio(BIO *b, const char *str)
{
    return write_bio(b, str, (int)strlen(str));
}
