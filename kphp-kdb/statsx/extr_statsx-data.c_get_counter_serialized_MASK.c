#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct counter {int type; } ;

/* Variables and functions */
 scalar_t__ Q_raw ; 
 int FUNC0 (struct counter*,char*) ; 
 struct counter* FUNC1 (long long,int,int) ; 
 int FUNC2 (char*,long long,int) ; 

int FUNC3 (char *buffer, long long counter_id, int version) {
/*  if (verbosity) {
    int l = index_get_idx (counter_id);
    while (l != index_size && index_cnt[l] == counter_id) {
      fprintf (stderr, "%d ", index_cnt_ver[l]);
      l++;
    }
    fprintf (stderr, "\n");
    char* bf = zzmalloc0 (2000);
    get_counter_versions (bf, counter_id);
    fprintf (stderr, "%s\n", bf);
    zzfree (bf, 2000);
      
  }*/
  if (Q_raw) {
    return FUNC2 (buffer, counter_id, version);
  }
  struct counter *C = FUNC1 (counter_id, version, 1);
  if (!C) { return 0; }
  if (C->type == -2) { return -2; }
  return FUNC0 (C, buffer);
}