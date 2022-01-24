#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {size_t id; int written; int /*<<< orphan*/  crc32_complement; scalar_t__ use_crc32; } ;
typedef  TYPE_1__ dl_zout ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (void const*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * fd ; 
 int* fpos ; 
 int FUNC2 (int /*<<< orphan*/ ,void const*,size_t) ; 

__attribute__((used)) static int FUNC3 (dl_zout *f, const void *src, int len) {
  FUNC0 (FUNC2 (fd[f->id], src, (size_t)len) == len);
  fpos[f->id] += len;

  if (f->use_crc32) {
    f->crc32_complement = FUNC1 (src, len, f->crc32_complement);
  }
  f->written += len;
  return len;
}