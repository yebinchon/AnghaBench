
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* str; TYPE_2__** child; } ;
struct TYPE_5__ {char* key; scalar_t__ type; TYPE_1__ v; scalar_t__ n; } ;
typedef TYPE_2__ kson_node_t ;


 scalar_t__ KSON_TYPE_BRACE ;
 scalar_t__ KSON_TYPE_BRACKET ;
 scalar_t__ KSON_TYPE_NO_QUOTE ;
 scalar_t__ KSON_TYPE_SGL_QUOTE ;
 int fputs (char*,int ) ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int stdout ;

void kson_format_recur(const kson_node_t *p, int depth)
{
 long i;
 if (p->key) printf("\"%s\":", p->key);
 if (p->type == KSON_TYPE_BRACKET || p->type == KSON_TYPE_BRACE) {
  putchar(p->type == KSON_TYPE_BRACKET? '[' : '{');
  if (p->n) {
   putchar('\n'); for (i = 0; i <= depth; ++i) fputs("  ", stdout);
   for (i = 0; i < (long)p->n; ++i) {
    if (i) {
     int i;
     putchar(',');
     putchar('\n'); for (i = 0; i <= depth; ++i) fputs("  ", stdout);
    }
    kson_format_recur(p->v.child[i], depth + 1);
   }
   putchar('\n'); for (i = 0; i < depth; ++i) fputs("  ", stdout);
  }
  putchar(p->type == KSON_TYPE_BRACKET? ']' : '}');
 } else {
  if (p->type != KSON_TYPE_NO_QUOTE)
   putchar(p->type == KSON_TYPE_SGL_QUOTE? '\'' : '"');
  fputs(p->v.str, stdout);
  if (p->type != KSON_TYPE_NO_QUOTE)
   putchar(p->type == KSON_TYPE_SGL_QUOTE? '\'' : '"');
 }
}
