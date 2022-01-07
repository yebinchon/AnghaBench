
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int line_get_config (char*,int ,int ,char*,int,char**) ;
 int vts ;

__attribute__((used)) static int con_get_config(char *dev, char *str, int size, char **error_out)
{
 return line_get_config(dev, vts, ARRAY_SIZE(vts), str, size, error_out);
}
