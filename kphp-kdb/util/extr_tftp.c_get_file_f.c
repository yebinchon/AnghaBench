
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* hnext; int alias; } ;
typedef TYPE_1__ tftp_file_t ;


 TYPE_1__** HF ;
 unsigned int TFTP_FILE_HASH_PRIME ;
 int assert (int) ;
 int strcmp (int ,char const*) ;
 int tot_files ;
 int zstrdup (char const*) ;
 TYPE_1__* ztmalloc0 (int const) ;

tftp_file_t *get_file_f (const char *alias, int force) {
  unsigned int h = 0;
  const char *s;
  for (s = alias; *s; s++) {
    h = 239 * h + *s;
  }
  h %= TFTP_FILE_HASH_PRIME;
  assert (h >= 0 && h < TFTP_FILE_HASH_PRIME);
  tftp_file_t **p = HF + h, *V;
  while (*p) {
    V = *p;
    if (!strcmp (V->alias, alias)) {
      *p = V->hnext;
      if (force >= 0) {
        V->hnext = HF[h];
        HF[h] = V;
      }
      return V;
    }
    p = &V->hnext;
  }
  if (force > 0) {
    tot_files++;
    const int sz = sizeof (tftp_file_t);
    V = ztmalloc0 (sz);
    V->alias = zstrdup (alias);
    V->hnext = HF[h];
    return HF[h] = V;
  }
  return ((void*)0);
}
