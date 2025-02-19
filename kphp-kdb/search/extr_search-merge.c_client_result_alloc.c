
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gather_entry {int res_read; int res_bytes; struct gather_chunk* last; struct gather_chunk* first; } ;
struct gather_chunk {scalar_t__ data; struct gather_chunk* next; } ;
typedef int nb_allocator_t ;


 int CHUNK_INTS ;
 int assert (int) ;
 struct gather_chunk* nbr_alloc (int ,int) ;

__attribute__((used)) static int client_result_alloc (nb_allocator_t Alloc, struct gather_entry *E, char **to) {
  int b = E->res_read, r;
  struct gather_chunk *C;
  assert (b >= 4 && b <= E->res_bytes);
  *to = 0;
  if (b == E->res_bytes) {
    return 0;
  }
  r = (b - 4) % (4 * CHUNK_INTS);
  if (r) {
    *to = (char *) E->last->data + r;
    return 4 * CHUNK_INTS - r;
  }
  C = nbr_alloc (Alloc, sizeof (struct gather_chunk));
  C->next = 0;
  if (!E->first) {
    E->first = E->last = C;
  } else {
    E->last->next = C;
    E->last = C;
  }
  *to = (char *) C->data;
  return 4 * CHUNK_INTS;
}
