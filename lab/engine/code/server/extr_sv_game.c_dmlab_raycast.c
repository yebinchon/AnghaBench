
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {float fraction; } ;
typedef TYPE_1__ trace_t ;
struct TYPE_5__ {scalar_t__ state; } ;


 int CONTENTS_SOLID ;
 int ENTITYNUM_NONE ;
 scalar_t__ SS_GAME ;
 int SV_Trace (TYPE_1__*,float const*,int *,int *,float const*,int ,int ,int ) ;
 int qfalse ;
 TYPE_2__ sv ;

float dmlab_raycast(const float start[3], const float end[3]) {
 if ( sv.state != SS_GAME ) {
  return 0.0f;
 }
 trace_t results;
 SV_Trace(&results, start, ((void*)0), ((void*)0), end, ENTITYNUM_NONE, CONTENTS_SOLID, qfalse);
 return results.fraction;
}
