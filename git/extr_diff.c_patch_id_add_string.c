
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_hash_ctx ;
struct TYPE_2__ {int (* update_fn ) (int *,char const*,int ) ;} ;


 int strlen (char const*) ;
 int stub1 (int *,char const*,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void patch_id_add_string(git_hash_ctx *ctx, const char *str)
{
 the_hash_algo->update_fn(ctx, str, strlen(str));
}
