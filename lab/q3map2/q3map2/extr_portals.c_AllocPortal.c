
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int portal_t ;


 scalar_t__ c_active_portals ;
 scalar_t__ c_peak_portals ;
 int memset (int *,int ,int) ;
 int numthreads ;
 int * safe_malloc (int) ;

portal_t *AllocPortal( void ){
 portal_t *p;

 if ( numthreads == 1 ) {
  c_active_portals++;
 }
 if ( c_active_portals > c_peak_portals ) {
  c_peak_portals = c_active_portals;
 }

 p = safe_malloc( sizeof( portal_t ) );
 memset( p, 0, sizeof( portal_t ) );

 return p;
}
