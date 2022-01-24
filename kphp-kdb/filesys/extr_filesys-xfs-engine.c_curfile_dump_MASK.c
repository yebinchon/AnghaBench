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
struct TYPE_3__ {int old_size; int patch_size; int mode; int actime; int modtime; int old_crc32; int patch_crc32; int new_crc32; scalar_t__ parts; scalar_t__ filename_size; scalar_t__ gid; scalar_t__ uid; } ;
struct TYPE_4__ {int name; int chunk; int chunks; int M; TYPE_1__ E; } ;

/* Variables and functions */
 TYPE_2__ curfile ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int) ; 

__attribute__((used)) static void FUNC1 (int level) {
  FUNC0 (level, "curfile.name: %s\n", curfile.name);
  FUNC0 (level, "curfile.chunk: %d\n", curfile.chunk);
  FUNC0 (level, "curfile.chunks: %d\n", curfile.chunks);
  FUNC0 (level, "curfile.M: %d\n", curfile.M);
  FUNC0 (level, "curfile.E.old_size: %d\n", curfile.E.old_size);
  FUNC0 (level, "curfile.E.patch_size: %d\n", curfile.E.patch_size);
  FUNC0 (level, "curfile.E.mode: %d\n", curfile.E.mode);
  FUNC0 (level, "curfile.E.actime: %d\n", curfile.E.actime);
  FUNC0 (level, "curfile.E.modtime: %d\n", curfile.E.modtime);
  FUNC0 (level, "curfile.E.old_crc32: %d\n", curfile.E.old_crc32);
  FUNC0 (level, "curfile.E.patch_crc32: %d\n", curfile.E.patch_crc32);
  FUNC0 (level, "curfile.E.new_crc32: %d\n", curfile.E.new_crc32);
  FUNC0 (level, "curfile.E.uid: %d\n", (int) curfile.E.uid);
  FUNC0 (level, "curfile.E.gid: %d\n", (int) curfile.E.gid);
  FUNC0 (level, "curfile.E.filename_size: %d\n", (int) curfile.E.filename_size);
  FUNC0 (level, "curfile.E.parts: %d\n", (int) curfile.E.parts);
}