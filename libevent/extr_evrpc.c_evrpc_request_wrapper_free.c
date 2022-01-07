
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evrpc_request_wrapper {struct evrpc_request_wrapper* name; int * hook_meta; } ;


 int evrpc_hook_context_free_ (int *) ;
 int mm_free (struct evrpc_request_wrapper*) ;

__attribute__((used)) static void
evrpc_request_wrapper_free(struct evrpc_request_wrapper *request)
{
 if (request->hook_meta != ((void*)0))
  evrpc_hook_context_free_(request->hook_meta);
 mm_free(request->name);
 mm_free(request);
}
