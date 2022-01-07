
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LEV_TIMESTAMP ;
 int alloc_log_crc32_event () ;
 int alloc_log_event (int ,int ,int ) ;
 scalar_t__ bytes_after_crc32 ;
 int disable_crc32 ;
 int disable_ts ;
 scalar_t__ log_crc32_interval2 ;

__attribute__((used)) static inline void alloc_log_timestamp_event (void) {
  if (bytes_after_crc32 >= log_crc32_interval2 && !(disable_crc32 & 1)) {
    alloc_log_crc32_event ();
  } else if (!(disable_ts & 1)) {
    alloc_log_event (LEV_TIMESTAMP, 0, 0);
  }
}
