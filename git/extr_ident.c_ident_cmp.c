
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ident_split {int name_end; int name_begin; int mail_end; int mail_begin; } ;


 int buf_cmp (int ,int ,int ,int ) ;

int ident_cmp(const struct ident_split *a,
       const struct ident_split *b)
{
 int cmp;

 cmp = buf_cmp(a->mail_begin, a->mail_end,
        b->mail_begin, b->mail_end);
 if (cmp)
  return cmp;

 return buf_cmp(a->name_begin, a->name_end,
         b->name_begin, b->name_end);
}
