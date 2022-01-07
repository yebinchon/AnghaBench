
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diffstat_t {int nr; struct diffstat_file** files; } ;
struct diffstat_file {int deleted; int added; } ;



__attribute__((used)) static void diffstat_consume(void *priv, char *line, unsigned long len)
{
 struct diffstat_t *diffstat = priv;
 struct diffstat_file *x = diffstat->files[diffstat->nr - 1];

 if (line[0] == '+')
  x->added++;
 else if (line[0] == '-')
  x->deleted++;
}
