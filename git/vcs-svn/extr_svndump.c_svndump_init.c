
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int REPORT_FILENO ;
 scalar_t__ buffer_init (int *,char const*) ;
 int error_errno (char*,char const*) ;
 int init (int ) ;
 int input ;

int svndump_init(const char *filename)
{
 if (buffer_init(&input, filename))
  return error_errno("cannot open %s", filename ? filename : "NULL");
 init(REPORT_FILENO);
 return 0;
}
