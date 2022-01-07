
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t git_off_t ;
struct TYPE_10__ {scalar_t__ data; } ;
typedef TYPE_3__ git_map ;
struct TYPE_11__ {TYPE_2__* pack; } ;
typedef TYPE_4__ git_indexer ;
typedef int git_file ;
struct TYPE_8__ {int fd; } ;
struct TYPE_9__ {TYPE_1__ mwf; } ;


 int GIT_MAP_SHARED ;
 int GIT_PROT_WRITE ;
 int assert (int ) ;
 int git__mmap_alignment (size_t*) ;
 int memcpy (unsigned char*,void const*,size_t) ;
 int p_mmap (TYPE_3__*,size_t,int ,int ,int ,size_t) ;
 int p_munmap (TYPE_3__*) ;

__attribute__((used)) static int write_at(git_indexer *idx, const void *data, git_off_t offset, size_t size)
{
 git_file fd = idx->pack->mwf.fd;
 size_t mmap_alignment;
 size_t page_offset;
 git_off_t page_start;
 unsigned char *map_data;
 git_map map;
 int error;

 assert(data && size);

 if ((error = git__mmap_alignment(&mmap_alignment)) < 0)
  return error;


 page_offset = offset % mmap_alignment;
 page_start = offset - page_offset;

 if ((error = p_mmap(&map, page_offset + size, GIT_PROT_WRITE, GIT_MAP_SHARED, fd, page_start)) < 0)
  return error;

 map_data = (unsigned char *)map.data;
 memcpy(map_data + page_offset, data, size);
 p_munmap(&map);

 return 0;
}
