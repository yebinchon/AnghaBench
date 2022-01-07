
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct checkdiff_t {long lineno; } ;



__attribute__((used)) static void checkdiff_consume_hunk(void *priv,
       long ob, long on, long nb, long nn,
       const char *func, long funclen)

{
 struct checkdiff_t *data = priv;
 data->lineno = nb - 1;
}
