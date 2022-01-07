
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct promisor_remote {int partial_clone_filter; } ;
struct list_objects_filter_options {int filter_spec; } ;


 struct strbuf STRBUF_INIT ;
 int gently_parse_list_objects_filter (struct list_objects_filter_options*,int ,struct strbuf*) ;
 struct promisor_remote* promisor_remote_find (char const*) ;
 int strbuf_release (struct strbuf*) ;
 int string_list_append (int *,int ) ;

void partial_clone_get_default_filter_spec(
 struct list_objects_filter_options *filter_options,
 const char *remote)
{
 struct promisor_remote *promisor = promisor_remote_find(remote);
 struct strbuf errbuf = STRBUF_INIT;




 if (!promisor)
  return;

 string_list_append(&filter_options->filter_spec,
      promisor->partial_clone_filter);
 gently_parse_list_objects_filter(filter_options,
      promisor->partial_clone_filter,
      &errbuf);
 strbuf_release(&errbuf);
}
