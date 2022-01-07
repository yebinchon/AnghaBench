
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct oidset_iter {int dummy; } ;
struct oidset {int dummy; } ;
struct object_id {int dummy; } ;


 int oidset_insert (struct oidset*,struct object_id*) ;
 int oidset_iter_init (struct oidset*,struct oidset_iter*) ;
 struct object_id* oidset_iter_next (struct oidset_iter*) ;

__attribute__((used)) static void add_all(struct oidset *dest, struct oidset *src) {
 struct oidset_iter iter;
 struct object_id *src_oid;

 oidset_iter_init(src, &iter);
 while ((src_oid = oidset_iter_next(&iter)) != ((void*)0))
  oidset_insert(dest, src_oid);
}
