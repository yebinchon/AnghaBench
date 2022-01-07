
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BCSR_WHOAMI ;
 int BCSR_WHOAMI_BOARD (int ) ;
 int bcsr_read (int ) ;

__attribute__((used)) static const char *board_type_str(void)
{
 switch (BCSR_WHOAMI_BOARD(bcsr_read(BCSR_WHOAMI))) {
 case 140:
  return "DB1000";
 case 136:
  return "DB1500";
 case 139:
  return "DB1100";
 case 131:
 case 130:
  return "PB1500";
 case 134:
  return "PB1100";
 case 133:
 case 132:
  return "PB1200";
 case 138:
  return "DB1200";
 case 137:
  return "DB1300";
 case 135:
  return "DB1550";
 case 128:
 case 129:
  return "PB1550";
 default:
  return "(unknown)";
 }
}
