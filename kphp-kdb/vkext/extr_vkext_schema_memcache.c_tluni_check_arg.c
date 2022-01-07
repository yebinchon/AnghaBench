
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
struct tl_tree {int dummy; } ;
struct arg {int type; scalar_t__ id; } ;


 int TLUNI_NEXT ;
 scalar_t__ strcmp (char const*,scalar_t__) ;

void *tluni_check_arg (void **IP, void **Data, zval **arr, struct tl_tree **vars) {
  struct arg *res = *(--Data);
  const char *id = *(IP ++);
  if (!id) {
    if (res->id) { return 0; }
  } else {
    if (!res->id) { return 0; }
    if (strcmp (id, res->id)) { return 0; }
  }
  *(Data ++) = res->type;
  TLUNI_NEXT;
}
