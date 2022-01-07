
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct diffgrep_cb {int hit; int regexp; } ;
typedef int regmatch_t ;


 int regexec_buf (int ,char*,unsigned long,int,int *,int ) ;

__attribute__((used)) static void diffgrep_consume(void *priv, char *line, unsigned long len)
{
 struct diffgrep_cb *data = priv;
 regmatch_t regmatch;

 if (line[0] != '+' && line[0] != '-')
  return;
 if (data->hit)




  return;
 data->hit = !regexec_buf(data->regexp, line + 1, len - 1, 1,
     &regmatch, 0);
}
