
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* current_high_water_mark_in_ms; int last_high_water_mark_in_ms; int next_high_water_mark_in_ms; void* first_high_water_mark_in_ms; int high_water_mark_in_bytes; int max_buffer_size; int min_frames; } ;
typedef TYPE_1__ FFDemuxCacheControl ;


 void* DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS ;
 int DEFAULT_HIGH_WATER_MARK_IN_BYTES ;
 int DEFAULT_LAST_HIGH_WATER_MARK_IN_MS ;
 int DEFAULT_MIN_FRAMES ;
 int DEFAULT_NEXT_HIGH_WATER_MARK_IN_MS ;
 int MAX_QUEUE_SIZE ;

__attribute__((used)) inline static void ffp_reset_demux_cache_control(FFDemuxCacheControl *dcc)
{
    dcc->min_frames = DEFAULT_MIN_FRAMES;
    dcc->max_buffer_size = MAX_QUEUE_SIZE;
    dcc->high_water_mark_in_bytes = DEFAULT_HIGH_WATER_MARK_IN_BYTES;

    dcc->first_high_water_mark_in_ms = DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS;
    dcc->next_high_water_mark_in_ms = DEFAULT_NEXT_HIGH_WATER_MARK_IN_MS;
    dcc->last_high_water_mark_in_ms = DEFAULT_LAST_HIGH_WATER_MARK_IN_MS;
    dcc->current_high_water_mark_in_ms = DEFAULT_FIRST_HIGH_WATER_MARK_IN_MS;
}
