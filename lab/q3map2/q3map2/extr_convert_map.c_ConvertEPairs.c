
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* key; char* value; struct TYPE_4__* next; } ;
typedef TYPE_1__ epair_t ;
struct TYPE_5__ {TYPE_1__* epairs; } ;
typedef TYPE_2__ entity_t ;
typedef int FILE ;


 int Q_stricmp (char*,char*) ;
 int fprintf (int *,char*,char*,char*) ;

__attribute__((used)) static void ConvertEPairs( FILE *f, entity_t *e ){
 epair_t *ep;



 for ( ep = e->epairs; ep != ((void*)0); ep = ep->next )
 {

  if ( ep->key[ 0 ] == '\0' || ep->value[ 0 ] == '\0' ) {
   continue;
  }


  if ( !Q_stricmp( ep->key, "model" ) && ep->value[ 0 ] == '*' ) {
   continue;
  }


  fprintf( f, "\t\"%s\" \"%s\"\n", ep->key, ep->value );
 }
}
