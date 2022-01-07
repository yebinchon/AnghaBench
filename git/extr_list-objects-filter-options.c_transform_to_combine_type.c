
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_objects_filter_options {scalar_t__ choice; int sub_alloc; int sub_nr; int filter_spec; struct list_objects_filter_options* sub; } ;


 scalar_t__ LOFC_COMBINE ;
 int assert (scalar_t__) ;
 int filter_spec_append_urlencode (struct list_objects_filter_options*,int ) ;
 int list_objects_filter_spec (struct list_objects_filter_options*) ;
 int memset (struct list_objects_filter_options*,int ,int) ;
 int string_list_append (int *,int ) ;
 int string_list_clear (int *,int ) ;
 struct list_objects_filter_options* xcalloc (int const,int) ;
 int xstrdup (char*) ;

__attribute__((used)) static void transform_to_combine_type(
 struct list_objects_filter_options *filter_options)
{
 assert(filter_options->choice);
 if (filter_options->choice == LOFC_COMBINE)
  return;
 {
  const int initial_sub_alloc = 2;
  struct list_objects_filter_options *sub_array =
   xcalloc(initial_sub_alloc, sizeof(*sub_array));
  sub_array[0] = *filter_options;
  memset(filter_options, 0, sizeof(*filter_options));
  filter_options->sub = sub_array;
  filter_options->sub_alloc = initial_sub_alloc;
 }
 filter_options->sub_nr = 1;
 filter_options->choice = LOFC_COMBINE;
 string_list_append(&filter_options->filter_spec, xstrdup("combine:"));
 filter_spec_append_urlencode(
  filter_options,
  list_objects_filter_spec(&filter_options->sub[0]));




 string_list_clear(&filter_options->sub[0].filter_spec, 0);
}
