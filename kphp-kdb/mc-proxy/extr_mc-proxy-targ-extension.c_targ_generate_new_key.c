
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct targ_gather_extra {scalar_t__ magic; int extra_start; int extra_end; int slice_limit; int flags; } ;


 scalar_t__ TARG_GATHER_MAGIC ;
 int assert (int) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ regenerate_search_extra (char*,int ,int ) ;

__attribute__((used)) static int targ_generate_new_key (char *buff, char *key, int key_len, void *E) {
  struct targ_gather_extra *extra = E;
  assert (extra->magic == TARG_GATHER_MAGIC);
  int l = 0;
  memcpy (buff + l, key, extra->extra_start);
  l += extra->extra_start;
  l += regenerate_search_extra (buff + l, extra->flags, extra->slice_limit);
  memcpy (buff + l, key + extra->extra_end, key_len - extra->extra_end);
  l += key_len - extra->extra_end;
  return l;
}
