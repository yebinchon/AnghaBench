
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xml_ctx {int cdata; } ;
typedef int XML_Char ;


 int free (int ) ;
 int xmemdupz (int const*,int) ;

__attribute__((used)) static void
xml_cdata(void *userData, const XML_Char *s, int len)
{
 struct xml_ctx *ctx = (struct xml_ctx *)userData;
 free(ctx->cdata);
 ctx->cdata = xmemdupz(s, len);
}
