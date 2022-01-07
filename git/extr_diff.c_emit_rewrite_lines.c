
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct emit_callback {int opt; int lno_in_postimage; int lno_in_preimage; } ;


 int DIFF_SYMBOL_NO_LF_EOF ;
 int emit_add_line (struct emit_callback*,char const*,int) ;
 int emit_del_line (struct emit_callback*,char const*,int) ;
 int emit_diff_symbol (int ,int ,int *,int ,int ) ;
 char* memchr (char const*,char,int) ;

__attribute__((used)) static void emit_rewrite_lines(struct emit_callback *ecb,
          int prefix, const char *data, int size)
{
 const char *endp = ((void*)0);

 while (0 < size) {
  int len;

  endp = memchr(data, '\n', size);
  len = endp ? (endp - data + 1) : size;
  if (prefix != '+') {
   ecb->lno_in_preimage++;
   emit_del_line(ecb, data, len);
  } else {
   ecb->lno_in_postimage++;
   emit_add_line(ecb, data, len);
  }
  size -= len;
  data += len;
 }
 if (!endp)
  emit_diff_symbol(ecb->opt, DIFF_SYMBOL_NO_LF_EOF, ((void*)0), 0, 0);
}
