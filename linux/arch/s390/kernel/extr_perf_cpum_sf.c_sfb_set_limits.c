
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hws_qsi_info_block {int bsdes; int dsdes; } ;
typedef int si ;


 unsigned long CPUM_SF_MAX_SDB ;
 unsigned long CPUM_SF_MIN_SDB ;
 int CPUM_SF_SDB_DIAG_FACTOR ;
 int DIV_ROUND_UP (int ,int ) ;
 int memset (struct hws_qsi_info_block*,int ,int) ;
 int qsi (struct hws_qsi_info_block*) ;

__attribute__((used)) static void sfb_set_limits(unsigned long min, unsigned long max)
{
 struct hws_qsi_info_block si;

 CPUM_SF_MIN_SDB = min;
 CPUM_SF_MAX_SDB = max;

 memset(&si, 0, sizeof(si));
 if (!qsi(&si))
  CPUM_SF_SDB_DIAG_FACTOR = DIV_ROUND_UP(si.dsdes, si.bsdes);
}
