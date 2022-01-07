
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct crypto_wait {int dummy; } ;
struct TYPE_2__ {struct crypto_wait* data; } ;
struct aead_request {TYPE_1__ base; } ;


 int crypto_wait_req (int,struct crypto_wait*) ;

__attribute__((used)) static inline int do_one_aead_op(struct aead_request *req, int ret)
{
 struct crypto_wait *wait = req->base.data;

 return crypto_wait_req(ret, wait);
}
