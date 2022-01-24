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
struct metafile {int data; TYPE_1__* header; } ;
struct index_entry {int dummy; } ;
struct TYPE_2__ {int nrecords; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct index_entry index_entry_not_found ; 
 struct index_entry* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int metafile_number ; 
 struct metafile* metafiles ; 

struct index_entry* FUNC3 (int n, int use_aio) {
  int l = 0;  
  int sum = 0;
  while (l < metafile_number && n >= sum + metafiles[l].header->nrecords) {
    sum += metafiles[l].header->nrecords;
    l++;
  }
  if (l == metafile_number) {
    return &index_entry_not_found;
  }
  FUNC2 (l);
  struct metafile* meta = &metafiles[l];
  FUNC0 (meta->data);
  FUNC0 (n - sum >= 0);
  FUNC0 (n - sum < meta->header->nrecords);
  
  return FUNC1 (l, n - sum);
}