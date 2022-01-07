
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ nasid_t ;
typedef int lboard_t ;
typedef int klxbow_t ;


 int ENODEV ;
 int HUB_WIDGET_ID_MAX ;
 int HUB_WIDGET_ID_MIN ;
 int KLSTRUCT_XBOW ;
 int KLTYPE_MIDPLANE8 ;
 scalar_t__ KL_CONFIG_INFO (scalar_t__) ;
 scalar_t__ XBOW_PORT_IS_ENABLED (int *,unsigned int) ;
 scalar_t__ XBOW_PORT_NASID (int *,unsigned int) ;
 int XBOW_PORT_TYPE_HUB (int *,unsigned int) ;
 scalar_t__ XBOW_PORT_TYPE_IO (int *,unsigned int) ;
 scalar_t__ find_component (int *,int *,int ) ;
 int * find_lboard (int *,int ) ;
 int probe_one_port (scalar_t__,unsigned int,unsigned int) ;

__attribute__((used)) static int xbow_probe(nasid_t nasid)
{
 lboard_t *brd;
 klxbow_t *xbow_p;
 unsigned masterwid, i;





 brd = find_lboard((lboard_t *)KL_CONFIG_INFO(nasid), KLTYPE_MIDPLANE8);
 if (!brd)
  return -ENODEV;

 xbow_p = (klxbow_t *)find_component(brd, ((void*)0), KLSTRUCT_XBOW);
 if (!xbow_p)
  return -ENODEV;
 i = HUB_WIDGET_ID_MIN - 1;
 do {
  i++;
 } while ((!XBOW_PORT_TYPE_HUB(xbow_p, i)) ||
   (!XBOW_PORT_IS_ENABLED(xbow_p, i)));


 masterwid = i;
 if (nasid != XBOW_PORT_NASID(xbow_p, i))
  return 1;

 for (i = HUB_WIDGET_ID_MIN; i <= HUB_WIDGET_ID_MAX; i++) {
  if (XBOW_PORT_IS_ENABLED(xbow_p, i) &&
      XBOW_PORT_TYPE_IO(xbow_p, i))
   probe_one_port(nasid, i, masterwid);
 }

 return 0;
}
