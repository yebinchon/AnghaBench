
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int key; } ;
typedef TYPE_1__ hash_entry_t ;


 unsigned int HASH_STR_PRIME ;
 TYPE_1__** HS ;
 scalar_t__ MAX_STR ;
 int assert (int) ;
 int strcmp (int ,char const*) ;
 scalar_t__ tot_str ;
 TYPE_1__* zmalloc0 (int) ;
 int zstrdup (char const*) ;

__attribute__((used)) static hash_entry_t *get_str_f (const char *s, int force) {
  unsigned int h1 = 0, h2 = 0;
  const char *p = s;
  while (*p) {
    unsigned char c = *p++;
    h1 *= 131;
    h1 += c;
    h2 *= 239;
    h2 += c;
  }
  h1 %= HASH_STR_PRIME;
  h2 = 1 + (h2 % (HASH_STR_PRIME - 1));
  while (HS[h1]) {
    if (!strcmp (HS[h1]->key, s)) {
      return HS[h1];
    }
    if ( (h1 += h2) >= HASH_STR_PRIME) {
      h1 -= HASH_STR_PRIME;
    }
  }
  if (force) {
    tot_str++;
    assert (tot_str <= MAX_STR);
    HS[h1] = zmalloc0 (sizeof (hash_entry_t));
    HS[h1]->key = zstrdup (s);
    return HS[h1];
  }
  return ((void*)0);
}
