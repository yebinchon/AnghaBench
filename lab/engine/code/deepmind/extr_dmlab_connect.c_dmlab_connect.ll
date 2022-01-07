; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_connect.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_connect.c_dmlab_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32, i32, i32, i32 }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_14__*, %struct.TYPE_13__ }
%struct.TYPE_14__ = type { i32, i32, i32, i32, i32*, %struct.TYPE_16__*, i32, %struct.TYPE_12__, i64, i32*, i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@dmlab_setting = common dso_local global i32 0, align 4
@dmlab_init = common dso_local global i32 0, align 4
@dmlab_write_property = common dso_local global i32 0, align 4
@dmlab_read_property = common dso_local global i32 0, align 4
@dmlab_list_property = common dso_local global i32 0, align 4
@dmlab_start = common dso_local global i32 0, align 4
@dmlab_error_message = common dso_local global i32 0, align 4
@dmlab_environment_name = common dso_local global i32 0, align 4
@dmlab_action_discrete_count = common dso_local global i32 0, align 4
@dmlab_action_discrete_name = common dso_local global i32 0, align 4
@dmlab_action_discrete_bounds = common dso_local global i32 0, align 4
@dmlab_action_continuous_count = common dso_local global i32 0, align 4
@dmlab_action_continuous_name = common dso_local global i32 0, align 4
@dmlab_action_continuous_bounds = common dso_local global i32 0, align 4
@dmlab_action_text_count = common dso_local global i32 0, align 4
@dmlab_action_text_name = common dso_local global i32 0, align 4
@dmlab_observation_count = common dso_local global i32 0, align 4
@dmlab_observation_name = common dso_local global i32 0, align 4
@dmlab_observation_spec = common dso_local global i32 0, align 4
@dmlab_event_type_count = common dso_local global i32 0, align 4
@dmlab_event_type_name = common dso_local global i32 0, align 4
@dmlab_fps = common dso_local global i32 0, align 4
@dmlab_observation = common dso_local global i32 0, align 4
@dmlab_event_count = common dso_local global i32 0, align 4
@dmlab_event = common dso_local global i32 0, align 4
@dmlab_act = common dso_local global i32 0, align 4
@dmlab_act_discrete = common dso_local global i32 0, align 4
@dmlab_act_continuous = common dso_local global i32 0, align 4
@dmlab_act_text = common dso_local global i32 0, align 4
@dmlab_advance = common dso_local global i32 0, align 4
@dmlab_destroy_context = common dso_local global i32 0, align 4
@player_score = common dso_local global i32 0, align 4
@call_add_score = common dso_local global i32 0, align 4
@screen_shape = common dso_local global i32 0, align 4
@add_bot = common dso_local global i32 0, align 4
@execute_console_command = common dso_local global i32 0, align 4
@engine_frame_period_msec = common dso_local global i32 0, align 4
@total_engine_time_msec = common dso_local global i32 0, align 4
@total_time_seconds = common dso_local global i32 0, align 4
@dmlab_deserialise_model = common dso_local global i32 0, align 4
@dmlab_load_model = common dso_local global i32 0, align 4
@dmlab_serialised_model_size = common dso_local global i32 0, align 4
@dmlab_serialise_model = common dso_local global i32 0, align 4
@dmlab_save_model = common dso_local global i32 0, align 4
@dmlab_update_rgba_texture = common dso_local global i32 0, align 4
@dmlab_raycast = common dso_local global i32 0, align 4
@dmlab_in_fov = common dso_local global i32 0, align 4
@dmlab_is_map_loading = common dso_local global i32 0, align 4
@dmlab_render_custom_view = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dmlab_connect(%struct.TYPE_17__* %0, %struct.TYPE_15__* %1, i8** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca i32*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %5, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %6, align 8
  store i8** %2, i8*** %7, align 8
  %11 = call %struct.TYPE_16__* (...) @get_context_once()
  store %struct.TYPE_16__* %11, %struct.TYPE_16__** %8, align 8
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %13 = icmp eq %struct.TYPE_16__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %308

15:                                               ; preds = %3
  %16 = call i8* @calloc(i32 1, i32 64)
  %17 = bitcast i8* %16 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %17, %struct.TYPE_14__** %9, align 8
  %18 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %19 = icmp eq %struct.TYPE_14__* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %15
  store i32 2, i32* %4, align 4
  br label %308

21:                                               ; preds = %15
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %23 = icmp eq %struct.TYPE_17__* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 3, i32* %4, align 4
  br label %308

25:                                               ; preds = %21
  %26 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %38, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %31, i32 0, i32 0
  %33 = load i8*, i8** %32, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 0
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %30, %25
  store i32 4, i32* %4, align 4
  br label %308

39:                                               ; preds = %30
  %40 = call i8* @calloc(i32 1, i32 4)
  %41 = bitcast i8* %40 to i32*
  store i32* %41, i32** %10, align 8
  %42 = load i32*, i32** %10, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  store i32 1, i32* %4, align 4
  br label %308

45:                                               ; preds = %39
  %46 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %47 = bitcast %struct.TYPE_14__* %46 to i8*
  %48 = load i8**, i8*** %7, align 8
  store i8* %47, i8** %48, align 8
  %49 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 6
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 0
  %54 = load i8*, i8** %53, align 8
  %55 = call i32 @Q_strncpyz(i32 %51, i8* %54, i32 4)
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %57 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i32 0, i32 0
  store i32 0, i32* %57, align 8
  %58 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %58, i32 0, i32 1
  store i32 1, i32* %59, align 4
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %63, i32 0, i32 10
  store i32 %62, i32* %64, align 8
  %65 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %66 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %65, i32 0, i32 2
  store i32 320, i32* %66, align 8
  %67 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %67, i32 0, i32 3
  store i32 240, i32* %68, align 4
  %69 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %70 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 5
  store %struct.TYPE_16__* %69, %struct.TYPE_16__** %71, align 8
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 9
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  store i32 1, i32* %78, align 4
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 8
  store i64 0, i64* %80, align 8
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 7
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  store i32 1, i32* %83, align 4
  %84 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %85 = call i32 @memset(%struct.TYPE_15__* %84, i32 0, i32 124)
  %86 = load i32, i32* @dmlab_setting, align 4
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 30
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* @dmlab_init, align 4
  %90 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %90, i32 0, i32 29
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @dmlab_write_property, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 28
  store i32 %92, i32* %94, align 4
  %95 = load i32, i32* @dmlab_read_property, align 4
  %96 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %97 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %96, i32 0, i32 27
  store i32 %95, i32* %97, align 4
  %98 = load i32, i32* @dmlab_list_property, align 4
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 26
  store i32 %98, i32* %100, align 4
  %101 = load i32, i32* @dmlab_start, align 4
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 25
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* @dmlab_error_message, align 4
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 24
  store i32 %104, i32* %106, align 4
  %107 = load i32, i32* @dmlab_environment_name, align 4
  %108 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %108, i32 0, i32 23
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* @dmlab_action_discrete_count, align 4
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 22
  store i32 %110, i32* %112, align 4
  %113 = load i32, i32* @dmlab_action_discrete_name, align 4
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 21
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* @dmlab_action_discrete_bounds, align 4
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 20
  store i32 %116, i32* %118, align 4
  %119 = load i32, i32* @dmlab_action_continuous_count, align 4
  %120 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 19
  store i32 %119, i32* %121, align 4
  %122 = load i32, i32* @dmlab_action_continuous_name, align 4
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 18
  store i32 %122, i32* %124, align 4
  %125 = load i32, i32* @dmlab_action_continuous_bounds, align 4
  %126 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %127 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %126, i32 0, i32 17
  store i32 %125, i32* %127, align 4
  %128 = load i32, i32* @dmlab_action_text_count, align 4
  %129 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %130 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %129, i32 0, i32 16
  store i32 %128, i32* %130, align 4
  %131 = load i32, i32* @dmlab_action_text_name, align 4
  %132 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %132, i32 0, i32 15
  store i32 %131, i32* %133, align 4
  %134 = load i32, i32* @dmlab_observation_count, align 4
  %135 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %136 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %135, i32 0, i32 14
  store i32 %134, i32* %136, align 4
  %137 = load i32, i32* @dmlab_observation_name, align 4
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 13
  store i32 %137, i32* %139, align 4
  %140 = load i32, i32* @dmlab_observation_spec, align 4
  %141 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %141, i32 0, i32 12
  store i32 %140, i32* %142, align 4
  %143 = load i32, i32* @dmlab_event_type_count, align 4
  %144 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 11
  store i32 %143, i32* %145, align 4
  %146 = load i32, i32* @dmlab_event_type_name, align 4
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 10
  store i32 %146, i32* %148, align 4
  %149 = load i32, i32* @dmlab_fps, align 4
  %150 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %151 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %150, i32 0, i32 9
  store i32 %149, i32* %151, align 4
  %152 = load i32, i32* @dmlab_observation, align 4
  %153 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %153, i32 0, i32 8
  store i32 %152, i32* %154, align 4
  %155 = load i32, i32* @dmlab_event_count, align 4
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 4
  %158 = load i32, i32* @dmlab_event, align 4
  %159 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 6
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @dmlab_act, align 4
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 5
  store i32 %161, i32* %163, align 4
  %164 = load i32, i32* @dmlab_act_discrete, align 4
  %165 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %166 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 4
  %167 = load i32, i32* @dmlab_act_continuous, align 4
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 3
  store i32 %167, i32* %169, align 4
  %170 = load i32, i32* @dmlab_act_text, align 4
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 2
  store i32 %170, i32* %172, align 4
  %173 = load i32, i32* @dmlab_advance, align 4
  %174 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %174, i32 0, i32 1
  store i32 %173, i32* %175, align 4
  %176 = load i32, i32* @dmlab_destroy_context, align 4
  %177 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %177, i32 0, i32 0
  store i32 %176, i32* %178, align 4
  %179 = load i32, i32* @player_score, align 4
  %180 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 5
  %182 = load %struct.TYPE_16__*, %struct.TYPE_16__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %183, i32 0, i32 17
  store i32 %179, i32* %184, align 4
  %185 = load i32, i32* @call_add_score, align 4
  %186 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %187 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %186, i32 0, i32 5
  %188 = load %struct.TYPE_16__*, %struct.TYPE_16__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 16
  store i32 %185, i32* %190, align 8
  %191 = load i32, i32* @screen_shape, align 4
  %192 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %193 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %192, i32 0, i32 5
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %193, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 15
  store i32 %191, i32* %196, align 4
  %197 = load i32, i32* @add_bot, align 4
  %198 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 5
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 1
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 14
  store i32 %197, i32* %202, align 8
  %203 = load i32, i32* @execute_console_command, align 4
  %204 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %205 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %204, i32 0, i32 5
  %206 = load %struct.TYPE_16__*, %struct.TYPE_16__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 13
  store i32 %203, i32* %208, align 4
  %209 = load i32, i32* @engine_frame_period_msec, align 4
  %210 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %211 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %210, i32 0, i32 5
  %212 = load %struct.TYPE_16__*, %struct.TYPE_16__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %213, i32 0, i32 12
  store i32 %209, i32* %214, align 8
  %215 = load i32, i32* @total_engine_time_msec, align 4
  %216 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %217 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %216, i32 0, i32 5
  %218 = load %struct.TYPE_16__*, %struct.TYPE_16__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 11
  store i32 %215, i32* %220, align 4
  %221 = load i32, i32* @total_time_seconds, align 4
  %222 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %222, i32 0, i32 5
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %223, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %225, i32 0, i32 10
  store i32 %221, i32* %226, align 8
  %227 = load i32, i32* @dmlab_deserialise_model, align 4
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %229 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i32 0, i32 5
  %230 = load %struct.TYPE_16__*, %struct.TYPE_16__** %229, align 8
  %231 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %230, i32 0, i32 1
  %232 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %231, i32 0, i32 9
  store i32 %227, i32* %232, align 4
  %233 = load i32, i32* @dmlab_load_model, align 4
  %234 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %235 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %234, i32 0, i32 5
  %236 = load %struct.TYPE_16__*, %struct.TYPE_16__** %235, align 8
  %237 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %237, i32 0, i32 8
  store i32 %233, i32* %238, align 8
  %239 = load i32, i32* @dmlab_serialised_model_size, align 4
  %240 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 5
  %242 = load %struct.TYPE_16__*, %struct.TYPE_16__** %241, align 8
  %243 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %242, i32 0, i32 1
  %244 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %243, i32 0, i32 7
  store i32 %239, i32* %244, align 4
  %245 = load i32, i32* @dmlab_serialise_model, align 4
  %246 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %247 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %246, i32 0, i32 5
  %248 = load %struct.TYPE_16__*, %struct.TYPE_16__** %247, align 8
  %249 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %248, i32 0, i32 1
  %250 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %249, i32 0, i32 6
  store i32 %245, i32* %250, align 8
  %251 = load i32, i32* @dmlab_save_model, align 4
  %252 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %253 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %252, i32 0, i32 5
  %254 = load %struct.TYPE_16__*, %struct.TYPE_16__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %254, i32 0, i32 1
  %256 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %255, i32 0, i32 5
  store i32 %251, i32* %256, align 4
  %257 = load i32, i32* @dmlab_update_rgba_texture, align 4
  %258 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %259 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %258, i32 0, i32 5
  %260 = load %struct.TYPE_16__*, %struct.TYPE_16__** %259, align 8
  %261 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %260, i32 0, i32 1
  %262 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %261, i32 0, i32 4
  store i32 %257, i32* %262, align 8
  %263 = load i32, i32* @dmlab_raycast, align 4
  %264 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 5
  %266 = load %struct.TYPE_16__*, %struct.TYPE_16__** %265, align 8
  %267 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %266, i32 0, i32 1
  %268 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %267, i32 0, i32 3
  store i32 %263, i32* %268, align 4
  %269 = load i32, i32* @dmlab_in_fov, align 4
  %270 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %271 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %270, i32 0, i32 5
  %272 = load %struct.TYPE_16__*, %struct.TYPE_16__** %271, align 8
  %273 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %272, i32 0, i32 1
  %274 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %273, i32 0, i32 2
  store i32 %269, i32* %274, align 8
  %275 = load i32, i32* @dmlab_is_map_loading, align 4
  %276 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %277 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %276, i32 0, i32 5
  %278 = load %struct.TYPE_16__*, %struct.TYPE_16__** %277, align 8
  %279 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %278, i32 0, i32 1
  %280 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %279, i32 0, i32 1
  store i32 %275, i32* %280, align 4
  %281 = load i32, i32* @dmlab_render_custom_view, align 4
  %282 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %283 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %282, i32 0, i32 5
  %284 = load %struct.TYPE_16__*, %struct.TYPE_16__** %283, align 8
  %285 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %284, i32 0, i32 1
  %286 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %285, i32 0, i32 0
  store i32 %281, i32* %286, align 8
  %287 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %288 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %289 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %288, i32 0, i32 5
  %290 = load %struct.TYPE_16__*, %struct.TYPE_16__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %290, i32 0, i32 0
  store %struct.TYPE_14__* %287, %struct.TYPE_14__** %291, align 8
  %292 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %293 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %292, i32 0, i32 6
  %294 = load i32, i32* %293, align 8
  %295 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 5
  %297 = load %struct.TYPE_16__*, %struct.TYPE_16__** %296, align 8
  %298 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %299 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %298, i32 0, i32 3
  %300 = load i32, i32* %299, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %302 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %301, i32 0, i32 2
  %303 = load i32, i32* %302, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = call i32 @dmlab_create_context(i32 %294, %struct.TYPE_16__* %297, i32 %300, i32 %303, i32 %306)
  store i32 %307, i32* %4, align 4
  br label %308

308:                                              ; preds = %45, %44, %38, %24, %20, %14
  %309 = load i32, i32* %4, align 4
  ret i32 %309
}

declare dso_local %struct.TYPE_16__* @get_context_once(...) #1

declare dso_local i8* @calloc(i32, i32) #1

declare dso_local i32 @Q_strncpyz(i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_15__*, i32, i32) #1

declare dso_local i32 @dmlab_create_context(i32, %struct.TYPE_16__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
