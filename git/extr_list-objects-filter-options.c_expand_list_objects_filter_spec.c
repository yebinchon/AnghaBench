
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct list_objects_filter_options {scalar_t__ choice; int filter_spec; int blob_limit_value; } ;


 scalar_t__ LOFC_BLOB_LIMIT ;
 struct strbuf STRBUF_INIT ;
 char const* list_objects_filter_spec (struct list_objects_filter_options*) ;
 int strbuf_addf (struct strbuf*,char*,int ) ;
 int strbuf_detach (struct strbuf*,int *) ;
 int string_list_append (int *,int ) ;
 int string_list_clear (int *,int ) ;

const char *expand_list_objects_filter_spec(
 struct list_objects_filter_options *filter)
{
 if (filter->choice == LOFC_BLOB_LIMIT) {
  struct strbuf expanded_spec = STRBUF_INIT;
  strbuf_addf(&expanded_spec, "blob:limit=%lu",
       filter->blob_limit_value);
  string_list_clear(&filter->filter_spec, 0);
  string_list_append(
   &filter->filter_spec,
   strbuf_detach(&expanded_spec, ((void*)0)));
 }

 return list_objects_filter_spec(filter);
}
