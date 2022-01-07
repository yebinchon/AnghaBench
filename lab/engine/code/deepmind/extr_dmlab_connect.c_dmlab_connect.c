
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int dmlabRecordingContext ;
struct TYPE_17__ {char* runfiles_path; int optional_temp_folder; int read_only_file_system; int file_reader_override; int level_cache_params; } ;
struct TYPE_13__ {int render_custom_view; int is_map_loading; int in_fov; int raycast; int update_rgba_texture; int save_model; int serialise_model; int serialised_model_size; int load_model; int deserialise_model; int total_time_seconds; int total_engine_time_msec; int engine_frame_period_msec; int execute_console_command; int add_bot; int screen_shape; int add_score; int player_score; } ;
struct TYPE_16__ {TYPE_3__* context; TYPE_2__ calls; } ;
struct TYPE_15__ {int release_context; int advance; int act_text; int act_continuous; int act_discrete; int act; int event; int event_count; int observation; int fps; int event_type_name; int event_type_count; int observation_spec; int observation_name; int observation_count; int action_text_name; int action_text_count; int action_continuous_bounds; int action_continuous_name; int action_continuous_count; int action_discrete_bounds; int action_discrete_name; int action_discrete_count; int environment_name; int error_message; int start; int list_property; int read_property; int write_property; int init; int setting; } ;
struct TYPE_12__ {int enabled; } ;
struct TYPE_14__ {int use_local_level_cache; int use_global_level_cache; int width; int height; int* map_frame_number_shape; TYPE_5__* dm_ctx; int runfiles_path; TYPE_1__ pbos; scalar_t__ map_frame_number_observation; int * recording_ctx; int level_cache_params; } ;
typedef TYPE_3__ GameContext ;
typedef TYPE_4__ EnvCApi ;
typedef TYPE_5__ DeepmindContext ;
typedef TYPE_6__ DeepMindLabLaunchParams ;


 int Q_strncpyz (int ,char*,int) ;
 int add_bot ;
 int call_add_score ;
 void* calloc (int,int) ;
 int dmlab_act ;
 int dmlab_act_continuous ;
 int dmlab_act_discrete ;
 int dmlab_act_text ;
 int dmlab_action_continuous_bounds ;
 int dmlab_action_continuous_count ;
 int dmlab_action_continuous_name ;
 int dmlab_action_discrete_bounds ;
 int dmlab_action_discrete_count ;
 int dmlab_action_discrete_name ;
 int dmlab_action_text_count ;
 int dmlab_action_text_name ;
 int dmlab_advance ;
 int dmlab_create_context (int ,TYPE_5__*,int ,int ,int ) ;
 int dmlab_deserialise_model ;
 int dmlab_destroy_context ;
 int dmlab_environment_name ;
 int dmlab_error_message ;
 int dmlab_event ;
 int dmlab_event_count ;
 int dmlab_event_type_count ;
 int dmlab_event_type_name ;
 int dmlab_fps ;
 int dmlab_in_fov ;
 int dmlab_init ;
 int dmlab_is_map_loading ;
 int dmlab_list_property ;
 int dmlab_load_model ;
 int dmlab_observation ;
 int dmlab_observation_count ;
 int dmlab_observation_name ;
 int dmlab_observation_spec ;
 int dmlab_raycast ;
 int dmlab_read_property ;
 int dmlab_render_custom_view ;
 int dmlab_save_model ;
 int dmlab_serialise_model ;
 int dmlab_serialised_model_size ;
 int dmlab_setting ;
 int dmlab_start ;
 int dmlab_update_rgba_texture ;
 int dmlab_write_property ;
 int engine_frame_period_msec ;
 int execute_console_command ;
 TYPE_5__* get_context_once () ;
 int memset (TYPE_4__*,int ,int) ;
 int player_score ;
 int screen_shape ;
 int total_engine_time_msec ;
 int total_time_seconds ;

int dmlab_connect(const DeepMindLabLaunchParams* params, EnvCApi* env_c_api,
                  void** context) {
  DeepmindContext* dm_ctx = get_context_once();
  if (dm_ctx == ((void*)0)) {
    return 1;
  }

  GameContext* gc = calloc(1, sizeof(GameContext));
  if (gc == ((void*)0)) {
    return 2;
  }

  if (params == ((void*)0)) {
    return 3;
  }

  if (params->runfiles_path == ((void*)0) || params->runfiles_path[0] == '\0') {
    return 4;
  }

  dmlabRecordingContext* rcxt = calloc(1, sizeof(dmlabRecordingContext));
  if (rcxt == ((void*)0)) {
    return 1;
  }

  *context = gc;

  Q_strncpyz(gc->runfiles_path, params->runfiles_path,
             sizeof(gc->runfiles_path));


  gc->use_local_level_cache = 0;
  gc->use_global_level_cache = 1;
  gc->level_cache_params = params->level_cache_params;
  gc->width = 320;
  gc->height = 240;
  gc->dm_ctx = dm_ctx;
  gc->recording_ctx = rcxt;
  gc->map_frame_number_shape[0] = 1;
  gc->map_frame_number_observation = 0;
  gc->pbos.enabled = 1;

  memset(env_c_api, 0, sizeof(EnvCApi));

  env_c_api->setting = dmlab_setting;
  env_c_api->init = dmlab_init;
  env_c_api->write_property = dmlab_write_property;
  env_c_api->read_property = dmlab_read_property;
  env_c_api->list_property = dmlab_list_property;
  env_c_api->start = dmlab_start;
  env_c_api->error_message = dmlab_error_message;
  env_c_api->environment_name = dmlab_environment_name;
  env_c_api->action_discrete_count = dmlab_action_discrete_count;
  env_c_api->action_discrete_name = dmlab_action_discrete_name;
  env_c_api->action_discrete_bounds = dmlab_action_discrete_bounds;
  env_c_api->action_continuous_count = dmlab_action_continuous_count;
  env_c_api->action_continuous_name = dmlab_action_continuous_name;
  env_c_api->action_continuous_bounds = dmlab_action_continuous_bounds;
  env_c_api->action_text_count = dmlab_action_text_count;
  env_c_api->action_text_name = dmlab_action_text_name;
  env_c_api->observation_count = dmlab_observation_count;
  env_c_api->observation_name = dmlab_observation_name;
  env_c_api->observation_spec = dmlab_observation_spec;
  env_c_api->event_type_count = dmlab_event_type_count;
  env_c_api->event_type_name = dmlab_event_type_name;
  env_c_api->fps = dmlab_fps;
  env_c_api->observation = dmlab_observation;
  env_c_api->event_count = dmlab_event_count;
  env_c_api->event = dmlab_event;
  env_c_api->act = dmlab_act;
  env_c_api->act_discrete = dmlab_act_discrete;
  env_c_api->act_continuous = dmlab_act_continuous;
  env_c_api->act_text = dmlab_act_text;
  env_c_api->advance = dmlab_advance;
  env_c_api->release_context = dmlab_destroy_context;
  gc->dm_ctx->calls.player_score = player_score;
  gc->dm_ctx->calls.add_score = call_add_score;
  gc->dm_ctx->calls.screen_shape = screen_shape;
  gc->dm_ctx->calls.add_bot = add_bot;
  gc->dm_ctx->calls.execute_console_command = execute_console_command;
  gc->dm_ctx->calls.engine_frame_period_msec = engine_frame_period_msec;
  gc->dm_ctx->calls.total_engine_time_msec = total_engine_time_msec;
  gc->dm_ctx->calls.total_time_seconds = total_time_seconds;
  gc->dm_ctx->calls.deserialise_model = dmlab_deserialise_model;
  gc->dm_ctx->calls.load_model = dmlab_load_model;
  gc->dm_ctx->calls.serialised_model_size = dmlab_serialised_model_size;
  gc->dm_ctx->calls.serialise_model = dmlab_serialise_model;
  gc->dm_ctx->calls.save_model = dmlab_save_model;
  gc->dm_ctx->calls.update_rgba_texture = dmlab_update_rgba_texture;
  gc->dm_ctx->calls.raycast = dmlab_raycast;
  gc->dm_ctx->calls.in_fov = dmlab_in_fov;
  gc->dm_ctx->calls.is_map_loading = dmlab_is_map_loading;
  gc->dm_ctx->calls.render_custom_view = dmlab_render_custom_view;
  gc->dm_ctx->context = gc;
  return dmlab_create_context(gc->runfiles_path, gc->dm_ctx,
                              params->file_reader_override,
                              params->read_only_file_system,
                              params->optional_temp_folder);
}
