
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {struct evrpc_hook_meta* hook_meta; } ;
struct evrpc_meta {size_t data_size; int * data; int * key; } ;
struct evrpc_hook_meta {int meta_data; } ;


 int EVUTIL_ASSERT (int ) ;
 int TAILQ_INSERT_TAIL (int *,struct evrpc_meta*,int ) ;
 struct evrpc_hook_meta* evrpc_hook_meta_new_ () ;
 int memcpy (int *,void const*,size_t) ;
 void* mm_malloc (size_t) ;
 int * mm_strdup (char const*) ;
 int next ;

void
evrpc_hook_add_meta(void *ctx, const char *key,
    const void *data, size_t data_size)
{
 struct evrpc_request_wrapper *req = ctx;
 struct evrpc_hook_meta *store = ((void*)0);
 struct evrpc_meta *meta = ((void*)0);

 if ((store = req->hook_meta) == ((void*)0))
  store = req->hook_meta = evrpc_hook_meta_new_();

 meta = mm_malloc(sizeof(struct evrpc_meta));
 EVUTIL_ASSERT(meta != ((void*)0));
 meta->key = mm_strdup(key);
 EVUTIL_ASSERT(meta->key != ((void*)0));
 meta->data_size = data_size;
 meta->data = mm_malloc(data_size);
 EVUTIL_ASSERT(meta->data != ((void*)0));
 memcpy(meta->data, data, data_size);

 TAILQ_INSERT_TAIL(&store->meta_data, meta, next);
}
