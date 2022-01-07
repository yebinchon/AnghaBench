
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct lev_filesys_xfs_file_chunk {int part; int size; int * data; } ;
struct TYPE_2__ {int chunk; int chunks; size_t M; int name; int * data; } ;


 int assert (int) ;
 TYPE_1__ curfile ;
 int memcpy (int *,int *,int) ;
 int process_file () ;
 int vkprintf (int,char*,int,int,int ) ;

__attribute__((used)) static void filesys_xfs_file_chunk (struct lev_filesys_xfs_file_chunk *E) {
  assert (E->part == curfile.chunk);
  assert (E->part < curfile.chunks);
  int chunk_size = E->size + 1;
  assert (E->part == curfile.chunks - 1 || chunk_size == 0x10000);
  memcpy (&curfile.data[curfile.M], &E->data[0], chunk_size);
  curfile.M += chunk_size;
  curfile.chunk++;
  vkprintf (4, "%d chunk of %d chunks readed (%s).\n", (int) curfile.chunk, (int) curfile.chunks, curfile.name);
  if (curfile.chunk == curfile.chunks) {
    process_file ();
  }
}
