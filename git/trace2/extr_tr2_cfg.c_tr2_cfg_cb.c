
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tr2_cfg_data {int line; int file; } ;
struct strbuf {int buf; } ;


 int WM_CASEFOLD ;
 int WM_MATCH ;
 struct strbuf** tr2_cfg_patterns ;
 int trace2_def_param_fl (int ,int ,char const*,char const*) ;
 int wildmatch (int ,char const*,int ) ;

__attribute__((used)) static int tr2_cfg_cb(const char *key, const char *value, void *d)
{
 struct strbuf **s;
 struct tr2_cfg_data *data = (struct tr2_cfg_data *)d;

 for (s = tr2_cfg_patterns; *s; s++) {
  struct strbuf *buf = *s;
  int wm = wildmatch(buf->buf, key, WM_CASEFOLD);
  if (wm == WM_MATCH) {
   trace2_def_param_fl(data->file, data->line, key, value);
   return 0;
  }
 }

 return 0;
}
