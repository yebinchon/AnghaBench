#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {long long list_file_offset; } ;
struct TYPE_3__ {int tot_lists; } ;

/* Variables and functions */
 TYPE_2__* FUNC0 (int) ; 
 TYPE_1__ Header ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 long long idx_kfs_headers_size ; 

__attribute__((used)) static inline long long FUNC2 (int p) {
  FUNC1 (p >= 0 && p <= Header.tot_lists);
  return (FUNC0(p)->list_file_offset) + idx_kfs_headers_size;
}