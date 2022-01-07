
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int die (char*,char const*) ;
 scalar_t__ write_in_full (int,unsigned char const*,int ) ;

__attribute__((used)) static void write_to_child(int out, const unsigned char *buf, ssize_t len, const char *prog_name)
{
 if (write_in_full(out, buf, len) < 0)
  die("unable to write to '%s'", prog_name);
}
