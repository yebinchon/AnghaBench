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
struct heap_entry {float expected_gain; size_t domain; int views; int /*<<< orphan*/  ad_id; } ;
struct hash_entry {scalar_t__ generation; int heapref; } ;
struct advert {float factor; scalar_t__ domain; int /*<<< orphan*/  ad_id; } ;

/* Variables and functions */
 struct heap_entry* H ; 
 scalar_t__ HN ; 
 struct hash_entry* HS ; 
 scalar_t__ __build_heap_generation ; 
 scalar_t__ __gsort_limit ; 
 scalar_t__ __use_factor ; 
 void* FUNC0 (scalar_t__) ; 
 int FUNC1 (int,float) ; 
 int FUNC2 (float) ; 

struct heap_entry *FUNC3 (float expected_gain, struct advert *A, int views) {
  int i = 0;
  if (__use_factor) {
    expected_gain *= A->factor;
  }

  if (A->domain) {
    int hval = FUNC0 (A->domain);
    if (HS[hval].generation == __build_heap_generation) {
      i = HS[hval].heapref;
      if (H[i].expected_gain >= expected_gain) {
	return 0;
      }
      i = FUNC1 (i, expected_gain);
    }
  }

  if (!i) {
    if (HN == __gsort_limit) {
      if (H[1].expected_gain >= expected_gain) {
	return 0;
      }
      if (H[1].domain >= 0) {
	--HS[H[1].domain].generation;
      }
      i = FUNC1 (1, expected_gain);
    } else {
      i = FUNC2 (expected_gain);
    }
  }

  H[i].ad_id = A->ad_id;
  H[i].views = views;
  if (!A->domain) {
    H[i].domain = -1;
  } else {
    struct hash_entry *CHS = &HS[H[i].domain = FUNC0 (A->domain)];
    CHS->heapref = i;
    CHS->generation = __build_heap_generation;
  }
  H[i].expected_gain = expected_gain;
  return &H[i];
}