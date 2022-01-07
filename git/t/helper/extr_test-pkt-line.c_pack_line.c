
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int packet_delim (int) ;
 int packet_flush (int) ;
 int packet_write_fmt (int,char*,char const*) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void pack_line(const char *line)
{
 if (!strcmp(line, "0000") || !strcmp(line, "0000\n"))
  packet_flush(1);
 else if (!strcmp(line, "0001") || !strcmp(line, "0001\n"))
  packet_delim(1);
 else
  packet_write_fmt(1, "%s", line);
}
