#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct metafile {scalar_t__ data; TYPE_1__* header; scalar_t__ aio; } ;
struct index_entry {int /*<<< orphan*/  key_len; int /*<<< orphan*/  data; } ;
struct TYPE_2__ {int nrecords; int /*<<< orphan*/  key_len; int /*<<< orphan*/  key; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 struct index_entry index_entry_not_found ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct index_entry* FUNC3 (int,int) ; 
 int metafile_number ; 
 struct metafile* metafiles ; 
 int /*<<< orphan*/  metafiles_cache_miss ; 
 int /*<<< orphan*/  metafiles_cache_ok ; 
 scalar_t__ FUNC4 (char const*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  stderr ; 
 int verbosity ; 

struct index_entry* FUNC6 (const char *key, int key_len) {
  int l = -1;
  int r = metafile_number;
  while (r-l > 1) {
    int x = (r+l)>>1;
    if (FUNC4(key, key_len, metafiles[x].header->key, metafiles[x].header->key_len) < 0) {
      r = x;
    } else {
      l = x;
    }
  }
  if (l < 0) {
    if (verbosity>=4) { FUNC1 (stderr, "not found[1]\n"); }
    return &index_entry_not_found;
  }
  if (verbosity>=4) {
    FUNC1 (stderr, "(l,r) = (%d,%d)\n", l, r);
  }
  if (metafiles[l].data == 0 || metafiles[l].aio) {
    FUNC2 (l);
	  if (metafiles[l].data == 0 || metafiles[l].aio) {
      metafiles_cache_miss ++;
  	  return 0;
  	}
  }
  metafiles_cache_ok ++;
  FUNC5 (l);
  int metafile = l;
  struct metafile* meta = &metafiles[l];

  l = -1;
  r = meta->header->nrecords;
  while (r-l > 1) {
    int x = (r+l)>>1;
    if (FUNC4(key, key_len, FUNC3 (metafile, x)->data, FUNC3 (metafile, x)->key_len) < 0) {
      r = x;
    } else {
      l = x;
    }
  }
  if (verbosity>=4) {
    FUNC1 (stderr, "(l,r) = (%d,%d)\n", l, r);
  }
  
  if (l < 0) {
    if (verbosity>=4) { FUNC1 (stderr, "not found[2]\n"); }
    return &index_entry_not_found;
  }
  struct index_entry *E = FUNC3 (metafile, l);
  if (verbosity >= 4) {
    FUNC1 (stderr, "metafile_get_entry (%d, %d)->key = ", metafile, l);
    FUNC0 (E->data, E->key_len);
  }
  if (FUNC4(key, key_len, E->data, E->key_len) == 0) {
    if (verbosity>=4) {
      FUNC1 (stderr, "Found. l=%d\n", l);
    }
    return FUNC3 (metafile, l);
  }
  
  if (verbosity>=4) { FUNC1 (stderr, "not found[3]\n"); }
  return &index_entry_not_found;
}