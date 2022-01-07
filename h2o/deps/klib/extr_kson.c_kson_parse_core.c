
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* str; TYPE_2__** child; } ;
struct TYPE_6__ {char* key; long n; TYPE_1__ v; int type; } ;
typedef TYPE_2__ kson_node_t ;


 int KSON_ERR_EXTRA_LEFT ;
 int KSON_ERR_EXTRA_RIGHT ;
 int KSON_ERR_NO_KEY ;
 int KSON_OK ;
 int KSON_TYPE_BRACE ;
 int KSON_TYPE_BRACKET ;
 int KSON_TYPE_DBL_QUOTE ;
 int KSON_TYPE_NO_QUOTE ;
 int KSON_TYPE_SGL_QUOTE ;
 int __new_node (TYPE_2__**) ;
 int __push_back (long) ;
 int assert (int) ;
 int free (long*) ;
 scalar_t__ isspace (char const) ;
 scalar_t__ malloc (int) ;
 int strncpy (char*,char const*,int) ;

kson_node_t *kson_parse_core(const char *json, long *_n, int *error, long *parsed_len)
{
 long *stack = 0, top = 0, max = 0, n_a = 0, m_a = 0, i, j;
 kson_node_t *a = 0, *u;
 const char *p, *q;
 size_t *tmp;
 assert(sizeof(size_t) == sizeof(kson_node_t*));
 *error = KSON_OK;
 for (p = json; *p; ++p) {
  while (*p && isspace(*p)) ++p;
  if (*p == 0) break;
  if (*p == ',') {
  } else if (*p == '[' || *p == '{') {
   int t = *p == '['? -1 : -2;
   if (top < 2 || stack[top-1] != -3) {
    do { if (top == max) { max = max? max<<1 : 4; stack = (long*)realloc(stack, sizeof(long) * max); } stack[top++] = (n_a); } while (0);
    do { if (n_a == m_a) { long old_m = m_a; m_a = m_a? m_a<<1 : 4; a = (kson_node_t*)realloc(a, sizeof(kson_node_t) * m_a); memset(a + old_m, 0, sizeof(kson_node_t) * (m_a - old_m)); } *(&u) = &a[n_a++]; } while (0);
    do { if (top == max) { max = max? max<<1 : 4; stack = (long*)realloc(stack, sizeof(long) * max); } stack[top++] = (t); } while (0);
   } else stack[top-1] = t;
  } else if (*p == ']' || *p == '}') {
   long i, start, t = *p == ']'? -1 : -2;
   for (i = top - 1; i >= 0 && stack[i] != t; --i);
   if (i < 0) {
    *error = KSON_ERR_EXTRA_RIGHT;
    break;
   }
   start = i;
   u = &a[stack[start-1]];
   u->key = u->v.str;
   u->n = top - 1 - start;
   u->v.child = (kson_node_t**)malloc(u->n * sizeof(kson_node_t*));
   tmp = (size_t*)u->v.child;
   for (i = start + 1; i < top; ++i)
    tmp[i - start - 1] = stack[i];
   u->type = *p == ']'? KSON_TYPE_BRACKET : KSON_TYPE_BRACE;
   if ((top = start) == 1) break;
  } else if (*p == ':') {
   if (top == 0 || stack[top-1] == -3) {
    *error = KSON_ERR_NO_KEY;
    break;
   }
   do { if (top == max) { max = max? max<<1 : 4; stack = (long*)realloc(stack, sizeof(long) * max); } stack[top++] = (-3); } while (0);
  } else {
   int c = *p;

   if (top >= 2 && stack[top-1] == -3) {
    --top;
    u = &a[stack[top-1]];
    u->key = u->v.str;
   } else {
    do { if (top == max) { max = max? max<<1 : 4; stack = (long*)realloc(stack, sizeof(long) * max); } stack[top++] = (n_a); } while (0);
    do { if (n_a == m_a) { long old_m = m_a; m_a = m_a? m_a<<1 : 4; a = (kson_node_t*)realloc(a, sizeof(kson_node_t) * m_a); memset(a + old_m, 0, sizeof(kson_node_t) * (m_a - old_m)); } *(&u) = &a[n_a++]; } while (0);
   }

   if (c == '\'' || c == '"') {
    for (q = ++p; *q && *q != c; ++q)
     if (*q == '\\') ++q;
   } else {
    for (q = p; *q && *q != ']' && *q != '}' && *q != ',' && *q != ':' && *q != '\n'; ++q)
     if (*q == '\\') ++q;
   }
   u->v.str = (char*)malloc(q - p + 1); strncpy(u->v.str, p, q - p); u->v.str[q-p] = 0;
   u->type = c == '\''? KSON_TYPE_SGL_QUOTE : c == '"'? KSON_TYPE_DBL_QUOTE : KSON_TYPE_NO_QUOTE;
   p = c == '\'' || c == '"'? q : q - 1;
  }
 }
 while (*p && isspace(*p)) ++p;
 if (parsed_len) *parsed_len = p - json;
 if (top != 1) *error = KSON_ERR_EXTRA_LEFT;

 for (i = 0; i < n_a; ++i)
  for (j = 0, u = &a[i], tmp = (size_t*)u->v.child; j < (long)u->n; ++j)
   u->v.child[j] = &a[tmp[j]];

 free(stack);
 *_n = n_a;
 return a;
}
