
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct git_pack_header {scalar_t__ hdr_signature; int hdr_version; } ;
struct TYPE_5__ {int fd; } ;
struct git_pack_file {TYPE_1__ mwf; } ;
struct TYPE_6__ {int data; } ;
typedef TYPE_2__ git_map ;


 int GIT_ERROR_INDEXER ;
 int GIT_MAP_SHARED ;
 int GIT_PROT_READ ;
 int PACK_SIGNATURE ;
 int git_error_set (int ,char*) ;
 int memcpy (struct git_pack_header*,int ,int) ;
 scalar_t__ ntohl (int ) ;
 int p_mmap (TYPE_2__*,int,int ,int ,int ,int ) ;
 int p_munmap (TYPE_2__*) ;
 int pack_version_ok (int ) ;

__attribute__((used)) static int parse_header(struct git_pack_header *hdr, struct git_pack_file *pack)
{
 int error;
 git_map map;

 if ((error = p_mmap(&map, sizeof(*hdr), GIT_PROT_READ, GIT_MAP_SHARED, pack->mwf.fd, 0)) < 0)
  return error;

 memcpy(hdr, map.data, sizeof(*hdr));
 p_munmap(&map);


 if (hdr->hdr_signature != ntohl(PACK_SIGNATURE)) {
  git_error_set(GIT_ERROR_INDEXER, "wrong pack signature");
  return -1;
 }

 if (!pack_version_ok(hdr->hdr_version)) {
  git_error_set(GIT_ERROR_INDEXER, "wrong pack version");
  return -1;
 }

 return 0;
}
