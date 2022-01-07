
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* key; scalar_t__ mtime; } ;
typedef TYPE_1__ hash_entry_t ;


 int assert (int ) ;
 int strcmp (char const*,char const*) ;
 int strncmp (char const*,char const*,int) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int cmp_he (const void *x, const void *y) {
  const hash_entry_t *h1 = *(const hash_entry_t **) x;
  const hash_entry_t *h2 = *(const hash_entry_t **) y;
  const char *s1 = h1->key;
  const char *s2 = h2->key;
  if (s1 == s2) { return 0; }
  const char *r1 = strrchr (s1, '/');
  assert (r1 != ((void*)0));
  const char *r2 = strrchr (s2, '/');
  assert (r2 != ((void*)0));
  int l1 = r1 - s1, l2 = r2 - s2;
  if (l1 != l2) {
    return strcmp (s1, s2);
  }
  int c = strncmp (s1, s2, l1);
  if (c) {
    return c;
  }
  if (h1->mtime < h2->mtime) {
    return -1;
  }
  if (h1->mtime > h2->mtime) {
    return 1;
  }
  return strcmp (r1 + 1, r2 + 1);
}
