#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int /*<<< orphan*/  id; } ;
struct TYPE_9__ {TYPE_2__ depth; TYPE_1__ rgb; } ;
struct TYPE_10__ {void* temp_buffer; int width; int height; TYPE_3__ pbos; } ;
typedef  int PixelBufferTypeEnum ;
typedef  TYPE_4__ GameContext ;

/* Variables and functions */
 int /*<<< orphan*/  GL_BGR_EXT ; 
 int /*<<< orphan*/  GL_DEPTH_COMPONENT ; 
 int /*<<< orphan*/  GL_PIXEL_PACK_BUFFER ; 
 int /*<<< orphan*/  GL_READ_ONLY ; 
 int /*<<< orphan*/  GL_RGB ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
#define  kPixelBufferTypeEnum_Bgr 130 
#define  kPixelBufferTypeEnum_Depth 129 
#define  kPixelBufferTypeEnum_Rgb 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 
 void* FUNC3 (void*,int) ; 
 scalar_t__ FUNC4 (TYPE_4__*) ; 

__attribute__((used)) static void* FUNC5(GameContext* gc, PixelBufferTypeEnum type) {
  if (FUNC4(gc)) {
    switch (type) {
      case kPixelBufferTypeEnum_Rgb:
      case kPixelBufferTypeEnum_Bgr:
        FUNC0(GL_PIXEL_PACK_BUFFER, gc->pbos.rgb.id);
        break;
      case kPixelBufferTypeEnum_Depth:
        FUNC0(GL_PIXEL_PACK_BUFFER, gc->pbos.depth.id);
        break;
    }
    void* pixel_buffer = FUNC1(GL_PIXEL_PACK_BUFFER, GL_READ_ONLY);

    return pixel_buffer;
  } else {
    gc->temp_buffer =
        FUNC3(gc->temp_buffer, gc->width * gc->height * 3);
    switch (type) {
      case kPixelBufferTypeEnum_Rgb:
        FUNC2(0, 0, gc->width, gc->height, GL_RGB, GL_UNSIGNED_BYTE,
                      gc->temp_buffer);
        break;
      case kPixelBufferTypeEnum_Bgr:
        FUNC2(0, 0, gc->width, gc->height, GL_BGR_EXT, GL_UNSIGNED_BYTE,
                      gc->temp_buffer);
        break;
      case kPixelBufferTypeEnum_Depth:
        FUNC2(0, 0, gc->width, gc->height, GL_DEPTH_COMPONENT,
                      GL_UNSIGNED_BYTE, gc->temp_buffer);
        break;
    }

    return gc->temp_buffer;
  }
}