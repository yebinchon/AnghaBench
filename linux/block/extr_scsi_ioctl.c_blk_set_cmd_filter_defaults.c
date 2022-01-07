
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blk_cmd_filter {int write_ok; int read_ok; } ;


 int ERASE ;
 int GPCMD_BLANK ;
 int GPCMD_CLOSE_TRACK ;
 int GPCMD_FLUSH_CACHE ;
 int GPCMD_FORMAT_UNIT ;
 int GPCMD_GET_CONFIGURATION ;
 int GPCMD_GET_EVENT_STATUS_NOTIFICATION ;
 int GPCMD_GET_PERFORMANCE ;
 int GPCMD_LOAD_UNLOAD ;
 int GPCMD_MODE_SELECT_10 ;
 int GPCMD_PAUSE_RESUME ;
 int GPCMD_PLAY_AUDIO_10 ;
 int GPCMD_PLAY_AUDIO_MSF ;
 int GPCMD_PLAY_AUDIO_TI ;
 int GPCMD_PLAY_CD ;
 int GPCMD_PREVENT_ALLOW_MEDIUM_REMOVAL ;
 int GPCMD_READ_BUFFER_CAPACITY ;
 int GPCMD_READ_CD ;
 int GPCMD_READ_CDVD_CAPACITY ;
 int GPCMD_READ_CD_MSF ;
 int GPCMD_READ_DISC_INFO ;
 int GPCMD_READ_DVD_STRUCTURE ;
 int GPCMD_READ_FORMAT_CAPACITIES ;
 int GPCMD_READ_HEADER ;
 int GPCMD_READ_SUBCHANNEL ;
 int GPCMD_READ_TOC_PMA_ATIP ;
 int GPCMD_READ_TRACK_RZONE_INFO ;
 int GPCMD_REPAIR_RZONE_TRACK ;
 int GPCMD_REPORT_KEY ;
 int GPCMD_RESERVE_RZONE_TRACK ;
 int GPCMD_SCAN ;
 int GPCMD_SEEK ;
 int GPCMD_SEND_CUE_SHEET ;
 int GPCMD_SEND_DVD_STRUCTURE ;
 int GPCMD_SEND_EVENT ;
 int GPCMD_SEND_KEY ;
 int GPCMD_SEND_OPC ;
 int GPCMD_SET_READ_AHEAD ;
 int GPCMD_SET_SPEED ;
 int GPCMD_SET_STREAMING ;
 int GPCMD_STOP_PLAY_SCAN ;
 int GPCMD_VERIFY_10 ;
 int INQUIRY ;
 int LOG_SELECT ;
 int LOG_SENSE ;
 int MAINTENANCE_IN ;
 int MODE_SELECT ;
 int MODE_SENSE ;
 int MODE_SENSE_10 ;
 int READ_10 ;
 int READ_12 ;
 int READ_16 ;
 int READ_6 ;
 int READ_BUFFER ;
 int READ_CAPACITY ;
 int READ_DEFECT_DATA ;
 int READ_LONG ;
 int RECEIVE_DIAGNOSTIC ;
 int REPORT_LUNS ;
 int REQUEST_SENSE ;
 int SERVICE_ACTION_IN_16 ;
 int START_STOP ;
 int TEST_UNIT_READY ;
 int VERIFY_16 ;
 int WRITE_10 ;
 int WRITE_12 ;
 int WRITE_16 ;
 int WRITE_6 ;
 int WRITE_LONG ;
 int WRITE_LONG_2 ;
 int WRITE_SAME ;
 int WRITE_SAME_16 ;
 int WRITE_SAME_32 ;
 int WRITE_VERIFY ;
 int WRITE_VERIFY_12 ;
 int __set_bit (int ,int ) ;

__attribute__((used)) static void blk_set_cmd_filter_defaults(struct blk_cmd_filter *filter)
{

 __set_bit(TEST_UNIT_READY, filter->read_ok);
 __set_bit(REQUEST_SENSE, filter->read_ok);
 __set_bit(READ_6, filter->read_ok);
 __set_bit(READ_10, filter->read_ok);
 __set_bit(READ_12, filter->read_ok);
 __set_bit(READ_16, filter->read_ok);
 __set_bit(READ_BUFFER, filter->read_ok);
 __set_bit(READ_DEFECT_DATA, filter->read_ok);
 __set_bit(READ_CAPACITY, filter->read_ok);
 __set_bit(READ_LONG, filter->read_ok);
 __set_bit(INQUIRY, filter->read_ok);
 __set_bit(MODE_SENSE, filter->read_ok);
 __set_bit(MODE_SENSE_10, filter->read_ok);
 __set_bit(LOG_SENSE, filter->read_ok);
 __set_bit(START_STOP, filter->read_ok);
 __set_bit(GPCMD_VERIFY_10, filter->read_ok);
 __set_bit(VERIFY_16, filter->read_ok);
 __set_bit(REPORT_LUNS, filter->read_ok);
 __set_bit(SERVICE_ACTION_IN_16, filter->read_ok);
 __set_bit(RECEIVE_DIAGNOSTIC, filter->read_ok);
 __set_bit(MAINTENANCE_IN, filter->read_ok);
 __set_bit(GPCMD_READ_BUFFER_CAPACITY, filter->read_ok);


 __set_bit(GPCMD_PLAY_CD, filter->read_ok);
 __set_bit(GPCMD_PLAY_AUDIO_10, filter->read_ok);
 __set_bit(GPCMD_PLAY_AUDIO_MSF, filter->read_ok);
 __set_bit(GPCMD_PLAY_AUDIO_TI, filter->read_ok);
 __set_bit(GPCMD_PAUSE_RESUME, filter->read_ok);


 __set_bit(GPCMD_READ_CD, filter->read_ok);
 __set_bit(GPCMD_READ_CD_MSF, filter->read_ok);
 __set_bit(GPCMD_READ_DISC_INFO, filter->read_ok);
 __set_bit(GPCMD_READ_CDVD_CAPACITY, filter->read_ok);
 __set_bit(GPCMD_READ_DVD_STRUCTURE, filter->read_ok);
 __set_bit(GPCMD_READ_HEADER, filter->read_ok);
 __set_bit(GPCMD_READ_TRACK_RZONE_INFO, filter->read_ok);
 __set_bit(GPCMD_READ_SUBCHANNEL, filter->read_ok);
 __set_bit(GPCMD_READ_TOC_PMA_ATIP, filter->read_ok);
 __set_bit(GPCMD_REPORT_KEY, filter->read_ok);
 __set_bit(GPCMD_SCAN, filter->read_ok);
 __set_bit(GPCMD_GET_CONFIGURATION, filter->read_ok);
 __set_bit(GPCMD_READ_FORMAT_CAPACITIES, filter->read_ok);
 __set_bit(GPCMD_GET_EVENT_STATUS_NOTIFICATION, filter->read_ok);
 __set_bit(GPCMD_GET_PERFORMANCE, filter->read_ok);
 __set_bit(GPCMD_SEEK, filter->read_ok);
 __set_bit(GPCMD_STOP_PLAY_SCAN, filter->read_ok);


 __set_bit(WRITE_6, filter->write_ok);
 __set_bit(WRITE_10, filter->write_ok);
 __set_bit(WRITE_VERIFY, filter->write_ok);
 __set_bit(WRITE_12, filter->write_ok);
 __set_bit(WRITE_VERIFY_12, filter->write_ok);
 __set_bit(WRITE_16, filter->write_ok);
 __set_bit(WRITE_LONG, filter->write_ok);
 __set_bit(WRITE_LONG_2, filter->write_ok);
 __set_bit(WRITE_SAME, filter->write_ok);
 __set_bit(WRITE_SAME_16, filter->write_ok);
 __set_bit(WRITE_SAME_32, filter->write_ok);
 __set_bit(ERASE, filter->write_ok);
 __set_bit(GPCMD_MODE_SELECT_10, filter->write_ok);
 __set_bit(MODE_SELECT, filter->write_ok);
 __set_bit(LOG_SELECT, filter->write_ok);
 __set_bit(GPCMD_BLANK, filter->write_ok);
 __set_bit(GPCMD_CLOSE_TRACK, filter->write_ok);
 __set_bit(GPCMD_FLUSH_CACHE, filter->write_ok);
 __set_bit(GPCMD_FORMAT_UNIT, filter->write_ok);
 __set_bit(GPCMD_REPAIR_RZONE_TRACK, filter->write_ok);
 __set_bit(GPCMD_RESERVE_RZONE_TRACK, filter->write_ok);
 __set_bit(GPCMD_SEND_DVD_STRUCTURE, filter->write_ok);
 __set_bit(GPCMD_SEND_EVENT, filter->write_ok);
 __set_bit(GPCMD_SEND_KEY, filter->write_ok);
 __set_bit(GPCMD_SEND_OPC, filter->write_ok);
 __set_bit(GPCMD_SEND_CUE_SHEET, filter->write_ok);
 __set_bit(GPCMD_SET_SPEED, filter->write_ok);
 __set_bit(GPCMD_PREVENT_ALLOW_MEDIUM_REMOVAL, filter->write_ok);
 __set_bit(GPCMD_LOAD_UNLOAD, filter->write_ok);
 __set_bit(GPCMD_SET_STREAMING, filter->write_ok);
 __set_bit(GPCMD_SET_READ_AHEAD, filter->write_ok);
}
