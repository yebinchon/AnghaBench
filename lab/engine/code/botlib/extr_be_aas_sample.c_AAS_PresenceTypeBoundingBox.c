
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ vec3_t ;
struct TYPE_8__ {int (* Print ) (int ,char*) ;} ;


 int PRESENCE_CROUCH ;
 int PRESENCE_NORMAL ;
 int PRT_FATAL ;
 int VectorCopy (TYPE_1__,TYPE_1__) ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*) ;

void AAS_PresenceTypeBoundingBox(int presencetype, vec3_t mins, vec3_t maxs)
{
 int index;

 vec3_t boxmins[3] = {{0, 0, 0}, {-15, -15, -24}, {-15, -15, -24}};
 vec3_t boxmaxs[3] = {{0, 0, 0}, { 15, 15, 32}, { 15, 15, 8}};

 if (presencetype == PRESENCE_NORMAL) index = 1;
 else if (presencetype == PRESENCE_CROUCH) index = 2;
 else
 {
  botimport.Print(PRT_FATAL, "AAS_PresenceTypeBoundingBox: unknown presence type\n");
  index = 2;
 }
 VectorCopy(boxmins[index], mins);
 VectorCopy(boxmaxs[index], maxs);
}
