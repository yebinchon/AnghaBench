
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct TYPE_3__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
struct TYPE_4__ {int buf; } ;


 int cat_blob (struct object_entry*,struct object_id*) ;
 TYPE_2__ command_buf ;
 int die (char*,int ) ;
 struct object_entry* find_mark (int ) ;
 struct object_entry* find_object (struct object_id*) ;
 int oidcpy (struct object_id*,int *) ;
 int parse_mark_ref_eol (char const*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;

__attribute__((used)) static void parse_cat_blob(const char *p)
{
 struct object_entry *oe;
 struct object_id oid;


 if (*p == ':') {
  oe = find_mark(parse_mark_ref_eol(p));
  if (!oe)
   die("Unknown mark: %s", command_buf.buf);
  oidcpy(&oid, &oe->idx.oid);
 } else {
  if (parse_oid_hex(p, &oid, &p))
   die("Invalid dataref: %s", command_buf.buf);
  if (*p)
   die("Garbage after SHA1: %s", command_buf.buf);
  oe = find_object(&oid);
 }

 cat_blob(oe, &oid);
}
