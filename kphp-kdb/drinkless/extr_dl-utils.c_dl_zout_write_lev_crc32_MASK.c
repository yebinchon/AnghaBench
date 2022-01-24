#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct lev_crc32 {int /*<<< orphan*/  crc32; int /*<<< orphan*/  pos; int /*<<< orphan*/  timestamp; } ;
struct TYPE_5__ {int /*<<< orphan*/  crc32_complement; int /*<<< orphan*/  written; } ;
typedef  TYPE_1__ dl_zout ;

/* Variables and functions */
 int /*<<< orphan*/  LEV_CRC32 ; 
 struct lev_crc32* FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  now ; 

struct lev_crc32 *FUNC2 (dl_zout *f) {
  FUNC1 (f);

  struct lev_crc32 *E = FUNC0 (f, LEV_CRC32, sizeof (struct lev_crc32));
  E->timestamp = now;
  E->pos = f->written;
  E->crc32 = ~f->crc32_complement;

  return E;
}