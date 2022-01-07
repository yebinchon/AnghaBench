
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef union cache_packed_local_copy_location {int dummy; } cache_packed_local_copy_location ;
struct cache_uri {int dummy; } ;
struct TYPE_5__ {int flags; int location; } ;


 int CACHE_LOCAL_COPY_FLAG_INT ;
 int CACHE_MAX_LOCAL_COPIES ;
 TYPE_1__* LC ;
 int cache_local_copy_get_flags (TYPE_1__*,union cache_packed_local_copy_location*) ;
 int cache_local_copy_unpack (struct cache_uri*,TYPE_1__*,int ,int ,int *) ;
 int cache_local_copy_unpack_location (struct cache_uri*,TYPE_1__*) ;
 int lrand48 () ;
 int strcpy (char*,int ) ;
 int strlen (int ) ;
 int vkprintf (int,char*,...) ;

__attribute__((used)) static int cache_convert (struct cache_uri *U, char *output, int olen) {
  int i, n = cache_local_copy_unpack (U, LC, CACHE_MAX_LOCAL_COPIES, 0, ((void*)0));
  if (n < 0) {
    vkprintf (1, "cache_convert: cache_local_copy_unpack failed.\n");
    return -1;
  }
  int m = 0;
  for (i = 0; i < n; i++) {
    union cache_packed_local_copy_location u;
    int flags = cache_local_copy_get_flags (LC + i, &u);
    vkprintf (4, "cache_local_copy_get_flags returns %d.\n", flags);
    if (flags != 1) {
      continue;
    }
    if (m != i) {
      LC[m] = LC[i];
    }
    m++;
  }
  if (!m) {
    return 0;
  }
  i = lrand48 () % m;
  if (LC[i].flags & CACHE_LOCAL_COPY_FLAG_INT) {
    cache_local_copy_unpack_location (U, LC + i);
  }
  int l = strlen (LC[i].location);
  if (olen < l + 1) {
    vkprintf (1, "cache_convert: output buffer is too small (%d bytes).\n", olen);
    return -1;
  }
  strcpy (output, LC[i].location);
  return 1;
}
