; ModuleID = '/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_init_all.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/logs/extr_logs-data.c_init_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_18__ = type { i32, i8* }
%struct.TYPE_13__ = type { i32*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { i64, i64, i64, i64, i64, i64, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32 }

@log_ts_exact_interval = common dso_local global i32 0, align 4
@max_memory = common dso_local global i32 0, align 4
@query_memory = common dso_local global i32 0, align 4
@MAX_EVENT_MEM = common dso_local global i32 0, align 4
@mean_event_size = common dso_local global i32 0, align 4
@MAX_EV = common dso_local global i32 0, align 4
@evm_mx = common dso_local global i32 0, align 4
@log_position = common dso_local global i64* null, align 8
@log_timestamp = common dso_local global i64* null, align 8
@log_crc32 = common dso_local global i64* null, align 8
@time_table_log_position = common dso_local global i64* null, align 8
@time_table_log_timestamp = common dso_local global i64* null, align 8
@time_table_log_crc32 = common dso_local global i64* null, align 8
@map_type_id = common dso_local global i32 0, align 4
@write_only = common dso_local global i64 0, align 8
@events_mem = common dso_local global i8* null, align 8
@eq = common dso_local global i8* null, align 8
@ans = common dso_local global i8* null, align 8
@FN = common dso_local global i32 0, align 4
@std_desc = common dso_local global %struct.TYPE_15__* null, align 8
@field_names = common dso_local global i32* null, align 8
@empty_desc = common dso_local global %struct.TYPE_18__* null, align 8
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@std_t = common dso_local global i64* null, align 8
@.str.1 = private unnamed_addr constant [14 x i8] c"virtual_event\00", align 1
@types = common dso_local global %struct.TYPE_13__* null, align 8
@common_fields = common dso_local global i32 0, align 4
@common_field_names = common dso_local global i32* null, align 8
@common_field_types = common dso_local global i32* null, align 8
@q_st_ll = common dso_local global i32* null, align 8
@q_st_int = common dso_local global i32* null, align 8
@dump_mode = common dso_local global i64 0, align 8
@INDEX_TYPE = common dso_local global i32 0, align 4
@header = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@stderr = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"You need to generate new index first.\0A\00", align 1
@time_table_log_timestamp_size = common dso_local global i32 0, align 4
@from_ts = common dso_local global i64 0, align 8
@dump_query = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [28 x i8] c"Dump query can't be empty.\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Too much commas in dump query.\0A\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"%d%n\00", align 1
@dump_type = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [30 x i8] c"Can't parse [%s] as integer.\0A\00", align 1
@MAX_TYPE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"Dump_type [%d] not in range [0;%d].\0A\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"Dump_type [%d] is unknown.\0A\00", align 1
@dump_expr = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@.str.10 = private unnamed_addr constant [45 x i8] c"Cannot compile expression [%s] : error [%s]\0A\00", align 1
@.str.11 = private unnamed_addr constant [57 x i8] c"Cannot convert result of dump_query[%s] (string) to int\0A\00", align 1
@v_int = common dso_local global i32 0, align 4
@jump_log_ts = common dso_local global i64 0, align 8
@jump_log_pos = common dso_local global i64 0, align 8
@jump_log_crc32 = common dso_local global i64 0, align 8
@index_mode = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @init_all(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca [3 x i8*], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %10 = call i32 @assert(i32 1)
  store i32 1, i32* @log_ts_exact_interval, align 4
  %11 = load i32, i32* @max_memory, align 4
  %12 = load i32, i32* @query_memory, align 4
  %13 = sub nsw i32 %11, %12
  store i32 %13, i32* @MAX_EVENT_MEM, align 4
  %14 = load i32, i32* @MAX_EVENT_MEM, align 4
  %15 = load i32, i32* @mean_event_size, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* @MAX_EV, align 4
  %17 = load i32, i32* @MAX_EVENT_MEM, align 4
  %18 = sub nsw i32 %17, 5
  store i32 %18, i32* @evm_mx, align 4
  %19 = load i32, i32* @MAX_EVENT_MEM, align 4
  %20 = icmp sge i32 %19, 67108864
  %21 = zext i1 %20 to i32
  %22 = call i32 @assert(i32 %21)
  %23 = load i64*, i64** @log_position, align 8
  %24 = call i32 @vector_init(i64* %23)
  %25 = load i64*, i64** @log_timestamp, align 8
  %26 = call i32 @vector_init(i64* %25)
  %27 = load i64*, i64** @log_crc32, align 8
  %28 = call i32 @vector_init(i64* %27)
  %29 = load i64*, i64** @time_table_log_position, align 8
  %30 = call i32 @vector_init(i64* %29)
  %31 = load i64*, i64** @time_table_log_timestamp, align 8
  %32 = call i32 @vector_init(i64* %31)
  %33 = load i64*, i64** @time_table_log_crc32, align 8
  %34 = call i32 @vector_init(i64* %33)
  %35 = call i32 @map_ll_int_init(i32* @map_type_id)
  %36 = load i64, i64* @write_only, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %51, label %38

38:                                               ; preds = %1
  %39 = load i32, i32* @MAX_EVENT_MEM, align 4
  %40 = call i8* @dl_malloc(i32 %39)
  store i8* %40, i8** @events_mem, align 8
  %41 = load i32, i32* @MAX_EV, align 4
  %42 = sext i32 %41 to i64
  %43 = mul i64 8, %42
  %44 = trunc i64 %43 to i32
  %45 = call i8* @dl_malloc(i32 %44)
  store i8* %45, i8** @eq, align 8
  %46 = load i32, i32* @MAX_EV, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 4, %47
  %49 = trunc i64 %48 to i32
  %50 = call i8* @dl_malloc(i32 %49)
  store i8* %50, i8** @ans, align 8
  br label %51

51:                                               ; preds = %38, %1
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %88, %51
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @FN, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %99

56:                                               ; preds = %52
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @FN, align 4
  %59 = sub nsw i32 %57, %58
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** @std_desc, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  store i32 %59, i32* %64, align 4
  %65 = load i32*, i32** @field_names, align 8
  %66 = load i32, i32* %3, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i32, i32* %65, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.TYPE_15__*, %struct.TYPE_15__** @std_desc, align 8
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 1
  store i32 %69, i32* %74, align 4
  %75 = load i32, i32* %3, align 4
  %76 = load i32, i32* @FN, align 4
  %77 = sub nsw i32 %75, %76
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** @empty_desc, align 8
  %79 = load i32, i32* %3, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %81, i32 0, i32 0
  store i32 %77, i32* %82, align 8
  %83 = load %struct.TYPE_18__*, %struct.TYPE_18__** @empty_desc, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i64 %85
  %87 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %86, i32 0, i32 1
  store i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i8** %87, align 8
  br label %88

88:                                               ; preds = %56
  %89 = load i64*, i64** @std_t, align 8
  %90 = load i32, i32* %3, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i64, i64* %89, i64 %91
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 1, %93
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %52

99:                                               ; preds = %52
  %100 = call i32* @dl_strdup(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  %101 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i64 0
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 0
  store i32* %100, i32** %103, align 8
  %104 = load i32, i32* @FN, align 4
  %105 = sext i32 %104 to i64
  %106 = mul i64 4, %105
  %107 = trunc i64 %106 to i32
  %108 = call i8* @dl_malloc(i32 %107)
  %109 = bitcast i8* %108 to %struct.TYPE_15__*
  %110 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %111 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %110, i64 0
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  store %struct.TYPE_15__* %109, %struct.TYPE_15__** %112, align 8
  store i32 0, i32* %3, align 4
  br label %113

113:                                              ; preds = %131, %99
  %114 = load i32, i32* %3, align 4
  %115 = load i32, i32* @FN, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %142

117:                                              ; preds = %113
  %118 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %119 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %118, i64 0
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 1
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %120, align 8
  %122 = load i32, i32* %3, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i64 %123
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @std_desc, align 8
  %126 = load i32, i32* %3, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i64 %127
  %129 = bitcast %struct.TYPE_15__* %124 to i8*
  %130 = bitcast %struct.TYPE_15__* %128 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %129, i8* align 4 %130, i64 8, i1 false)
  br label %131

131:                                              ; preds = %117
  %132 = load i64*, i64** @std_t, align 8
  %133 = load i32, i32* %3, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 1, %136
  %138 = load i32, i32* %3, align 4
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %139, %137
  %141 = trunc i64 %140 to i32
  store i32 %141, i32* %3, align 4
  br label %113

142:                                              ; preds = %113
  %143 = load i32, i32* @FN, align 4
  %144 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i64 0
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %145, i32 0, i32 1
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %146, align 8
  %148 = sext i32 %143 to i64
  %149 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i64 %148
  store %struct.TYPE_15__* %149, %struct.TYPE_15__** %146, align 8
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %167, %142
  %151 = load i32, i32* %3, align 4
  %152 = load i32, i32* @common_fields, align 4
  %153 = icmp slt i32 %151, %152
  br i1 %153, label %154, label %170

154:                                              ; preds = %150
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %156 = load i32*, i32** @common_field_names, align 8
  %157 = load i32, i32* %3, align 4
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds i32, i32* %156, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = load i32*, i32** @common_field_types, align 8
  %162 = load i32, i32* %3, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @add_field(%struct.TYPE_13__* %155, i32 %160, i32 %165)
  br label %167

167:                                              ; preds = %154
  %168 = load i32, i32* %3, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %3, align 4
  br label %150

170:                                              ; preds = %150
  store i32 0, i32* %3, align 4
  br label %171

171:                                              ; preds = %195, %170
  %172 = load i32, i32* %3, align 4
  %173 = load i32, i32* @FN, align 4
  %174 = icmp slt i32 %172, %173
  br i1 %174, label %175, label %206

175:                                              ; preds = %171
  %176 = load i64*, i64** @std_t, align 8
  %177 = load i32, i32* %3, align 4
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds i64, i64* %176, i64 %178
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32*, i32** @q_st_ll, align 8
  %184 = load i32, i32* %3, align 4
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %183, i64 %185
  %187 = call i32 @map_ll_int_init(i32* %186)
  br label %194

188:                                              ; preds = %175
  %189 = load i32*, i32** @q_st_int, align 8
  %190 = load i32, i32* %3, align 4
  %191 = sext i32 %190 to i64
  %192 = getelementptr inbounds i32, i32* %189, i64 %191
  %193 = call i32 @map_int_int_init(i32* %192)
  br label %194

194:                                              ; preds = %188, %182
  br label %195

195:                                              ; preds = %194
  %196 = load i64*, i64** @std_t, align 8
  %197 = load i32, i32* %3, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i64, i64* %196, i64 %198
  %200 = load i64, i64* %199, align 8
  %201 = add nsw i64 1, %200
  %202 = load i32, i32* %3, align 4
  %203 = sext i32 %202 to i64
  %204 = add nsw i64 %203, %201
  %205 = trunc i64 %204 to i32
  store i32 %205, i32* %3, align 4
  br label %171

206:                                              ; preds = %171
  %207 = load i32, i32* %2, align 4
  %208 = call i32 @load_index(i32 %207)
  store i32 %208, i32* %4, align 4
  %209 = load i64, i64* @dump_mode, align 8
  %210 = icmp ne i64 %209, 0
  br i1 %210, label %211, label %372

211:                                              ; preds = %206
  %212 = call i32 (...) @load_stat_queries()
  %213 = load i32, i32* @INDEX_TYPE, align 4
  %214 = call i32 @assert(i32 %213)
  %215 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 0), align 8
  %216 = icmp eq i64 %215, 0
  br i1 %216, label %217, label %221

217:                                              ; preds = %211
  %218 = load i32, i32* @stderr, align 4
  %219 = call i32 (i32, i8*, ...) @fprintf(i32 %218, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %220 = call i32 @exit(i32 1) #4
  unreachable

221:                                              ; preds = %211
  store i32 0, i32* %5, align 4
  br label %222

222:                                              ; preds = %239, %221
  %223 = load i32, i32* %5, align 4
  %224 = add nsw i32 %223, 1
  %225 = load i32, i32* @time_table_log_timestamp_size, align 4
  %226 = icmp slt i32 %224, %225
  br i1 %226, label %227, label %236

227:                                              ; preds = %222
  %228 = load i64*, i64** @time_table_log_timestamp, align 8
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  %231 = sext i32 %230 to i64
  %232 = getelementptr inbounds i64, i64* %228, i64 %231
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @from_ts, align 8
  %235 = icmp slt i64 %233, %234
  br label %236

236:                                              ; preds = %227, %222
  %237 = phi i1 [ false, %222 ], [ %235, %227 ]
  br i1 %237, label %238, label %242

238:                                              ; preds = %236
  br label %239

239:                                              ; preds = %238
  %240 = load i32, i32* %5, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %5, align 4
  br label %222

242:                                              ; preds = %236
  %243 = load i8*, i8** @dump_query, align 8
  %244 = call i64 @strlen(i8* %243)
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %250

246:                                              ; preds = %242
  %247 = load i32, i32* @stderr, align 4
  %248 = call i32 (i32, i8*, ...) @fprintf(i32 %247, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %249 = call i32 @exit(i32 1) #4
  unreachable

250:                                              ; preds = %242
  %251 = load i8*, i8** @dump_query, align 8
  %252 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %253 = call i32 @split(i8* %251, i8** %252, i32* %7, i32 2)
  %254 = load i32, i32* %7, align 4
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %260

256:                                              ; preds = %250
  %257 = load i32, i32* @stderr, align 4
  %258 = call i32 (i32, i8*, ...) @fprintf(i32 %257, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %259 = call i32 @exit(i32 1) #4
  unreachable

260:                                              ; preds = %250
  %261 = load i32, i32* %7, align 4
  %262 = icmp eq i32 %261, 2
  br i1 %262, label %263, label %271

263:                                              ; preds = %260
  %264 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %265 = load i8*, i8** %264, align 8
  %266 = call i64 @strcmp(i8* %265, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i64 0, i64 0))
  %267 = icmp ne i64 %266, 0
  br i1 %267, label %268, label %271

268:                                              ; preds = %263
  %269 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 1
  %270 = load i8*, i8** %269, align 8
  store i8* %270, i8** @dump_query, align 8
  br label %272

271:                                              ; preds = %263, %260
  store i8* null, i8** @dump_query, align 8
  br label %272

272:                                              ; preds = %271, %268
  %273 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %274 = load i8*, i8** %273, align 16
  %275 = call i32 @sscanf(i8* %274, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* @dump_type, i32* %8)
  %276 = icmp ne i32 %275, 1
  br i1 %276, label %286, label %277

277:                                              ; preds = %272
  %278 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %279 = load i8*, i8** %278, align 16
  %280 = load i32, i32* %8, align 4
  %281 = sext i32 %280 to i64
  %282 = getelementptr inbounds i8, i8* %279, i64 %281
  %283 = load i8, i8* %282, align 1
  %284 = sext i8 %283 to i32
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %292

286:                                              ; preds = %277, %272
  %287 = load i32, i32* @stderr, align 4
  %288 = getelementptr inbounds [3 x i8*], [3 x i8*]* %6, i64 0, i64 0
  %289 = load i8*, i8** %288, align 16
  %290 = call i32 (i32, i8*, ...) @fprintf(i32 %287, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* %289)
  %291 = call i32 @exit(i32 1) #4
  unreachable

292:                                              ; preds = %277
  %293 = load i32, i32* @dump_type, align 4
  %294 = icmp sle i32 0, %293
  br i1 %294, label %295, label %299

295:                                              ; preds = %292
  %296 = load i32, i32* @dump_type, align 4
  %297 = load i32, i32* @MAX_TYPE, align 4
  %298 = icmp slt i32 %296, %297
  br i1 %298, label %306, label %299

299:                                              ; preds = %295, %292
  %300 = load i32, i32* @stderr, align 4
  %301 = load i32, i32* @dump_type, align 4
  %302 = load i32, i32* @MAX_TYPE, align 4
  %303 = sub nsw i32 %302, 1
  %304 = call i32 (i32, i8*, ...) @fprintf(i32 %300, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0), i32 %301, i32 %303)
  %305 = call i32 @exit(i32 1) #4
  unreachable

306:                                              ; preds = %295
  %307 = load i32, i32* @dump_type, align 4
  %308 = icmp ne i32 %307, 0
  br i1 %308, label %309, label %322

309:                                              ; preds = %306
  %310 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %311 = load i32, i32* @dump_type, align 4
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %310, i64 %312
  %314 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %313, i32 0, i32 0
  %315 = load i32*, i32** %314, align 8
  %316 = icmp eq i32* %315, null
  br i1 %316, label %317, label %322

317:                                              ; preds = %309
  %318 = load i32, i32* @stderr, align 4
  %319 = load i32, i32* @dump_type, align 4
  %320 = call i32 (i32, i8*, ...) @fprintf(i32 %318, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i32 %319)
  %321 = call i32 @exit(i32 1) #4
  unreachable

322:                                              ; preds = %309, %306
  %323 = load i8*, i8** @dump_query, align 8
  %324 = icmp ne i8* %323, null
  br i1 %324, label %325, label %356

325:                                              ; preds = %322
  %326 = load i8*, i8** @dump_query, align 8
  %327 = load %struct.TYPE_13__*, %struct.TYPE_13__** @types, align 8
  %328 = load i32, i32* @dump_type, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %327, i64 %329
  %331 = call i8* @expression_compile(%struct.TYPE_17__* @dump_expr, i8* %326, %struct.TYPE_13__* %330)
  store i8* %331, i8** %9, align 8
  %332 = load i8*, i8** %9, align 8
  %333 = icmp ne i8* %332, null
  br i1 %333, label %334, label %340

334:                                              ; preds = %325
  %335 = load i32, i32* @stderr, align 4
  %336 = load i8*, i8** @dump_query, align 8
  %337 = load i8*, i8** %9, align 8
  %338 = call i32 (i32, i8*, ...) @fprintf(i32 %335, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.10, i64 0, i64 0), i8* %336, i8* %337)
  %339 = call i32 @exit(i32 1) #4
  unreachable

340:                                              ; preds = %325
  %341 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dump_expr, i32 0, i32 0), align 8
  %342 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %341, i32 0, i32 0
  %343 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %342, i32 0, i32 0
  %344 = load i32, i32* %343, align 4
  %345 = call i64 @IS_STR(i32 %344)
  %346 = icmp ne i64 %345, 0
  br i1 %346, label %347, label %352

347:                                              ; preds = %340
  %348 = load i32, i32* @stderr, align 4
  %349 = load i8*, i8** @dump_query, align 8
  %350 = call i32 (i32, i8*, ...) @fprintf(i32 %348, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0), i8* %349)
  %351 = call i32 @exit(i32 1) #4
  unreachable

352:                                              ; preds = %340
  %353 = load %struct.TYPE_14__*, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dump_expr, i32 0, i32 0), align 8
  %354 = load i32, i32* @v_int, align 4
  %355 = call %struct.TYPE_14__* @tree_conv(%struct.TYPE_14__* %353, i32 %354)
  store %struct.TYPE_14__* %355, %struct.TYPE_14__** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @dump_expr, i32 0, i32 0), align 8
  br label %356

356:                                              ; preds = %352, %322
  %357 = load i64*, i64** @time_table_log_timestamp, align 8
  %358 = load i32, i32* %5, align 4
  %359 = sext i32 %358 to i64
  %360 = getelementptr inbounds i64, i64* %357, i64 %359
  %361 = load i64, i64* %360, align 8
  store i64 %361, i64* @jump_log_ts, align 8
  %362 = load i64*, i64** @time_table_log_position, align 8
  %363 = load i32, i32* %5, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds i64, i64* %362, i64 %364
  %366 = load i64, i64* %365, align 8
  store i64 %366, i64* @jump_log_pos, align 8
  %367 = load i64*, i64** @time_table_log_crc32, align 8
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = getelementptr inbounds i64, i64* %367, i64 %369
  %371 = load i64, i64* %370, align 8
  store i64 %371, i64* @jump_log_crc32, align 8
  br label %398

372:                                              ; preds = %206
  %373 = load i64, i64* @index_mode, align 8
  %374 = icmp ne i64 %373, 0
  br i1 %374, label %375, label %382

375:                                              ; preds = %372
  %376 = load i32, i32* @INDEX_TYPE, align 4
  %377 = icmp sge i32 %376, 1
  br i1 %377, label %378, label %382

378:                                              ; preds = %375
  %379 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 0), align 8
  %380 = icmp eq i64 %379, 0
  br i1 %380, label %381, label %382

381:                                              ; preds = %378
  store i64 0, i64* @jump_log_ts, align 8
  store i64 0, i64* @jump_log_pos, align 8
  store i64 0, i64* @jump_log_crc32, align 8
  br label %397

382:                                              ; preds = %378, %375, %372
  %383 = load i64, i64* @write_only, align 8
  %384 = icmp ne i64 %383, 0
  br i1 %384, label %385, label %392

385:                                              ; preds = %382
  %386 = load i64, i64* @index_mode, align 8
  %387 = icmp ne i64 %386, 0
  br i1 %387, label %392, label %388

388:                                              ; preds = %385
  %389 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 6), align 8
  store i64 %389, i64* @jump_log_ts, align 8
  %390 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 5), align 8
  store i64 %390, i64* @jump_log_pos, align 8
  %391 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 4), align 8
  store i64 %391, i64* @jump_log_crc32, align 8
  br label %396

392:                                              ; preds = %385, %382
  %393 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 3), align 8
  store i64 %393, i64* @jump_log_ts, align 8
  %394 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 2), align 8
  store i64 %394, i64* @jump_log_pos, align 8
  %395 = load i64, i64* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @header, i32 0, i32 1), align 8
  store i64 %395, i64* @jump_log_crc32, align 8
  br label %396

396:                                              ; preds = %392, %388
  br label %397

397:                                              ; preds = %396, %381
  br label %398

398:                                              ; preds = %397, %356
  %399 = load i32, i32* %4, align 4
  %400 = icmp ne i32 %399, 0
  br i1 %400, label %401, label %403

401:                                              ; preds = %398
  %402 = call i32 (...) @try_init_local_uid()
  br label %403

403:                                              ; preds = %401, %398
  %404 = load i32, i32* %4, align 4
  ret i32 %404
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @vector_init(i64*) #1

declare dso_local i32 @map_ll_int_init(i32*) #1

declare dso_local i8* @dl_malloc(i32) #1

declare dso_local i32* @dl_strdup(i8*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @add_field(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i32 @map_int_int_init(i32*) #1

declare dso_local i32 @load_index(i32) #1

declare dso_local i32 @load_stat_queries(...) #1

declare dso_local i32 @fprintf(i32, i8*, ...) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #3

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @split(i8*, i8**, i32*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @sscanf(i8*, i8*, i32*, i32*) #1

declare dso_local i8* @expression_compile(%struct.TYPE_17__*, i8*, %struct.TYPE_13__*) #1

declare dso_local i64 @IS_STR(i32) #1

declare dso_local %struct.TYPE_14__* @tree_conv(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @try_init_local_uid(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
