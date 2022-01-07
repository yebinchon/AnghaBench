
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_prepare_t ;
typedef int uv_handle_t ;


 int ASSERT (int ) ;
 int uv_unref (int *) ;

__attribute__((used)) static void prepare_cb(uv_prepare_t* h) {
  ASSERT(h != ((void*)0));
  uv_unref((uv_handle_t*)h);
}
