
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atm_vcc {int vci; int vpi; int itf; } ;


 int BUFFER_SCHEME_ONE ;
 int BUFFER_SCHEME_TWO ;
 int DPRINTK (int,char*,int ,int ,int,int) ;

__attribute__((used)) static int
fore200e_select_scheme(struct atm_vcc* vcc)
{

    int scheme = vcc->vci % 2 ? BUFFER_SCHEME_ONE : BUFFER_SCHEME_TWO;

    DPRINTK(1, "VC %d.%d.%d uses buffer scheme %d\n",
     vcc->itf, vcc->vpi, vcc->vci, scheme);

    return scheme;
}
