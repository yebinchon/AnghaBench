
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct spu_context {int object_id; } ;



__attribute__((used)) static int spufs_object_id_set(void *data, u64 id)
{
 struct spu_context *ctx = data;
 ctx->object_id = id;

 return 0;
}
