#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  id; } ;
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_10__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_11__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; TYPE_3__ pbos; } ;
typedef  int PixelBufferTypeEnum ;
typedef  TYPE_4__ GameContext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BGR_EXT ; 
 int /*<<< orphan*/  GL_DEPTH_COMPONENT ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
#define  kPixelBufferTypeEnum_Bgr 130 
#define  kPixelBufferTypeEnum_Depth 129 
#define  kPixelBufferTypeEnum_Rgb 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_4__*) ; 

__attribute__((used)) static void FUNC4(GameContext* gc,
                                       PixelBufferTypeEnum type) {
  if (FUNC3(gc)) {
    FUNC0(gc);
    switch (type) {
      case kPixelBufferTypeEnum_Rgb:
        FUNC1(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        FUNC2(0, 0, gc->width, gc->height, GL_RGB, GL_UNSIGNED_BYTE, 0);
        break;
      case kPixelBufferTypeEnum_Bgr:
        FUNC1(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        FUNC2(0, 0, gc->width, gc->height, GL_BGR_EXT, GL_UNSIGNED_BYTE,
                      0);
        break;
      case kPixelBufferTypeEnum_Depth:
        FUNC1(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
        FUNC2(0, 0, gc->width, gc->height, GL_DEPTH_COMPONENT,
                      GL_UNSIGNED_BYTE, 0);
        break;
    }
    FUNC1(GL_PIXEL_PACK_BUFFER, 0);
  }
}