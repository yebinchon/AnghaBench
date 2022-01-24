#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_6__ {int size; int /*<<< orphan*/  id; } ;
struct TYPE_8__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_9__ {int width; int height; TYPE_3__ pbos; } ;
typedef  TYPE_4__ GameContext ;

/* Variables and functions */
 scalar_t__ GL_NO_ERROR ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_STREAM_READ ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void FUNC6(GameContext* gc) {
  if (!gc->pbos.rgb.id) {
    FUNC4(1, &gc->pbos.rgb.id);
  }
  if (!gc->pbos.depth.id) {
    FUNC4(1, &gc->pbos.depth.id);
  }

  // Check that we successfully created RGB and Depth buffers.
  if (FUNC5() != GL_NO_ERROR) {
    FUNC1("GL Error creating PBO buffers.\n", stderr);
    FUNC0();
  }

  int rgb_pbo_size = gc->width * gc->height * 3;
  if (gc->pbos.rgb.size < rgb_pbo_size) {
    FUNC2(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
    FUNC3(GL_PIXEL_PACK_BUFFER, rgb_pbo_size, NULL, GL_STREAM_READ);
    if (FUNC5() != GL_NO_ERROR) {
      FUNC1("Failed to generate PBO data buffer.\n", stderr);
      FUNC0();
    }
    gc->pbos.rgb.size = rgb_pbo_size;
    FUNC2(GL_PIXEL_PACK_BUFFER, 0);
  }

  int depth_pbo_size = gc->width * gc->height;
  if (gc->pbos.depth.size < depth_pbo_size) {
    FUNC2(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
    FUNC3(GL_PIXEL_PACK_BUFFER, depth_pbo_size, NULL, GL_STREAM_READ);

    if (FUNC5() != GL_NO_ERROR) {
      FUNC1("Failed to generate PBO data buffer.\n", stderr);
      FUNC0();
    }
    gc->pbos.depth.size = depth_pbo_size;
    FUNC2(GL_PIXEL_PACK_BUFFER, 0);
  }
}