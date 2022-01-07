
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ART_ARROWLEFT ;
 int ART_ARROWRIGHT ;
 int ART_ARROWS ;
 int ART_BACK0 ;
 int ART_BACK1 ;
 int ART_FRAMEL ;
 int ART_FRAMER ;
 int ART_GO0 ;
 int ART_GO1 ;
 int trap_R_RegisterShaderNoMip (int ) ;

void Demos_Cache( void ) {
 trap_R_RegisterShaderNoMip( ART_BACK0 );
 trap_R_RegisterShaderNoMip( ART_BACK1 );
 trap_R_RegisterShaderNoMip( ART_GO0 );
 trap_R_RegisterShaderNoMip( ART_GO1 );
 trap_R_RegisterShaderNoMip( ART_FRAMEL );
 trap_R_RegisterShaderNoMip( ART_FRAMER );
 trap_R_RegisterShaderNoMip( ART_ARROWS );
 trap_R_RegisterShaderNoMip( ART_ARROWLEFT );
 trap_R_RegisterShaderNoMip( ART_ARROWRIGHT );
}
