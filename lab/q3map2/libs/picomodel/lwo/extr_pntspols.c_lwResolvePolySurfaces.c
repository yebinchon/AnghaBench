
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int count; int * tag; } ;
typedef TYPE_2__ lwTagList ;
struct TYPE_14__ {int name; struct TYPE_14__* next; } ;
typedef TYPE_3__ lwSurface ;
struct TYPE_15__ {int count; TYPE_1__* pol; } ;
typedef TYPE_4__ lwPolygonList ;
struct TYPE_12__ {TYPE_3__* surf; } ;


 int _pico_alloc (scalar_t__) ;
 TYPE_3__** _pico_calloc (int,int) ;
 int _pico_free (TYPE_3__**) ;
 TYPE_3__* lwDefaultSurface () ;
 int lwListAdd (void**,TYPE_3__*) ;
 int strcmp (int ,int ) ;
 int strcpy (int ,int ) ;
 scalar_t__ strlen (int ) ;

int lwResolvePolySurfaces( lwPolygonList *polygon, lwTagList *tlist,
         lwSurface **surf, int *nsurfs ){
 lwSurface **s, *st;
 int i, index;

 if ( tlist->count == 0 ) {
  return 1;
 }

 s = _pico_calloc( tlist->count, sizeof( lwSurface * ) );
 if ( !s ) {
  return 0;
 }

 for ( i = 0; i < tlist->count; i++ ) {
  st = *surf;
  while ( st ) {
   if ( !strcmp( st->name, tlist->tag[ i ] ) ) {
    s[ i ] = st;
    break;
   }
   st = st->next;
  }
 }

 for ( i = 0; i < polygon->count; i++ ) {
  index = ( int ) ( (size_t)polygon->pol[ i ].surf );
  if ( index < 0 || index > tlist->count ) {
   return 0;
  }
  if ( !s[ index ] ) {
   s[ index ] = lwDefaultSurface();
   if ( !s[ index ] ) {
    return 0;
   }
   s[ index ]->name = _pico_alloc( strlen( tlist->tag[ index ] ) + 1 );
   if ( !s[ index ]->name ) {
    return 0;
   }
   strcpy( s[ index ]->name, tlist->tag[ index ] );
   lwListAdd( (void **) surf, s[ index ] );
   *nsurfs = *nsurfs + 1;
  }
  polygon->pol[ i ].surf = s[ index ];
 }

 _pico_free( s );
 return 1;
}
