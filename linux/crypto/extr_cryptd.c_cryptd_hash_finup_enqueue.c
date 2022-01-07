
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ahash_request {int dummy; } ;


 int cryptd_hash_enqueue (struct ahash_request*,int ) ;
 int cryptd_hash_finup ;

__attribute__((used)) static int cryptd_hash_finup_enqueue(struct ahash_request *req)
{
 return cryptd_hash_enqueue(req, cryptd_hash_finup);
}
