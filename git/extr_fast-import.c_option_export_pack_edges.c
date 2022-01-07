
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fclose (scalar_t__) ;
 scalar_t__ pack_edges ;
 scalar_t__ xfopen (char const*,char*) ;

__attribute__((used)) static void option_export_pack_edges(const char *edges)
{
 if (pack_edges)
  fclose(pack_edges);
 pack_edges = xfopen(edges, "a");
}
