
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int state; int stream_id; } ;
typedef TYPE_1__ h2o_http2_stream_t ;
 char const* debug_state_string_half_closed_remote ;
 char const* debug_state_string_open ;
 char const* debug_state_string_reserved_local ;
 scalar_t__ h2o_http2_stream_is_push (int ) ;

__attribute__((used)) static const char *get_debug_state_string(h2o_http2_stream_t *stream)
{
    if (h2o_http2_stream_is_push(stream->stream_id)) {
        switch (stream->state) {
        case 132:
        case 133:
        case 131:
            return debug_state_string_reserved_local;
        case 128:
        case 130:
        case 129:
            return debug_state_string_half_closed_remote;
        case 134:
        case 135:
            return ((void*)0);
        }
    } else {
        switch (stream->state) {
        case 132:
        case 133:
            return debug_state_string_open;
        case 131:
        case 128:
        case 130:
        case 129:
            return debug_state_string_half_closed_remote;
        case 134:
        case 135:
            return ((void*)0);
        }
    }
    return ((void*)0);
}
