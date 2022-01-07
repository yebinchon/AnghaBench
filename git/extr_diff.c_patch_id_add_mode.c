
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int git_hash_ctx ;
typedef int buf ;
struct TYPE_2__ {int (* update_fn ) (int *,char*,int) ;} ;


 int stub1 (int *,char*,int) ;
 TYPE_1__* the_hash_algo ;
 int xsnprintf (char*,int,char*,unsigned int) ;

__attribute__((used)) static void patch_id_add_mode(git_hash_ctx *ctx, unsigned mode)
{

 char buf[12];
 int len = xsnprintf(buf, sizeof(buf), "%06o", mode);
 the_hash_algo->update_fn(ctx, buf, len);
}
