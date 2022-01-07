
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chan {int dummy; } ;


 int CONFIG_CHUNK (char*,int,int,char*,int) ;
 int one_chan_config_string (struct chan*,char*,int,char**) ;

__attribute__((used)) static int chan_pair_config_string(struct chan *in, struct chan *out,
       char *str, int size, char **error_out)
{
 int n;

 n = one_chan_config_string(in, str, size, error_out);
 str += n;
 size -= n;

 if (in == out) {
  CONFIG_CHUNK(str, size, n, "", 1);
  return n;
 }

 CONFIG_CHUNK(str, size, n, ",", 1);
 n = one_chan_config_string(out, str, size, error_out);
 str += n;
 size -= n;
 CONFIG_CHUNK(str, size, n, "", 1);

 return n;
}
