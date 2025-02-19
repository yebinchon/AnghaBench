
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct forth_request {long long prog_id; struct forth_request* hnext; } ;


 struct forth_request** H ;
 int REQ_HASH_SIZE ;

__attribute__((used)) static struct forth_request *hash_get_req_f (long long prog_id) {
  unsigned h = ((unsigned) prog_id) & (REQ_HASH_SIZE - 1);
  struct forth_request **p = H + h, *V;
  while (*p) {
    V = *p;
    if (V->prog_id == prog_id) {
      *p = V->hnext;
      V->hnext = H[h];
      H[h] = V;
      return V;
    }
    p = &V->hnext;
  }
  return 0;
}
