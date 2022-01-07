
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;
struct list_objects_filter_options {size_t sub_nr; int * sub; int sub_alloc; } ;


 int ALLOC_GROW_BY (int *,size_t,int,int ) ;
 int free (char*) ;
 scalar_t__ gently_parse_list_objects_filter (int *,char*,struct strbuf*) ;
 scalar_t__ has_reserved_character (struct strbuf*,struct strbuf*) ;
 char* url_percent_decode (int ) ;

__attribute__((used)) static int parse_combine_subfilter(
 struct list_objects_filter_options *filter_options,
 struct strbuf *subspec,
 struct strbuf *errbuf)
{
 size_t new_index = filter_options->sub_nr;
 char *decoded;
 int result;

 ALLOC_GROW_BY(filter_options->sub, filter_options->sub_nr, 1,
        filter_options->sub_alloc);

 decoded = url_percent_decode(subspec->buf);

 result = has_reserved_character(subspec, errbuf) ||
  gently_parse_list_objects_filter(
   &filter_options->sub[new_index], decoded, errbuf);

 free(decoded);
 return result;
}
