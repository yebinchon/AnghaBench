
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ARRAY_SIZE (int ) ;
 int line_get_config (char*,int ,int ,char*,int,char**) ;
 int serial_lines ;

__attribute__((used)) static int ssl_get_config(char *dev, char *str, int size, char **error_out)
{
 return line_get_config(dev, serial_lines, ARRAY_SIZE(serial_lines), str,
          size, error_out);
}
