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

/* Variables and functions */
 scalar_t__ iterator_metafile_number ; 
 scalar_t__ iterator_metafile_position ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ metafile_number ; 

void FUNC1 () { 
  iterator_metafile_number++;
  iterator_metafile_position = 0;
  if (iterator_metafile_number < metafile_number) {
    FUNC0 (iterator_metafile_number);
  } 
}