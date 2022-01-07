
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int list_t ;


 int list_struct_size ;
 int zfree (int *,int ) ;

__attribute__((used)) static inline void free_list_struct (list_t *L) {
  zfree (L, list_struct_size);
}
