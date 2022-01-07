
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yrmcds_error ;
typedef int yrmcds_cnt ;
typedef int uint32_t ;


 int YRMCDS_CNT_CMD_STATS ;
 int send_command (int *,int ,int *,int ,int *,int ,int *) ;

yrmcds_error
yrmcds_cnt_stats(yrmcds_cnt* c, uint32_t* serial) {
    return send_command(c, YRMCDS_CNT_CMD_STATS, serial,
                        0, ((void*)0), 0, ((void*)0));
}
