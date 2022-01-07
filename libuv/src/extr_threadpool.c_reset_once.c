
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_once_t ;
typedef int child_once ;


 int UV_ONCE_INIT ;
 int memcpy (int *,int *,int) ;
 int once ;

__attribute__((used)) static void reset_once(void) {
  uv_once_t child_once = UV_ONCE_INIT;
  memcpy(&once, &child_once, sizeof(child_once));
}
