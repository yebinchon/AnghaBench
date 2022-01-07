
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metafile {char* data; long long* local_offsets; int * aio; TYPE_1__* header; } ;
struct TYPE_2__ {int metafile_size; int nrecords; scalar_t__ local_offset; scalar_t__ global_offset; } ;


 int WaitAioArrAdd (int *) ;
 int WaitAioArrClear () ;
 int allocated_metafile_bytes ;
 int assert (int) ;
 int check_aio_completion (int *) ;
 int * create_aio_read_connection (int ,long long*,scalar_t__,int,int *,struct metafile*) ;
 int ct_metafile_aio ;
 int fprintf (int ,char*,...) ;
 int free_metafiles () ;
 int idx_fd ;
 int metafile_number ;
 struct metafile* metafiles ;
 int stderr ;
 int verbosity ;
 scalar_t__ zzmalloc (int) ;

void load_metafile (int metafile) {

  WaitAioArrClear ();

  assert (metafile < metafile_number);

  struct metafile *meta = &metafiles[metafile];

  if (verbosity >= 3) {
    fprintf (stderr, "loading metafile %d in aio mode\n", metafile);
  }


  if (meta->aio != ((void*)0)) {
    check_aio_completion (meta->aio);
    if (meta->aio != ((void*)0)) {

      WaitAioArrAdd (meta->aio);
      return;
    }

    if (meta->data) {
      return;
    } else {
      fprintf (stderr, "Previous AIO query failed at %p, scheduling a new one\n", meta);
    }
  } else {
    if (verbosity >= 4) {
      fprintf (stderr, "No previous aio found for this metafile\n");
    }
  }

  if (meta->data) {
    fprintf (stderr, "Error: memory leak at load_metafile.\n");
    return;
  }

  free_metafiles ();



  while (1) {
    meta->local_offsets = (long long *)zzmalloc (meta->header->metafile_size);
    if (meta->local_offsets != ((void*)0)) {
      meta->data = (char *)(meta->local_offsets + meta->header->nrecords);
      break;
    }
    fprintf (stderr, "no space to load metafile - cannot allocate %d bytes\n", meta->header->metafile_size);
  }

  allocated_metafile_bytes += meta->header->metafile_size;

  if (verbosity >= 4) {
    fprintf (stderr, "AIO query creating...\n");
  }
  meta->aio = create_aio_read_connection (idx_fd, meta->local_offsets, meta->header->global_offset + meta->header->local_offset, meta->header->metafile_size, &ct_metafile_aio, meta);
  if (verbosity >= 4) {
    fprintf (stderr, "AIO query created\n");
  }
  assert (meta->aio != ((void*)0));

  WaitAioArrAdd (meta->aio);

  return;
}
