
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_pack_file {int idx_cache; scalar_t__ has_cache; } ;
struct git_pack_entry {unsigned int offset; } ;
typedef int git_oid ;
typedef unsigned int git_off_t ;
typedef scalar_t__ git_object_t ;
typedef int git_mwindow ;


 unsigned int GIT_EBUFS ;
 scalar_t__ GIT_OBJECT_OFS_DELTA ;
 scalar_t__ GIT_OBJECT_REF_DELTA ;
 int GIT_OID_HEXSZ ;
 unsigned int GIT_PASSTHROUGH ;
 scalar_t__ MSB (size_t,int) ;
 int git_oid_fromraw (int *,unsigned char*) ;
 struct git_pack_entry* git_oidmap_get (int ,int *) ;
 scalar_t__ pack_entry_find_offset (unsigned int*,int *,struct git_pack_file*,int *,int ) ;
 unsigned char* pack_window_open (struct git_pack_file*,int **,unsigned int,unsigned int*) ;
 unsigned int packfile_error (char*) ;

git_off_t get_delta_base(
 struct git_pack_file *p,
 git_mwindow **w_curs,
 git_off_t *curpos,
 git_object_t type,
 git_off_t delta_obj_offset)
{
 unsigned int left = 0;
 unsigned char *base_info;
 git_off_t base_offset;
 git_oid unused;

 base_info = pack_window_open(p, w_curs, *curpos, &left);

 if (base_info == ((void*)0))
  return GIT_EBUFS;






 if (type == GIT_OBJECT_OFS_DELTA) {
  unsigned used = 0;
  unsigned char c = base_info[used++];
  size_t unsigned_base_offset = c & 127;
  while (c & 128) {
   if (left <= used)
    return GIT_EBUFS;
   unsigned_base_offset += 1;
   if (!unsigned_base_offset || MSB(unsigned_base_offset, 7))
    return 0;
   c = base_info[used++];
   unsigned_base_offset = (unsigned_base_offset << 7) + (c & 127);
  }
  if (unsigned_base_offset == 0 || (size_t)delta_obj_offset <= unsigned_base_offset)
   return 0;
  base_offset = delta_obj_offset - unsigned_base_offset;
  *curpos += used;
 } else if (type == GIT_OBJECT_REF_DELTA) {

  if (p->has_cache) {
   struct git_pack_entry *entry;
   git_oid oid;

   git_oid_fromraw(&oid, base_info);
   if ((entry = git_oidmap_get(p->idx_cache, &oid)) != ((void*)0)) {
    *curpos += 20;
    return entry->offset;
   } else {




    return GIT_PASSTHROUGH;
   }
  }


  if (pack_entry_find_offset(&base_offset, &unused, p, (git_oid *)base_info, GIT_OID_HEXSZ) < 0)
   return packfile_error("base entry delta is not in the same pack");
  *curpos += 20;
 } else
  return 0;

 return base_offset;
}
