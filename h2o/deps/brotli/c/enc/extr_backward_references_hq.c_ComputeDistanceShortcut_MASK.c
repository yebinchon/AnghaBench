#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_7__ {int /*<<< orphan*/  shortcut; } ;
struct TYPE_8__ {size_t insert_length; TYPE_1__ u; } ;
typedef  TYPE_2__ ZopfliNode ;

/* Variables and functions */
 size_t FUNC0 (TYPE_2__ const*) ; 
 size_t FUNC1 (TYPE_2__ const*) ; 
 scalar_t__ FUNC2 (TYPE_2__ const*) ; 

__attribute__((used)) static uint32_t FUNC3(const size_t block_start,
                                        const size_t pos,
                                        const size_t max_backward,
                                        const size_t gap,
                                        const ZopfliNode* nodes) {
  const size_t clen = FUNC1(&nodes[pos]);
  const size_t ilen = nodes[pos].insert_length;
  const size_t dist = FUNC0(&nodes[pos]);
  /* Since |block_start + pos| is the end position of the command, the copy part
     starts from |block_start + pos - clen|. Distances that are greater than
     this or greater than |max_backward| are static dictionary references, and
     do not update the last distances. Also distance code 0 (last distance)
     does not update the last distances. */
  if (pos == 0) {
    return 0;
  } else if (dist + clen <= block_start + pos + gap &&
             dist <= max_backward + gap &&
             FUNC2(&nodes[pos]) > 0) {
    return (uint32_t)pos;
  } else {
    return nodes[pos - clen - ilen].u.shortcut;
  }
}