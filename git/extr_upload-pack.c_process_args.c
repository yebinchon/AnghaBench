
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int use_sideband; } ;
struct upload_pack_data {int done; int deepen_relative; TYPE_1__ writer; int deepen_rev_list; int deepen_not; int deepen_since; int depth; int shallows; int haves; int wanted_refs; } ;
struct packet_reader {char* line; } ;
struct object_array {int dummy; } ;


 scalar_t__ PACKET_READ_FLUSH ;
 scalar_t__ allow_filter ;
 scalar_t__ allow_ref_in_want ;
 scalar_t__ allow_sideband_all ;
 int die (char*,char const*) ;
 int filter_options ;
 scalar_t__ git_env_bool (char*,int ) ;
 int list_objects_filter_die_if_populated (int *) ;
 int no_progress ;
 scalar_t__ packet_reader_read (struct packet_reader*) ;
 scalar_t__ parse_have (char const*,int *) ;
 int parse_list_objects_filter (int *,char const*) ;
 scalar_t__ parse_want (TYPE_1__*,char const*,struct object_array*) ;
 scalar_t__ parse_want_ref (TYPE_1__*,char const*,int *,struct object_array*) ;
 scalar_t__ process_deepen (char const*,int *) ;
 scalar_t__ process_deepen_not (char const*,int *,int *) ;
 scalar_t__ process_deepen_since (char const*,int *,int *) ;
 scalar_t__ process_shallow (char const*,int *) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char*) ;
 int use_include_tag ;
 int use_ofs_delta ;
 int use_thin_pack ;

__attribute__((used)) static void process_args(struct packet_reader *request,
    struct upload_pack_data *data,
    struct object_array *want_obj)
{
 while (packet_reader_read(request) != PACKET_READ_FLUSH) {
  const char *arg = request->line;
  const char *p;


  if (parse_want(&data->writer, arg, want_obj))
   continue;
  if (allow_ref_in_want &&
      parse_want_ref(&data->writer, arg, &data->wanted_refs,
       want_obj))
   continue;

  if (parse_have(arg, &data->haves))
   continue;


  if (!strcmp(arg, "thin-pack")) {
   use_thin_pack = 1;
   continue;
  }
  if (!strcmp(arg, "ofs-delta")) {
   use_ofs_delta = 1;
   continue;
  }
  if (!strcmp(arg, "no-progress")) {
   no_progress = 1;
   continue;
  }
  if (!strcmp(arg, "include-tag")) {
   use_include_tag = 1;
   continue;
  }
  if (!strcmp(arg, "done")) {
   data->done = 1;
   continue;
  }


  if (process_shallow(arg, &data->shallows))
   continue;
  if (process_deepen(arg, &data->depth))
   continue;
  if (process_deepen_since(arg, &data->deepen_since,
      &data->deepen_rev_list))
   continue;
  if (process_deepen_not(arg, &data->deepen_not,
           &data->deepen_rev_list))
   continue;
  if (!strcmp(arg, "deepen-relative")) {
   data->deepen_relative = 1;
   continue;
  }

  if (allow_filter && skip_prefix(arg, "filter ", &p)) {
   list_objects_filter_die_if_populated(&filter_options);
   parse_list_objects_filter(&filter_options, p);
   continue;
  }

  if ((git_env_bool("GIT_TEST_SIDEBAND_ALL", 0) ||
       allow_sideband_all) &&
      !strcmp(arg, "sideband-all")) {
   data->writer.use_sideband = 1;
   continue;
  }


  die("unexpected line: '%s'", arg);
 }
}
