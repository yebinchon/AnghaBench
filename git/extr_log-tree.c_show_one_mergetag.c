
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct tag {int tag; TYPE_5__* tagged; } ;
struct strbuf {size_t len; int buf; } ;
struct rev_info {int dummy; } ;
struct object_id {int dummy; } ;
struct commit_extra_header {size_t len; scalar_t__ value; } ;
struct commit {TYPE_4__* parents; } ;
struct TYPE_13__ {int hash; } ;
struct TYPE_12__ {TYPE_6__ oid; } ;
struct TYPE_11__ {TYPE_3__* next; } ;
struct TYPE_10__ {TYPE_2__* item; } ;
struct TYPE_8__ {int oid; } ;
struct TYPE_9__ {TYPE_1__ object; } ;


 int OBJ_TAG ;
 int hash_object_file (scalar_t__,size_t,int ,struct object_id*) ;
 scalar_t__ is_common_merge (struct commit*) ;
 struct tag* lookup_tag (int ,struct object_id*) ;
 scalar_t__ oideq (TYPE_6__*,int *) ;
 size_t parse_signature (scalar_t__,size_t) ;
 scalar_t__ parse_tag_buffer (int ,struct tag*,scalar_t__,size_t) ;
 int show_sig_lines (struct rev_info*,int,int ) ;
 int strbuf_addf (struct strbuf*,char*,int,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_init (struct strbuf*,int) ;
 int strbuf_release (struct strbuf*) ;
 int the_repository ;
 int type_name (int ) ;
 int verify_signed_buffer (scalar_t__,size_t,scalar_t__,size_t,struct strbuf*,int *) ;
 int which_parent (TYPE_6__*,struct commit*) ;

__attribute__((used)) static int show_one_mergetag(struct commit *commit,
        struct commit_extra_header *extra,
        void *data)
{
 struct rev_info *opt = (struct rev_info *)data;
 struct object_id oid;
 struct tag *tag;
 struct strbuf verify_message;
 int status, nth;
 size_t payload_size, gpg_message_offset;

 hash_object_file(extra->value, extra->len, type_name(OBJ_TAG), &oid);
 tag = lookup_tag(the_repository, &oid);
 if (!tag)
  return -1;

 strbuf_init(&verify_message, 256);
 if (parse_tag_buffer(the_repository, tag, extra->value, extra->len))
  strbuf_addstr(&verify_message, "malformed mergetag\n");
 else if (is_common_merge(commit) &&
   oideq(&tag->tagged->oid,
         &commit->parents->next->item->object.oid))
  strbuf_addf(&verify_message,
       "merged tag '%s'\n", tag->tag);
 else if ((nth = which_parent(&tag->tagged->oid, commit)) < 0)
  strbuf_addf(&verify_message, "tag %s names a non-parent %s\n",
        tag->tag, tag->tagged->oid.hash);
 else
  strbuf_addf(&verify_message,
       "parent #%d, tagged '%s'\n", nth + 1, tag->tag);
 gpg_message_offset = verify_message.len;

 payload_size = parse_signature(extra->value, extra->len);
 status = -1;
 if (extra->len > payload_size) {

  if (!verify_signed_buffer(extra->value, payload_size,
       extra->value + payload_size,
       extra->len - payload_size,
       &verify_message, ((void*)0)))
   status = 0;
  else if (verify_message.len <= gpg_message_offset)
   strbuf_addstr(&verify_message, "No signature\n");

 }

 show_sig_lines(opt, status, verify_message.buf);
 strbuf_release(&verify_message);
 return 0;
}
