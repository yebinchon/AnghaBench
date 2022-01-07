
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pack_write_context {int stats; int indexer; } ;


 int git_indexer_append (int ,void*,size_t,int ) ;

__attribute__((used)) static int write_cb(void *buf, size_t len, void *payload)
{
 struct pack_write_context *ctx = payload;
 return git_indexer_append(ctx->indexer, buf, len, ctx->stats);
}
