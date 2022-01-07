
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct packed_git {int pack_name; } ;


 int BUG (char*) ;
 int strip_suffix (int ,char*,size_t*) ;
 char* xstrfmt (char*,int,int ) ;

__attribute__((used)) static char *pack_bitmap_filename(struct packed_git *p)
{
 size_t len;

 if (!strip_suffix(p->pack_name, ".pack", &len))
  BUG("pack_name does not end in .pack");
 return xstrfmt("%.*s.bitmap", (int)len, p->pack_name);
}
