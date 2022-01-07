
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int git_config ;
struct TYPE_5__ {int ptr; } ;
typedef TYPE_1__ git_buf ;


 int git_buf_clear (TYPE_1__*) ;
 int git_buf_printf (TYPE_1__*,char*,char const*,char const*) ;
 int git_config_get_string (char const**,int *,int ) ;

__attribute__((used)) static int get_value(const char **out, git_config *cfg, git_buf *buf, const char *name, const char *field)
{
 int error;

 git_buf_clear(buf);

 if ((error = git_buf_printf(buf, "submodule.%s.%s", name, field)) < 0 ||
     (error = git_config_get_string(out, cfg, buf->ptr)) < 0)
  return error;

 return error;
}
