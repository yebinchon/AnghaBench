
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u8 ;
struct search_state {struct search_domain* head; } ;
struct search_domain {int len; struct search_domain* next; } ;


 int EVUTIL_ASSERT (int ) ;
 int memcpy (char* const,char const* const,int const) ;
 scalar_t__ mm_malloc (size_t const) ;
 size_t strlen (char const* const) ;

__attribute__((used)) static char *
search_make_new(const struct search_state *const state, int n, const char *const base_name) {
 const size_t base_len = strlen(base_name);
 char need_to_append_dot;
 struct search_domain *dom;

 if (!base_len) return ((void*)0);
 need_to_append_dot = base_name[base_len - 1] == '.' ? 0 : 1;

 for (dom = state->head; dom; dom = dom->next) {
  if (!n--) {


   const u8 *const postfix = ((u8 *) dom) + sizeof(struct search_domain);
   const int postfix_len = dom->len;
   char *const newname = (char *) mm_malloc(base_len + need_to_append_dot + postfix_len + 1);
   if (!newname) return ((void*)0);
   memcpy(newname, base_name, base_len);
   if (need_to_append_dot) newname[base_len] = '.';
   memcpy(newname + base_len + need_to_append_dot, postfix, postfix_len);
   newname[base_len + need_to_append_dot + postfix_len] = 0;
   return newname;
  }
 }


 EVUTIL_ASSERT(0);
 return ((void*)0);
}
