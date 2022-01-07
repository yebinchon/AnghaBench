
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int forbidden (struct strbuf*,char*) ;
 int getanyfile ;

__attribute__((used)) static void select_getanyfile(struct strbuf *hdr)
{
 if (!getanyfile)
  forbidden(hdr, "Unsupported service: getanyfile");
}
