
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int oid; } ;
struct object_entry {TYPE_1__ idx; } ;
typedef int output ;
struct TYPE_6__ {char const* buf; } ;
struct TYPE_5__ {scalar_t__ hexsz; } ;


 int GIT_MAX_HEXSZ ;
 int cat_blob_write (char*,scalar_t__) ;
 TYPE_3__ command_buf ;
 int die (char*,char const*) ;
 struct object_entry* find_mark (int ) ;
 int oid_to_hex (int *) ;
 int parse_mark_ref_eol (char const*) ;
 TYPE_2__* the_hash_algo ;
 int xsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void parse_get_mark(const char *p)
{
 struct object_entry *oe;
 char output[GIT_MAX_HEXSZ + 2];


 if (*p != ':')
  die("Not a mark: %s", p);

 oe = find_mark(parse_mark_ref_eol(p));
 if (!oe)
  die("Unknown mark: %s", command_buf.buf);

 xsnprintf(output, sizeof(output), "%s\n", oid_to_hex(&oe->idx.oid));
 cat_blob_write(output, the_hash_algo->hexsz + 1);
}
