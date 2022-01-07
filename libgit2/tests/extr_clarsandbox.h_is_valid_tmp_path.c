
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int st_mode; } ;
typedef TYPE_1__ STAT_T ;


 int S_ISDIR (int ) ;
 int W_OK ;
 scalar_t__ access (char const*,int ) ;
 scalar_t__ stat (char const*,TYPE_1__*) ;

__attribute__((used)) static int
is_valid_tmp_path(const char *path)
{
 STAT_T st;

 if (stat(path, &st) != 0)
  return 0;

 if (!S_ISDIR(st.st_mode))
  return 0;

 return (access(path, W_OK) == 0);
}
