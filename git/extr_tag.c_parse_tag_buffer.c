
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int type ;
struct TYPE_3__ {int parsed; } ;
struct tag {int date; int tag; struct object* tagged; TYPE_1__ object; } ;
struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct TYPE_4__ {int hexsz; } ;


 int blob_type ;
 int commit_type ;
 int error (char*,char*) ;
 scalar_t__ lookup_blob (struct repository*,struct object_id*) ;
 scalar_t__ lookup_commit (struct repository*,struct object_id*) ;
 scalar_t__ lookup_tag (struct repository*,struct object_id*) ;
 scalar_t__ lookup_tree (struct repository*,struct object_id*) ;
 char* memchr (char const*,char,int) ;
 scalar_t__ memcmp (char*,char const*,int) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 int parse_tag_date (char const*,char const*) ;
 scalar_t__ starts_with (char const*,char*) ;
 int strcmp (char*,int ) ;
 int tag_type ;
 TYPE_2__* the_hash_algo ;
 int tree_type ;
 int xmemdupz (char const*,int) ;

int parse_tag_buffer(struct repository *r, struct tag *item, const void *data, unsigned long size)
{
 struct object_id oid;
 char type[20];
 const char *bufptr = data;
 const char *tail = bufptr + size;
 const char *nl;

 if (item->object.parsed)
  return 0;
 item->object.parsed = 1;

 if (size < the_hash_algo->hexsz + 24)
  return -1;
 if (memcmp("object ", bufptr, 7) || parse_oid_hex(bufptr + 7, &oid, &bufptr) || *bufptr++ != '\n')
  return -1;

 if (!starts_with(bufptr, "type "))
  return -1;
 bufptr += 5;
 nl = memchr(bufptr, '\n', tail - bufptr);
 if (!nl || sizeof(type) <= (nl - bufptr))
  return -1;
 memcpy(type, bufptr, nl - bufptr);
 type[nl - bufptr] = '\0';
 bufptr = nl + 1;

 if (!strcmp(type, blob_type)) {
  item->tagged = (struct object *)lookup_blob(r, &oid);
 } else if (!strcmp(type, tree_type)) {
  item->tagged = (struct object *)lookup_tree(r, &oid);
 } else if (!strcmp(type, commit_type)) {
  item->tagged = (struct object *)lookup_commit(r, &oid);
 } else if (!strcmp(type, tag_type)) {
  item->tagged = (struct object *)lookup_tag(r, &oid);
 } else {
  error("Unknown type %s", type);
  item->tagged = ((void*)0);
 }

 if (bufptr + 4 < tail && starts_with(bufptr, "tag "))
  ;
 else
  return -1;
 bufptr += 4;
 nl = memchr(bufptr, '\n', tail - bufptr);
 if (!nl)
  return -1;
 item->tag = xmemdupz(bufptr, nl - bufptr);
 bufptr = nl + 1;

 if (bufptr + 7 < tail && starts_with(bufptr, "tagger "))
  item->date = parse_tag_date(bufptr, tail);
 else
  item->date = 0;

 return 0;
}
