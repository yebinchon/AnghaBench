
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct patch_id_t {int patchlen; int ctx; } ;
struct TYPE_2__ {int (* update_fn ) (int ,char*,int) ;} ;


 int remove_space (char*,unsigned long) ;
 int stub1 (int ,char*,int) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static void patch_id_consume(void *priv, char *line, unsigned long len)
{
 struct patch_id_t *data = priv;
 int new_len;

 new_len = remove_space(line, len);

 the_hash_algo->update_fn(data->ctx, line, new_len);
 data->patchlen += new_len;
}
