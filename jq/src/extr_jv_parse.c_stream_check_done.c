
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {scalar_t__ stacklen; void* output; void* next; void* path; } ;
typedef void* jv ;


 void* JV_ARRAY (void*,void*) ;
 int jv_array_length (void*) ;
 void* jv_array_slice (void*,int ,int) ;
 void* jv_copy (void*) ;
 void* jv_invalid () ;
 scalar_t__ jv_is_valid (void*) ;

__attribute__((used)) static int stream_check_done(struct jv_parser* p, jv* out) {
  if (p->stacklen == 0 && jv_is_valid(p->next)) {
    *out = JV_ARRAY(jv_copy(p->path),p->next);
    p->next = jv_invalid();
    return 1;
  } else if (jv_is_valid(p->output)) {
    if (jv_array_length(jv_copy(p->output)) > 2) {


      *out = jv_array_slice(jv_copy(p->output), 0, 2);
      p->output = jv_array_slice(p->output, 0, 1);
    } else {

      *out = p->output;
      p->output = jv_invalid();
    }
    return 1;
  } else {
    return 0;
  }
}
