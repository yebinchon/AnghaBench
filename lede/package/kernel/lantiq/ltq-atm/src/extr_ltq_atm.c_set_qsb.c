
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_8__ ;
typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_15__ {int taus; unsigned int ts; } ;
struct TYPE_10__ {int member_0; } ;
union qsb_queue_vbr_parameter_table {int dword; TYPE_7__ bit; TYPE_2__ member_0; } ;
struct TYPE_14__ {unsigned int tp; unsigned int wfqf; int vbr; } ;
struct TYPE_9__ {int member_0; } ;
union qsb_queue_parameter_table {int dword; TYPE_6__ bit; TYPE_1__ member_0; } ;
struct clk {int dummy; } ;
struct atm_vcc {int atm_options; } ;
struct TYPE_13__ {unsigned int max_pcr; int traffic_class; unsigned int min_pcr; unsigned int scr; int mbs; } ;
struct atm_qos {TYPE_5__ txtp; } ;
struct TYPE_16__ {TYPE_4__* port; TYPE_3__* conn; } ;
struct TYPE_12__ {int tx_max_cell_rate; } ;
struct TYPE_11__ {int port; } ;


 int ATM_ATMOPT_CLP ;





 unsigned int FIRST_QSB_QID ;
 unsigned int QSB_GCR_MIN ;
 int QSB_QPT_SET_MASK ;
 int QSB_QVPT_SET_MASK ;
 int* QSB_RAMAC ;
 int QSB_RAMAC_LH_LOW ;
 int QSB_RAMAC_LH_SET (int ) ;
 int QSB_RAMAC_RW_SET (int ) ;
 int QSB_RAMAC_RW_WRITE ;
 int QSB_RAMAC_TESEL_SET (unsigned int) ;
 int QSB_RAMAC_TSEL_QPT ;
 int QSB_RAMAC_TSEL_SET (int ) ;
 int QSB_RAMAC_TSEL_VBR ;
 int * QSB_RTD ;
 int QSB_RTD_TTV_SET (int ) ;
 int * QSB_RTM ;
 int QSB_RTM_DM_SET (int ) ;
 unsigned int QSB_TAUS_MAX ;
 unsigned int QSB_TP_TS_MAX ;
 unsigned int QSB_WFQ_NONUBR_MAX ;
 unsigned int QSB_WFQ_UBR_BYPASS ;
 struct clk* clk_get_fpi () ;
 unsigned int clk_get_rate (struct clk*) ;
 TYPE_8__ g_atm_priv_data ;
 unsigned int qsb_tstep ;

__attribute__((used)) static void set_qsb(struct atm_vcc *vcc, struct atm_qos *qos, unsigned int queue)
{
 struct clk *fpi_clk = clk_get_fpi();
 unsigned int qsb_clk = clk_get_rate(fpi_clk);
 unsigned int qsb_qid = queue + FIRST_QSB_QID;
 union qsb_queue_parameter_table qsb_queue_parameter_table = {{0}};
 union qsb_queue_vbr_parameter_table qsb_queue_vbr_parameter_table = {{0}};
 unsigned int tmp;





 if ( qos->txtp.max_pcr == 0 )
  qsb_queue_parameter_table.bit.tp = 0;
 else {

  tmp = ((qsb_clk * qsb_tstep) >> 5) / qos->txtp.max_pcr + 1;

  qsb_queue_parameter_table.bit.tp = tmp > QSB_TP_TS_MAX ? QSB_TP_TS_MAX : tmp;
 }
 if ( qos->txtp.traffic_class == 131 && qsb_queue_parameter_table.bit.tp == 0 ) {
  int port = g_atm_priv_data.conn[queue].port;
  unsigned int max_pcr = g_atm_priv_data.port[port].tx_max_cell_rate + 1000;

  tmp = ((qsb_clk * qsb_tstep) >> 5) / max_pcr + 1;
  if ( tmp > QSB_TP_TS_MAX )
   tmp = QSB_TP_TS_MAX;
  else if ( tmp < 1 )
   tmp = 1;
  qsb_queue_parameter_table.bit.tp = tmp;
 }





 switch ( qos->txtp.traffic_class ) {
 case 132:
 case 128:

  qsb_queue_parameter_table.bit.wfqf = 0;
  break;
 case 129:
 case 130:



  if ( qos->txtp.min_pcr == 0 )
   qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_NONUBR_MAX;
  else {
   tmp = QSB_GCR_MIN * QSB_WFQ_NONUBR_MAX / qos->txtp.min_pcr;
   if ( tmp == 0 )
    qsb_queue_parameter_table.bit.wfqf = 1;
   else if ( tmp > QSB_WFQ_NONUBR_MAX )
    qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_NONUBR_MAX;
   else
    qsb_queue_parameter_table.bit.wfqf = tmp;
  }
  break;
 default:
 case 131:
  qsb_queue_parameter_table.bit.wfqf = QSB_WFQ_UBR_BYPASS;
 }




 if ( qos->txtp.traffic_class == 128 || qos->txtp.traffic_class == 129 ) {




   qsb_queue_vbr_parameter_table.bit.taus = 0;
   qsb_queue_vbr_parameter_table.bit.ts = 0;
 } else {
  qsb_queue_vbr_parameter_table.bit.taus = 0;
  qsb_queue_vbr_parameter_table.bit.ts = 0;
 }


 *QSB_RTM = QSB_RTM_DM_SET(QSB_QPT_SET_MASK);
 *QSB_RTD = QSB_RTD_TTV_SET(qsb_queue_parameter_table.dword);
 *QSB_RAMAC = QSB_RAMAC_RW_SET(QSB_RAMAC_RW_WRITE) | QSB_RAMAC_TSEL_SET(QSB_RAMAC_TSEL_QPT) | QSB_RAMAC_LH_SET(QSB_RAMAC_LH_LOW) | QSB_RAMAC_TESEL_SET(qsb_qid);

 *QSB_RTM = QSB_RTM_DM_SET(QSB_QVPT_SET_MASK);
 *QSB_RTD = QSB_RTD_TTV_SET(qsb_queue_vbr_parameter_table.dword);
 *QSB_RAMAC = QSB_RAMAC_RW_SET(QSB_RAMAC_RW_WRITE) | QSB_RAMAC_TSEL_SET(QSB_RAMAC_TSEL_VBR) | QSB_RAMAC_LH_SET(QSB_RAMAC_LH_LOW) | QSB_RAMAC_TESEL_SET(qsb_qid);

}
