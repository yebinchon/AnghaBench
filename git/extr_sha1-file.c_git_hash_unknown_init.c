
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int git_hash_ctx ;


 int BUG (char*) ;

__attribute__((used)) static void git_hash_unknown_init(git_hash_ctx *ctx)
{
 BUG("trying to init unknown hash");
}
