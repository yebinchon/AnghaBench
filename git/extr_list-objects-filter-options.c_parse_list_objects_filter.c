
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct list_objects_filter_options {int sub_nr; struct list_objects_filter_options* sub; int sub_alloc; int filter_spec; int choice; } ;


 int ALLOC_GROW_BY (struct list_objects_filter_options*,int,int,int ) ;
 struct strbuf STRBUF_INIT ;
 int die (char*,int ) ;
 int filter_spec_append_urlencode (struct list_objects_filter_options*,char const*) ;
 int gently_parse_list_objects_filter (struct list_objects_filter_options*,char const*,struct strbuf*) ;
 int string_list_append (int *,int ) ;
 int transform_to_combine_type (struct list_objects_filter_options*) ;
 int xstrdup (char const*) ;

void parse_list_objects_filter(
 struct list_objects_filter_options *filter_options,
 const char *arg)
{
 struct strbuf errbuf = STRBUF_INIT;
 int parse_error;

 if (!filter_options->choice) {
  string_list_append(&filter_options->filter_spec, xstrdup(arg));

  parse_error = gently_parse_list_objects_filter(
   filter_options, arg, &errbuf);
 } else {




  transform_to_combine_type(filter_options);

  string_list_append(&filter_options->filter_spec, xstrdup("+"));
  filter_spec_append_urlencode(filter_options, arg);
  ALLOC_GROW_BY(filter_options->sub, filter_options->sub_nr, 1,
         filter_options->sub_alloc);

  parse_error = gently_parse_list_objects_filter(
   &filter_options->sub[filter_options->sub_nr - 1], arg,
   &errbuf);
 }
 if (parse_error)
  die("%s", errbuf.buf);
}
