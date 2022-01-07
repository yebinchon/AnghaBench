
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char* buf; scalar_t__ len; } ;
struct stat {unsigned long st_size; } ;
struct repository {int dummy; } ;
struct object_info {int* typep; unsigned long* sizep; unsigned long* disk_sizep; int whence; int * contentp; int type_name; scalar_t__ delta_base_sha1; } ;
struct object_id {int dummy; } ;
typedef int hdr ;
typedef int git_zstream ;


 int MAX_HEADER_LEN ;
 int OBJECT_INFO_ALLOW_UNKNOWN_TYPE ;
 int OBJECT_INFO_QUICK ;
 int OI_LOOSE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int error (int ,int ) ;
 int git_inflate_end (int *) ;
 int hashclr (scalar_t__) ;
 void* map_loose_object (struct repository*,struct object_id const*,unsigned long*) ;
 int munmap (void*,unsigned long) ;
 int oid_to_hex (struct object_id const*) ;
 int parse_loose_header_extended (char*,struct object_info*,int) ;
 scalar_t__ quick_has_loose (struct repository*,struct object_id const*) ;
 scalar_t__ stat_loose_object (struct repository*,struct object_id const*,struct stat*,char const**) ;
 int strbuf_release (struct strbuf*) ;
 scalar_t__ unpack_loose_header (int *,void*,unsigned long,char*,int) ;
 scalar_t__ unpack_loose_header_to_strbuf (int *,void*,unsigned long,char*,int,struct strbuf*) ;
 int unpack_loose_rest (int *,char*,unsigned long,struct object_id const*) ;

__attribute__((used)) static int loose_object_info(struct repository *r,
        const struct object_id *oid,
        struct object_info *oi, int flags)
{
 int status = 0;
 unsigned long mapsize;
 void *map;
 git_zstream stream;
 char hdr[MAX_HEADER_LEN];
 struct strbuf hdrbuf = STRBUF_INIT;
 unsigned long size_scratch;

 if (oi->delta_base_sha1)
  hashclr(oi->delta_base_sha1);
 if (!oi->typep && !oi->type_name && !oi->sizep && !oi->contentp) {
  const char *path;
  struct stat st;
  if (!oi->disk_sizep && (flags & OBJECT_INFO_QUICK))
   return quick_has_loose(r, oid) ? 0 : -1;
  if (stat_loose_object(r, oid, &st, &path) < 0)
   return -1;
  if (oi->disk_sizep)
   *oi->disk_sizep = st.st_size;
  return 0;
 }

 map = map_loose_object(r, oid, &mapsize);
 if (!map)
  return -1;

 if (!oi->sizep)
  oi->sizep = &size_scratch;

 if (oi->disk_sizep)
  *oi->disk_sizep = mapsize;
 if ((flags & OBJECT_INFO_ALLOW_UNKNOWN_TYPE)) {
  if (unpack_loose_header_to_strbuf(&stream, map, mapsize, hdr, sizeof(hdr), &hdrbuf) < 0)
   status = error(_("unable to unpack %s header with --allow-unknown-type"),
           oid_to_hex(oid));
 } else if (unpack_loose_header(&stream, map, mapsize, hdr, sizeof(hdr)) < 0)
  status = error(_("unable to unpack %s header"),
          oid_to_hex(oid));
 if (status < 0)
  ;
 else if (hdrbuf.len) {
  if ((status = parse_loose_header_extended(hdrbuf.buf, oi, flags)) < 0)
   status = error(_("unable to parse %s header with --allow-unknown-type"),
           oid_to_hex(oid));
 } else if ((status = parse_loose_header_extended(hdr, oi, flags)) < 0)
  status = error(_("unable to parse %s header"), oid_to_hex(oid));

 if (status >= 0 && oi->contentp) {
  *oi->contentp = unpack_loose_rest(&stream, hdr,
        *oi->sizep, oid);
  if (!*oi->contentp) {
   git_inflate_end(&stream);
   status = -1;
  }
 } else
  git_inflate_end(&stream);

 munmap(map, mapsize);
 if (status && oi->typep)
  *oi->typep = status;
 if (oi->sizep == &size_scratch)
  oi->sizep = ((void*)0);
 strbuf_release(&hdrbuf);
 oi->whence = OI_LOOSE;
 return (status < 0) ? status : 0;
}
