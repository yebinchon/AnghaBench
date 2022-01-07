
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_15__ {int dist; int normal; } ;
struct TYPE_14__ {int merged; size_t numportals; int num; int hint; int leaf; TYPE_2__ plane; TYPE_4__* winding; struct TYPE_14__** portals; } ;
typedef TYPE_1__ vportal_t ;
typedef TYPE_2__ visPlane_t ;
typedef TYPE_1__ leaf_t ;
struct TYPE_16__ {int numpoints; double** points; } ;
typedef TYPE_4__ fixedWinding_t ;
typedef int FILE ;


 int Error (char*,...) ;
 scalar_t__ MAX_MAP_VISIBILITY ;
 int MAX_POINTS_ON_WINDING ;
 size_t MAX_PORTALS_ON_LEAF ;
 void* NewFixedWinding (int) ;
 char* PORTALFILE ;
 int PlaneFromWinding (TYPE_4__*,TYPE_2__*) ;
 int SetPortalSphere (TYPE_1__*) ;
 int Sys_Printf (char*,int) ;
 scalar_t__ VIS_HEADER_SIZE ;
 int VectorCopy (double*,double*) ;
 int VectorSubtract (int ,int ,int ) ;
 scalar_t__ bspVisBytes ;
 TYPE_1__* faceleafs ;
 TYPE_1__* faces ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fscanf (int *,char*,...) ;
 int leafbytes ;
 int leaflongs ;
 TYPE_1__* leafs ;
 int memset (TYPE_1__*,int ,int) ;
 scalar_t__ numBSPVisBytes ;
 int numfaces ;
 int numportals ;
 int portalbytes ;
 int portalclusters ;
 int portallongs ;
 TYPE_1__* portals ;
 TYPE_1__* safe_malloc (int) ;
 int * stdin ;
 scalar_t__ strcmp (char*,char*) ;
 int vec3_origin ;

void LoadPortals( char *name ){
 int i, j, hint;
 vportal_t *p;
 leaf_t *l;
 char magic[80];
 FILE *f;
 int numpoints;
 fixedWinding_t *w;
 int leafnums[2];
 visPlane_t plane;

 if ( !strcmp( name,"-" ) ) {
  f = stdin;
 }
 else
 {
  f = fopen( name, "r" );
  if ( !f ) {
   Error( "LoadPortals: couldn't read %s\n",name );
  }
 }

 if ( fscanf( f,"%79s\n%i\n%i\n%i\n",magic, &portalclusters, &numportals, &numfaces ) != 4 ) {
  Error( "LoadPortals: failed to read header" );
 }
 if ( strcmp( magic,PORTALFILE ) ) {
  Error( "LoadPortals: not a portal file" );
 }

 Sys_Printf( "%6i portalclusters\n", portalclusters );
 Sys_Printf( "%6i numportals\n", numportals );
 Sys_Printf( "%6i numfaces\n", numfaces );


 leafbytes = ( ( portalclusters + 63 ) & ~63 ) >> 3;
 leaflongs = leafbytes / sizeof( long );

 portalbytes = ( ( numportals * 2 + 63 ) & ~63 ) >> 3;
 portallongs = portalbytes / sizeof( long );


 portals = safe_malloc( 2 * numportals * sizeof( vportal_t ) );
 memset( portals, 0, 2 * numportals * sizeof( vportal_t ) );

 leafs = safe_malloc( portalclusters * sizeof( leaf_t ) );
 memset( leafs, 0, portalclusters * sizeof( leaf_t ) );

 for ( i = 0; i < portalclusters; i++ )
  leafs[i].merged = -1;

 numBSPVisBytes = VIS_HEADER_SIZE + portalclusters * leafbytes;

 if ( numBSPVisBytes > MAX_MAP_VISIBILITY ) {
  Error( "MAX_MAP_VISIBILITY exceeded" );
 }

 ( (int *)bspVisBytes )[0] = portalclusters;
 ( (int *)bspVisBytes )[1] = leafbytes;

 for ( i = 0, p = portals ; i < numportals ; i++ )
 {
  if ( fscanf( f, "%i %i %i ", &numpoints, &leafnums[0], &leafnums[1] ) != 3 ) {
   Error( "LoadPortals: reading portal %i", i );
  }
  if ( numpoints > MAX_POINTS_ON_WINDING ) {
   Error( "LoadPortals: portal %i has too many points", i );
  }
  if ( (unsigned)leafnums[0] > portalclusters
    || (unsigned)leafnums[1] > portalclusters ) {
   Error( "LoadPortals: reading portal %i", i );
  }
  if ( fscanf( f, "%i ", &hint ) != 1 ) {
   Error( "LoadPortals: reading hint state" );
  }

  w = p->winding = NewFixedWinding( numpoints );
  w->numpoints = numpoints;

  for ( j = 0 ; j < numpoints ; j++ )
  {
   double v[3];
   int k;



   if ( fscanf( f, "(%lf %lf %lf ) "
       , &v[0], &v[1], &v[2] ) != 3 ) {
    Error( "LoadPortals: reading portal %i", i );
   }
   for ( k = 0 ; k < 3 ; k++ )
    w->points[j][k] = v[k];
  }
  fscanf( f, "\n" );


  PlaneFromWinding( w, &plane );


  l = &leafs[leafnums[0]];
  if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
   Error( "Leaf with too many portals" );
  }
  l->portals[l->numportals] = p;
  l->numportals++;

  p->num = i + 1;
  p->hint = hint;
  p->winding = w;
  VectorSubtract( vec3_origin, plane.normal, p->plane.normal );
  p->plane.dist = -plane.dist;
  p->leaf = leafnums[1];
  SetPortalSphere( p );
  p++;


  l = &leafs[leafnums[1]];
  if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
   Error( "Leaf with too many portals" );
  }
  l->portals[l->numportals] = p;
  l->numportals++;

  p->num = i + 1;
  p->hint = hint;
  p->winding = NewFixedWinding( w->numpoints );
  p->winding->numpoints = w->numpoints;
  for ( j = 0 ; j < w->numpoints ; j++ )
  {
   VectorCopy( w->points[w->numpoints - 1 - j], p->winding->points[j] );
  }

  p->plane = plane;
  p->leaf = leafnums[0];
  SetPortalSphere( p );
  p++;

 }

 faces = safe_malloc( 2 * numfaces * sizeof( vportal_t ) );
 memset( faces, 0, 2 * numfaces * sizeof( vportal_t ) );

 faceleafs = safe_malloc( portalclusters * sizeof( leaf_t ) );
 memset( faceleafs, 0, portalclusters * sizeof( leaf_t ) );

 for ( i = 0, p = faces; i < numfaces; i++ )
 {
  if ( fscanf( f, "%i %i ", &numpoints, &leafnums[0] ) != 2 ) {
   Error( "LoadPortals: reading portal %i", i );
  }

  w = p->winding = NewFixedWinding( numpoints );
  w->numpoints = numpoints;

  for ( j = 0 ; j < numpoints ; j++ )
  {
   double v[3];
   int k;



   if ( fscanf( f, "(%lf %lf %lf ) "
       , &v[0], &v[1], &v[2] ) != 3 ) {
    Error( "LoadPortals: reading portal %i", i );
   }
   for ( k = 0 ; k < 3 ; k++ )
    w->points[j][k] = v[k];
  }
  fscanf( f, "\n" );


  PlaneFromWinding( w, &plane );

  l = &faceleafs[leafnums[0]];
  l->merged = -1;
  if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
   Error( "Leaf with too many faces" );
  }
  l->portals[l->numportals] = p;
  l->numportals++;

  p->num = i + 1;
  p->winding = w;

  VectorSubtract( vec3_origin, plane.normal, p->plane.normal );
  p->plane.dist = -plane.dist;
  p->leaf = -1;
  SetPortalSphere( p );
  p++;
 }

 fclose( f );
}
