
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int blowfish_enc_blk ;
 int blowfish_enc_blk_4way ;
 int ecb_crypt (struct skcipher_request*,int ,int ) ;

__attribute__((used)) static int ecb_encrypt(struct skcipher_request *req)
{
 return ecb_crypt(req, blowfish_enc_blk, blowfish_enc_blk_4way);
}
