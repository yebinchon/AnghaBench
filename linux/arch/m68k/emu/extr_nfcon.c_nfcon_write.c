
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct console {int dummy; } ;


 int nfputs (char const*,unsigned int) ;

__attribute__((used)) static void nfcon_write(struct console *con, const char *str,
   unsigned int count)
{
 nfputs(str, count);
}
