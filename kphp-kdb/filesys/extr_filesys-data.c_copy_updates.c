
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct filesys_inode {int updates; } ;
struct TYPE_5__ {unsigned int block_length; unsigned int block_offset; int * data; } ;
typedef TYPE_1__ filesys_tree_t ;


 int assert (int) ;
 int filesys_dump_tree (int ) ;
 int fprintf (int ,char*,TYPE_1__*) ;
 int fwrite (int *,int,unsigned int,int ) ;
 int memcpy (char*,int *,unsigned int) ;
 int stderr ;
 TYPE_1__* tree_lowerbound (int ,unsigned int) ;
 TYPE_1__* tree_upperbound (int ,unsigned int) ;
 int verbosity ;
 int vkprintf (int,char*,unsigned int,...) ;

__attribute__((used)) static unsigned int copy_updates (struct filesys_inode *I, unsigned int offset, unsigned int length, char *data, unsigned int *blocksize) {
  const unsigned int right = offset + length;
  unsigned int bytes = 0;
  *blocksize = 0;

  if (verbosity >= 3) {
    filesys_dump_tree (I->updates);
  }

  if (offset > 0) {
    filesys_tree_t *T = tree_upperbound (I->updates, offset - 1);
    if (verbosity >= 3) {
      fprintf (stderr, "copy_updates: T = %p\n", T);
      fwrite (T->data, 1, T->block_length, stderr);
    }
    if (T != ((void*)0)) {
      unsigned int to = T->block_offset, tr = to + T->block_length;

      vkprintf (3, "copy_updates: tr = %d, to = %d\n", to, tr);

      *blocksize = tr - offset;
      assert (to < offset);
      if (tr > offset) {
        unsigned int moved_bytes = tr - offset;
        if (moved_bytes > length) {
          moved_bytes = length;
        }

        vkprintf (3, "copy_updates: moved_bytes = %d, start pos %d\n", moved_bytes, offset - T->block_offset);

        memcpy (data, &T->data[offset - T->block_offset], moved_bytes);
        bytes += moved_bytes;
      }
    }
  }
  unsigned int l = offset;
  while (l < right) {
    filesys_tree_t *T = tree_lowerbound (I->updates, l);
    if (T == ((void*)0)) {
      break;
    }
    l = T->block_offset;
    if (l >= right) {
      break;
    }
    *blocksize = (l + T->block_length) - offset;
    unsigned int moved_bytes = length - (l - offset);
    if (moved_bytes > T->block_length) {
      moved_bytes = T->block_length;
    }

    vkprintf (3, "copy_updates: moved_bytes = %d, dest pos %d\n", moved_bytes, l - offset);

    bytes += moved_bytes;
    memcpy (&data[l - offset], &T->data[0], moved_bytes);
    l += T->block_length;
  }
  assert (bytes <= length);

  vkprintf (3, "copy_updates: returns %d\n", bytes);

  return bytes;
}
