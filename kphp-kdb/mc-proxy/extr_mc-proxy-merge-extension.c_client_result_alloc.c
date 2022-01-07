
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_entry {int res_bytes; scalar_t__ data; } ;


 scalar_t__ zzmalloc (int) ;

__attribute__((used)) static int client_result_alloc (struct gather_entry *E, char **to) {


  if (!E->res_bytes) {
    return 0;
  }
  E->data = zzmalloc (E->res_bytes + 4);
  *to = (char *) E->data;
  return E->res_bytes + 4;
}
