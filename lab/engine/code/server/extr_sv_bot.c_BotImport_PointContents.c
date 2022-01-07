
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int SV_PointContents (int ,int) ;

__attribute__((used)) static int BotImport_PointContents(vec3_t point) {
 return SV_PointContents(point, -1);
}
