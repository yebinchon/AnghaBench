
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {float value; } ;


 int FLARE_STDCOEFF ;
 float atof (int ) ;
 float flareCoeff ;
 TYPE_1__* r_flareCoeff ;

__attribute__((used)) static void R_SetFlareCoeff( void ) {

 if(r_flareCoeff->value == 0.0f)
  flareCoeff = atof(FLARE_STDCOEFF);
 else
  flareCoeff = r_flareCoeff->value;
}
