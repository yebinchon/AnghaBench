
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct unwind_state {unsigned long* bp; } ;


 unsigned long* last_aligned_frame (struct unwind_state*) ;
 unsigned long* last_frame (struct unwind_state*) ;

__attribute__((used)) static bool is_last_aligned_frame(struct unwind_state *state)
{
 unsigned long *last_bp = last_frame(state);
 unsigned long *aligned_bp = last_aligned_frame(state);
 return (state->bp == aligned_bp && *(aligned_bp + 1) == *(last_bp + 1));
}
