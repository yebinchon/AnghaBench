
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ind ;


 int assert_d_eq (int ,int ,char*) ;
 int mallctl (char*,void*,size_t*,int *,int ) ;

__attribute__((used)) static unsigned
arena_ind(void) {
 static unsigned ind = 0;

 if (ind == 0) {
  size_t sz = sizeof(ind);
  assert_d_eq(mallctl("arenas.create", (void *)&ind, &sz, ((void*)0),
      0), 0, "Unexpected mallctl failure creating arena");
 }

 return ind;
}
