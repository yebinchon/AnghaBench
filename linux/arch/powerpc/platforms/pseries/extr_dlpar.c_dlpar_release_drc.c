
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;


 int ALLOCATION_STATE ;
 int ALLOC_UNUSABLE ;
 int DR_ENTITY_PRESENT ;
 int DR_ENTITY_SENSE ;
 int ISOLATE ;
 int ISOLATION_STATE ;
 int UNISOLATE ;
 int rtas_call (int ,int,int,int*,int ,int ) ;
 int rtas_set_indicator (int ,int ,int ) ;
 int rtas_token (char*) ;

int dlpar_release_drc(u32 drc_index)
{
 int dr_status, rc;

 rc = rtas_call(rtas_token("get-sensor-state"), 2, 2, &dr_status,
         DR_ENTITY_SENSE, drc_index);
 if (rc || dr_status != DR_ENTITY_PRESENT)
  return -1;

 rc = rtas_set_indicator(ISOLATION_STATE, drc_index, ISOLATE);
 if (rc)
  return rc;

 rc = rtas_set_indicator(ALLOCATION_STATE, drc_index, ALLOC_UNUSABLE);
 if (rc) {
  rtas_set_indicator(ISOLATION_STATE, drc_index, UNISOLATE);
  return rc;
 }

 return 0;
}
