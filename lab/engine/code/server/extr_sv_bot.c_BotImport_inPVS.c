
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int SV_inPVS (int ,int ) ;

__attribute__((used)) static int BotImport_inPVS(vec3_t p1, vec3_t p2) {
 return SV_inPVS (p1, p2);
}
