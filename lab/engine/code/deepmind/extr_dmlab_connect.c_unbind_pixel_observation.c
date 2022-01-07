
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GameContext ;


 int GL_PIXEL_PACK_BUFFER ;
 int qglBindBuffer (int ,int ) ;
 int qglUnmapBuffer (int ) ;
 scalar_t__ use_pbo_rendering (int *) ;

__attribute__((used)) static void unbind_pixel_observation(GameContext* gc) {
  if (use_pbo_rendering(gc)) {
    qglUnmapBuffer(GL_PIXEL_PACK_BUFFER);
    qglBindBuffer(GL_PIXEL_PACK_BUFFER, 0);
  }
}
