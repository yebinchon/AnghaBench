
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; TYPE_1__* pack; } ;
typedef TYPE_2__ searchpath_t ;
struct TYPE_4__ {scalar_t__ checksum; } ;


 int fs_numServerPaks ;
 int fs_reordered ;
 TYPE_2__* fs_searchpaths ;
 scalar_t__* fs_serverPaks ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static void FS_ReorderPurePaks( void )
{
 searchpath_t *s;
 int i;
 searchpath_t **p_insert_index,
  **p_previous;

 fs_reordered = qfalse;


 if ( !fs_numServerPaks )
  return;

 p_insert_index = &fs_searchpaths;
 for ( i = 0 ; i < fs_numServerPaks ; i++ ) {
  p_previous = p_insert_index;
  for (s = *p_insert_index; s; s = s->next) {

   if (s->pack && fs_serverPaks[i] == s->pack->checksum) {
    fs_reordered = qtrue;

    *p_previous = s->next;
    s->next = *p_insert_index;
    *p_insert_index = s;

    p_insert_index = &s->next;
    break;
   }
   p_previous = &s->next;
  }
 }
}
