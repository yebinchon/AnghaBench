
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int stdin ;
 int ungetc (int,int ) ;

__attribute__((used)) static inline void
do_ungetc (int c)
{
  if (c != EOF)
    ungetc (c, stdin);
}
