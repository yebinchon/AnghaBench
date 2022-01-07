
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list {int dummy; } ;
struct similar_ref_cb {char const* base_ref; struct string_list* similar_refs; } ;


 struct string_list STRING_LIST_INIT_DUP ;
 int append_similar_ref ;
 int for_each_ref (int ,struct similar_ref_cb*) ;

__attribute__((used)) static struct string_list guess_refs(const char *ref)
{
 struct similar_ref_cb ref_cb;
 struct string_list similar_refs = STRING_LIST_INIT_DUP;

 ref_cb.base_ref = ref;
 ref_cb.similar_refs = &similar_refs;
 for_each_ref(append_similar_ref, &ref_cb);
 return similar_refs;
}
