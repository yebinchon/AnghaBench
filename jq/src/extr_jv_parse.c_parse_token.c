
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jv_parser {int stackpos; void** stack; void* next; } ;
typedef char* pfunc ;


 int JV_KIND_ARRAY ;
 int JV_KIND_OBJECT ;
 int JV_KIND_STRING ;
 int MAX_PARSING_DEPTH ;
 int assert (int) ;
 void* jv_array () ;
 void* jv_array_append (void*,void*) ;
 int jv_array_length (int ) ;
 int jv_copy (void*) ;
 int jv_free (void*) ;
 int jv_get_kind (void*) ;
 void* jv_invalid () ;
 int jv_is_valid (void*) ;
 void* jv_object () ;
 int jv_object_length (int ) ;
 void* jv_object_set (void*,void*,void*) ;
 int push (struct jv_parser*,void*) ;

__attribute__((used)) static pfunc parse_token(struct jv_parser* p, char ch) {
  switch (ch) {
  case '[':
    if (p->stackpos >= MAX_PARSING_DEPTH) return "Exceeds depth limit for parsing";
    if (jv_is_valid(p->next)) return "Expected separator between values";
    push(p, jv_array());
    break;

  case '{':
    if (p->stackpos >= MAX_PARSING_DEPTH) return "Exceeds depth limit for parsing";
    if (jv_is_valid(p->next)) return "Expected separator between values";
    push(p, jv_object());
    break;

  case ':':
    if (!jv_is_valid(p->next))
      return "Expected string key before ':'";
    if (p->stackpos == 0 || jv_get_kind(p->stack[p->stackpos-1]) != JV_KIND_OBJECT)
      return "':' not as part of an object";
    if (jv_get_kind(p->next) != JV_KIND_STRING)
      return "Object keys must be strings";
    push(p, p->next);
    p->next = jv_invalid();
    break;

  case ',':
    if (!jv_is_valid(p->next))
      return "Expected value before ','";
    if (p->stackpos == 0)
      return "',' not as part of an object or array";
    if (jv_get_kind(p->stack[p->stackpos-1]) == JV_KIND_ARRAY) {
      p->stack[p->stackpos-1] = jv_array_append(p->stack[p->stackpos-1], p->next);
      p->next = jv_invalid();
    } else if (jv_get_kind(p->stack[p->stackpos-1]) == JV_KIND_STRING) {
      assert(p->stackpos > 1 && jv_get_kind(p->stack[p->stackpos-2]) == JV_KIND_OBJECT);
      p->stack[p->stackpos-2] = jv_object_set(p->stack[p->stackpos-2],
                                              p->stack[p->stackpos-1], p->next);
      p->stackpos--;
      p->next = jv_invalid();
    } else {

      return "Objects must consist of key:value pairs";
    }
    break;

  case ']':
    if (p->stackpos == 0 || jv_get_kind(p->stack[p->stackpos-1]) != JV_KIND_ARRAY)
      return "Unmatched ']'";
    if (jv_is_valid(p->next)) {
      p->stack[p->stackpos-1] = jv_array_append(p->stack[p->stackpos-1], p->next);
      p->next = jv_invalid();
    } else {
      if (jv_array_length(jv_copy(p->stack[p->stackpos-1])) != 0) {

        return "Expected another array element";
      }
    }
    jv_free(p->next);
    p->next = p->stack[--p->stackpos];
    break;

  case '}':
    if (p->stackpos == 0)
      return "Unmatched '}'";
    if (jv_is_valid(p->next)) {
      if (jv_get_kind(p->stack[p->stackpos-1]) != JV_KIND_STRING)
        return "Objects must consist of key:value pairs";
      assert(p->stackpos > 1 && jv_get_kind(p->stack[p->stackpos-2]) == JV_KIND_OBJECT);
      p->stack[p->stackpos-2] = jv_object_set(p->stack[p->stackpos-2],
                                              p->stack[p->stackpos-1], p->next);
      p->stackpos--;
      p->next = jv_invalid();
    } else {
      if (jv_get_kind(p->stack[p->stackpos-1]) != JV_KIND_OBJECT)
        return "Unmatched '}'";
      if (jv_object_length(jv_copy(p->stack[p->stackpos-1])) != 0)
        return "Expected another key-value pair";
    }
    jv_free(p->next);
    p->next = p->stack[--p->stackpos];
    break;
  }
  return 0;
}
