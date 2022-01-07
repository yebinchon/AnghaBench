
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct line {struct chan* chan_out; struct chan* chan_in; } ;
struct chan {int primary; } ;


 int chan_pair_config_string (struct chan*,struct chan*,char*,int,char**) ;

int chan_config_string(struct line *line, char *str, int size,
         char **error_out)
{
 struct chan *in = line->chan_in, *out = line->chan_out;

 if (in && !in->primary)
  in = ((void*)0);
 if (out && !out->primary)
  out = ((void*)0);

 return chan_pair_config_string(in, out, str, size, error_out);
}
