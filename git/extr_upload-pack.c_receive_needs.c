
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int timestamp_t ;
struct string_list {int dummy; } ;
struct packet_writer {int dummy; } ;
struct packet_reader {int line; } ;
struct object_id {int dummy; } ;
struct object_array {scalar_t__ nr; } ;
struct object {int flags; } ;


 int ALLOW_ANY_SHA1 ;
 int DEFAULT_PACKET_MAX ;
 int LARGE_PACKET_MAX ;
 struct object_array OBJECT_ARRAY_INIT ;
 scalar_t__ PACKET_READ_NORMAL ;
 struct string_list STRING_LIST_INIT_DUP ;
 int WANTED ;
 int add_object_array (struct object*,int *,struct object_array*) ;
 scalar_t__ allow_filter ;
 int allow_unadvertised_object_request ;
 int check_non_tip (struct object_array*,struct packet_writer*) ;
 scalar_t__ daemon_mode ;
 int die (char*,...) ;
 int filter_capability_requested ;
 int filter_options ;
 scalar_t__ is_our_ref (struct object*) ;
 int list_objects_filter_die_if_populated (int *) ;
 int multi_ack ;
 int no_done ;
 int no_progress ;
 int object_array_clear (struct object_array*) ;
 int oid_to_hex (struct object_id*) ;
 int packet_flush (int) ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 int packet_writer_error (struct packet_writer*,char*,int ) ;
 int packet_writer_init (struct packet_writer*,int) ;
 scalar_t__ parse_feature_request (char const*,char*) ;
 int parse_list_objects_filter (int *,char const*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ parse_oid_hex (char const*,struct object_id*,char const**) ;
 scalar_t__ process_deepen (int ,int*) ;
 scalar_t__ process_deepen_not (int ,struct string_list*,int*) ;
 scalar_t__ process_deepen_since (int ,int *,int*) ;
 scalar_t__ process_shallow (int ,struct object_array*) ;
 int reset_timeout () ;
 scalar_t__ send_shallow_list (struct packet_writer*,int,int,int ,struct string_list*,int,struct object_array*,struct object_array*) ;
 scalar_t__ shallow_nr ;
 scalar_t__ skip_prefix (int ,char*,char const**) ;
 int the_repository ;
 int use_include_tag ;
 int use_ofs_delta ;
 int use_sideband ;
 int use_thin_pack ;

__attribute__((used)) static void receive_needs(struct packet_reader *reader, struct object_array *want_obj)
{
 struct object_array shallows = OBJECT_ARRAY_INIT;
 struct string_list deepen_not = STRING_LIST_INIT_DUP;
 int depth = 0;
 int has_non_tip = 0;
 timestamp_t deepen_since = 0;
 int deepen_rev_list = 0;
 int deepen_relative = 0;
 struct packet_writer writer;

 shallow_nr = 0;
 packet_writer_init(&writer, 1);
 for (;;) {
  struct object *o;
  const char *features;
  struct object_id oid_buf;
  const char *arg;

  reset_timeout();
  if (packet_reader_read(reader) != PACKET_READ_NORMAL)
   break;

  if (process_shallow(reader->line, &shallows))
   continue;
  if (process_deepen(reader->line, &depth))
   continue;
  if (process_deepen_since(reader->line, &deepen_since, &deepen_rev_list))
   continue;
  if (process_deepen_not(reader->line, &deepen_not, &deepen_rev_list))
   continue;

  if (skip_prefix(reader->line, "filter ", &arg)) {
   if (!filter_capability_requested)
    die("git upload-pack: filtering capability not negotiated");
   list_objects_filter_die_if_populated(&filter_options);
   parse_list_objects_filter(&filter_options, arg);
   continue;
  }

  if (!skip_prefix(reader->line, "want ", &arg) ||
      parse_oid_hex(arg, &oid_buf, &features))
   die("git upload-pack: protocol error, "
       "expected to get object ID, not '%s'", reader->line);

  if (parse_feature_request(features, "deepen-relative"))
   deepen_relative = 1;
  if (parse_feature_request(features, "multi_ack_detailed"))
   multi_ack = 2;
  else if (parse_feature_request(features, "multi_ack"))
   multi_ack = 1;
  if (parse_feature_request(features, "no-done"))
   no_done = 1;
  if (parse_feature_request(features, "thin-pack"))
   use_thin_pack = 1;
  if (parse_feature_request(features, "ofs-delta"))
   use_ofs_delta = 1;
  if (parse_feature_request(features, "side-band-64k"))
   use_sideband = LARGE_PACKET_MAX;
  else if (parse_feature_request(features, "side-band"))
   use_sideband = DEFAULT_PACKET_MAX;
  if (parse_feature_request(features, "no-progress"))
   no_progress = 1;
  if (parse_feature_request(features, "include-tag"))
   use_include_tag = 1;
  if (allow_filter && parse_feature_request(features, "filter"))
   filter_capability_requested = 1;

  o = parse_object(the_repository, &oid_buf);
  if (!o) {
   packet_writer_error(&writer,
         "upload-pack: not our ref %s",
         oid_to_hex(&oid_buf));
   die("git upload-pack: not our ref %s",
       oid_to_hex(&oid_buf));
  }
  if (!(o->flags & WANTED)) {
   o->flags |= WANTED;
   if (!((allow_unadvertised_object_request & ALLOW_ANY_SHA1) == ALLOW_ANY_SHA1
         || is_our_ref(o)))
    has_non_tip = 1;
   add_object_array(o, ((void*)0), want_obj);
  }
 }
 if (has_non_tip)
  check_non_tip(want_obj, &writer);

 if (!use_sideband && daemon_mode)
  no_progress = 1;

 if (depth == 0 && !deepen_rev_list && shallows.nr == 0)
  return;

 if (send_shallow_list(&writer, depth, deepen_rev_list, deepen_since,
         &deepen_not, deepen_relative, &shallows,
         want_obj))
  packet_flush(1);
 object_array_clear(&shallows);
}
