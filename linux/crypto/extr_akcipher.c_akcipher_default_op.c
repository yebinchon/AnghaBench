
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct akcipher_request {int dummy; } ;


 int ENOSYS ;

__attribute__((used)) static int akcipher_default_op(struct akcipher_request *req)
{
 return -ENOSYS;
}
