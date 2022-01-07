
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct git_pack_header {int hdr_entries; } ;
struct TYPE_14__ {scalar_t__ size; } ;
typedef TYPE_1__ git_mwindow_file ;
struct TYPE_15__ {unsigned int total_objects; scalar_t__ indexed_objects; scalar_t__ indexed_deltas; scalar_t__ total_deltas; scalar_t__ local_objects; scalar_t__ received_objects; } ;
typedef TYPE_2__ git_indexer_progress ;
struct TYPE_16__ {int parsed_header; int off; scalar_t__ nr_objects; int deltas; int objects; TYPE_6__* pack; struct git_pack_header hdr; } ;
typedef TYPE_3__ git_indexer ;
struct TYPE_17__ {int has_cache; int idx_cache; TYPE_1__ mwf; } ;


 int GIT_EBUFS ;
 int GIT_ERROR_INDEXER ;
 int append_to_pack (TYPE_3__*,void const*,size_t) ;
 int assert (int ) ;
 int do_progress_callback (TYPE_3__*,TYPE_2__*) ;
 int git_error_set (int ,char*) ;
 scalar_t__ git_indexer__max_objects ;
 int git_mwindow_free_all (TYPE_1__*) ;
 scalar_t__ git_oidmap_new (int *) ;
 scalar_t__ git_vector_init (int *,unsigned int,int *) ;
 int hash_partially (TYPE_3__*,void const*,int) ;
 scalar_t__ ntohl (int ) ;
 int * objects_cmp ;
 int parse_header (struct git_pack_header*,TYPE_6__*) ;
 int read_stream_object (TYPE_3__*,TYPE_2__*) ;

int git_indexer_append(git_indexer *idx, const void *data, size_t size, git_indexer_progress *stats)
{
 int error = -1;
 struct git_pack_header *hdr = &idx->hdr;
 git_mwindow_file *mwf = &idx->pack->mwf;

 assert(idx && data && stats);

 if ((error = append_to_pack(idx, data, size)) < 0)
  return error;

 hash_partially(idx, data, (int)size);


 idx->pack->mwf.size += size;

 if (!idx->parsed_header) {
  unsigned int total_objects;

  if ((unsigned)idx->pack->mwf.size < sizeof(struct git_pack_header))
   return 0;

  if ((error = parse_header(&idx->hdr, idx->pack)) < 0)
   return error;

  idx->parsed_header = 1;
  idx->nr_objects = ntohl(hdr->hdr_entries);
  idx->off = sizeof(struct git_pack_header);

  if (idx->nr_objects <= git_indexer__max_objects) {
   total_objects = (unsigned int)idx->nr_objects;
  } else {
   git_error_set(GIT_ERROR_INDEXER, "too many objects");
   return -1;
  }

  if (git_oidmap_new(&idx->pack->idx_cache) < 0)
   return -1;

  idx->pack->has_cache = 1;
  if (git_vector_init(&idx->objects, total_objects, objects_cmp) < 0)
   return -1;

  if (git_vector_init(&idx->deltas, total_objects / 2, ((void*)0)) < 0)
   return -1;

  stats->received_objects = 0;
  stats->local_objects = 0;
  stats->total_deltas = 0;
  stats->indexed_deltas = 0;
  stats->indexed_objects = 0;
  stats->total_objects = total_objects;

  if ((error = do_progress_callback(idx, stats)) != 0)
   return error;
 }




 git_mwindow_free_all(mwf);

 while (stats->indexed_objects < idx->nr_objects) {
  if ((error = read_stream_object(idx, stats)) != 0) {
   if (error == GIT_EBUFS)
    break;
   else
    goto on_error;
  }
 }

 return 0;

on_error:
 git_mwindow_free_all(mwf);
 return error;
}
