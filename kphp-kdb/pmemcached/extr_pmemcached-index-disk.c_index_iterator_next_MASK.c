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
struct TYPE_4__ {TYPE_1__* header; } ;
struct TYPE_3__ {scalar_t__ nrecords; } ;

/* Variables and functions */
 scalar_t__ index_iterator ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t iterator_metafile_number ; 
 scalar_t__ iterator_metafile_position ; 
 scalar_t__ FUNC1 (size_t,int /*<<< orphan*/ ) ; 
 size_t metafile_number ; 
 TYPE_2__* metafiles ; 

void FUNC2 () {
  while (iterator_metafile_number != metafile_number && iterator_metafile_position == metafiles[iterator_metafile_number].header->nrecords) {
    FUNC0 ();
  }
  if (iterator_metafile_number != metafile_number && iterator_metafile_position < metafiles[iterator_metafile_number].header->nrecords) {
    index_iterator =  FUNC1 ( iterator_metafile_number, iterator_metafile_position++);
  } else {
    index_iterator = 0;
  }
}