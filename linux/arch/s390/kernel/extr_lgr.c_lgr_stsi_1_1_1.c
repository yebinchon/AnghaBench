
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sysinfo_1_1_1 {int plant; int sequence; int model; int type; int manufacturer; } ;
struct lgr_info {int plant; int sequence; int model; int type; int manufacturer; } ;


 int cpascii (int ,int ,int) ;
 scalar_t__ lgr_page ;
 scalar_t__ stsi (struct sysinfo_1_1_1*,int,int,int) ;

__attribute__((used)) static void lgr_stsi_1_1_1(struct lgr_info *lgr_info)
{
 struct sysinfo_1_1_1 *si = (void *) lgr_page;

 if (stsi(si, 1, 1, 1))
  return;
 cpascii(lgr_info->manufacturer, si->manufacturer,
  sizeof(si->manufacturer));
 cpascii(lgr_info->type, si->type, sizeof(si->type));
 cpascii(lgr_info->model, si->model, sizeof(si->model));
 cpascii(lgr_info->sequence, si->sequence, sizeof(si->sequence));
 cpascii(lgr_info->plant, si->plant, sizeof(si->plant));
}
