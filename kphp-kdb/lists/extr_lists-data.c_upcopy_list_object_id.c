
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lev_new_entry {int object_id; } ;
typedef int object_id_t ;
typedef int list_id_t ;



__attribute__((used)) static inline void upcopy_list_object_id (void *E, list_id_t list_id, object_id_t object_id) {
  ((struct lev_new_entry *)E)->object_id = object_id;
}
