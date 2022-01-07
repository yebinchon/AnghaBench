
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;
struct git_pack_file {unsigned int num_bad_objects; TYPE_1__ mwf; int * bad_object_sha1; } ;
struct git_pack_entry {int sha1; struct git_pack_file* p; int offset; } ;
typedef int git_oid ;
typedef int git_off_t ;


 size_t GIT_OID_HEXSZ ;
 int assert (struct git_pack_file*) ;
 scalar_t__ git_oid__cmp (int const*,int *) ;
 int git_oid_cpy (int *,int *) ;
 int pack_entry_find_offset (int *,int *,struct git_pack_file*,int const*,size_t) ;
 int packfile_error (char*) ;
 int packfile_open (struct git_pack_file*) ;

int git_pack_entry_find(
  struct git_pack_entry *e,
  struct git_pack_file *p,
  const git_oid *short_oid,
  size_t len)
{
 git_off_t offset;
 git_oid found_oid;
 int error;

 assert(p);

 if (len == GIT_OID_HEXSZ && p->num_bad_objects) {
  unsigned i;
  for (i = 0; i < p->num_bad_objects; i++)
   if (git_oid__cmp(short_oid, &p->bad_object_sha1[i]) == 0)
    return packfile_error("bad object found in packfile");
 }

 error = pack_entry_find_offset(&offset, &found_oid, p, short_oid, len);
 if (error < 0)
  return error;




 if (p->mwf.fd == -1 && (error = packfile_open(p)) < 0)
  return error;

 e->offset = offset;
 e->p = p;

 git_oid_cpy(&e->sha1, &found_oid);
 return 0;
}
