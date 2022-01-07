
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ InFov (float const*,float const*,float const*,float) ;
 scalar_t__ qtrue ;

__attribute__((used)) static bool dmlab_in_fov(const float start[3], const float end[3],
                         const float angles[3], float fov) {
  return InFov(start, end, angles, fov) == qtrue;
}
