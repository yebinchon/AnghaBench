
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct skcipher_request {int dummy; } ;


 int glue_ctr_req_128bit (int *,struct skcipher_request*) ;
 int twofish_ctr ;

__attribute__((used)) static int ctr_crypt(struct skcipher_request *req)
{
 return glue_ctr_req_128bit(&twofish_ctr, req);
}
