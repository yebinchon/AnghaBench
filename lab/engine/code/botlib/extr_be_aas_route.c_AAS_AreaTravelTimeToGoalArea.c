
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 scalar_t__ AAS_AreaRouteToGoalArea (int,int ,int,int,int*,int*) ;

int AAS_AreaTravelTimeToGoalArea(int areanum, vec3_t origin, int goalareanum, int travelflags)
{
 int traveltime, reachnum = 0;

 if (AAS_AreaRouteToGoalArea(areanum, origin, goalareanum, travelflags, &traveltime, &reachnum))
 {
  return traveltime;
 }
 return 0;
}
