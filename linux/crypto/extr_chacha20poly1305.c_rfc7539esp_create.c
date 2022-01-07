
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtattr {int dummy; } ;
struct crypto_template {int dummy; } ;


 int chachapoly_create (struct crypto_template*,struct rtattr**,char*,int) ;

__attribute__((used)) static int rfc7539esp_create(struct crypto_template *tmpl, struct rtattr **tb)
{
 return chachapoly_create(tmpl, tb, "rfc7539esp", 8);
}
