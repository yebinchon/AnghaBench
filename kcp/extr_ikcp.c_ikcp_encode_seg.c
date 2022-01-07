
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; int una; int sn; int ts; scalar_t__ wnd; scalar_t__ frg; scalar_t__ cmd; int conv; } ;
typedef int IUINT8 ;
typedef int IUINT16 ;
typedef TYPE_1__ IKCPSEG ;


 char* ikcp_encode16u (char*,int ) ;
 char* ikcp_encode32u (char*,int ) ;
 char* ikcp_encode8u (char*,int ) ;

__attribute__((used)) static char *ikcp_encode_seg(char *ptr, const IKCPSEG *seg)
{
 ptr = ikcp_encode32u(ptr, seg->conv);
 ptr = ikcp_encode8u(ptr, (IUINT8)seg->cmd);
 ptr = ikcp_encode8u(ptr, (IUINT8)seg->frg);
 ptr = ikcp_encode16u(ptr, (IUINT16)seg->wnd);
 ptr = ikcp_encode32u(ptr, seg->ts);
 ptr = ikcp_encode32u(ptr, seg->sn);
 ptr = ikcp_encode32u(ptr, seg->una);
 ptr = ikcp_encode32u(ptr, seg->len);
 return ptr;
}
