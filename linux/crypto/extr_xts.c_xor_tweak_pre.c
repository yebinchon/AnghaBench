
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int xor_tweak (struct skcipher_request*,int,int) ;

__attribute__((used)) static int xor_tweak_pre(struct skcipher_request *req, bool enc)
{
 return xor_tweak(req, 0, enc);
}
