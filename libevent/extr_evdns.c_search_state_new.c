
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct search_state {int refcount; int ndots; } ;


 int memset (struct search_state*,int ,int) ;
 scalar_t__ mm_malloc (int) ;

__attribute__((used)) static struct search_state *
search_state_new(void) {
 struct search_state *state = (struct search_state *) mm_malloc(sizeof(struct search_state));
 if (!state) return ((void*)0);
 memset(state, 0, sizeof(struct search_state));
 state->refcount = 1;
 state->ndots = 1;

 return state;
}
