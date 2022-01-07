; ModuleID = '/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_retrieve_env.c'
source_filename = "/home/carl/AnghaBench/h2o/lib/handler/mruby/extr_middleware.c_retrieve_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32* }
%struct.st_mruby_env_foreach_data_t = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32, i8** }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [15 x i8] c"CONTENT_LENGTH\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"HTTP_HOST\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PATH_INFO\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"QUERY_STRING\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"REMOTE_ADDR\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"REMOTE_PORT\00", align 1
@.str.6 = private unnamed_addr constant [15 x i8] c"REQUEST_METHOD\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"SCRIPT_NAME\00", align 1
@.str.8 = private unnamed_addr constant [12 x i8] c"SERVER_ADDR\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"SERVER_NAME\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"SERVER_PORT\00", align 1
@.str.11 = private unnamed_addr constant [16 x i8] c"SERVER_PROTOCOL\00", align 1
@.str.12 = private unnamed_addr constant [16 x i8] c"SERVER_SOFTWARE\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"h2o.remaining_delegations\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"h2o.remaining_reprocesses\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"rack.errors\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c"rack.hijack?\00", align 1
@.str.17 = private unnamed_addr constant [11 x i8] c"rack.input\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"rack.multiprocess\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"rack.multithread\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"rack.run_once\00", align 1
@.str.21 = private unnamed_addr constant [16 x i8] c"rack.url_scheme\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"HTTP_\00", align 1
@handle_header_env_key = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_12__*, i32, i32, i8*)* @retrieve_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @retrieve_env(%struct.TYPE_12__* %0, i32 %1, i32 %2, i8* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.st_mruby_env_foreach_data_t*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  %16 = load i8*, i8** %9, align 8
  %17 = bitcast i8* %16 to %struct.st_mruby_env_foreach_data_t*
  store %struct.st_mruby_env_foreach_data_t* %17, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %3173

26:                                               ; preds = %4
  %27 = load i32, i32* %7, align 4
  %28 = call i8* @RSTRING_PTR(i32 %27)
  store i8* %28, i8** %11, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @RSTRING_LEN(i32 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp eq i64 14, %32
  br i1 %33, label %34, label %177

34:                                               ; preds = %26
  %35 = load i8*, i8** %11, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 0
  %37 = load i8, i8* %36, align 1
  %38 = sext i8 %37 to i32
  %39 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %38, %40
  br i1 %41, label %42, label %177

42:                                               ; preds = %34
  %43 = load i8*, i8** %11, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 1), align 1
  %48 = sext i8 %47 to i32
  %49 = icmp eq i32 %46, %48
  br i1 %49, label %50, label %177

50:                                               ; preds = %42
  %51 = load i8*, i8** %11, align 8
  %52 = getelementptr inbounds i8, i8* %51, i64 2
  %53 = load i8, i8* %52, align 1
  %54 = sext i8 %53 to i32
  %55 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 2), align 1
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %54, %56
  br i1 %57, label %58, label %177

58:                                               ; preds = %50
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = sext i8 %61 to i32
  %63 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 3), align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %66, label %177

66:                                               ; preds = %58
  %67 = load i8*, i8** %11, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 4
  %69 = load i8, i8* %68, align 1
  %70 = sext i8 %69 to i32
  %71 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 4), align 1
  %72 = sext i8 %71 to i32
  %73 = icmp eq i32 %70, %72
  br i1 %73, label %74, label %177

74:                                               ; preds = %66
  %75 = load i8*, i8** %11, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 5
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 5), align 1
  %80 = sext i8 %79 to i32
  %81 = icmp eq i32 %78, %80
  br i1 %81, label %82, label %177

82:                                               ; preds = %74
  %83 = load i8*, i8** %11, align 8
  %84 = getelementptr inbounds i8, i8* %83, i64 6
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 6), align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %177

90:                                               ; preds = %82
  %91 = load i8*, i8** %11, align 8
  %92 = getelementptr inbounds i8, i8* %91, i64 7
  %93 = load i8, i8* %92, align 1
  %94 = sext i8 %93 to i32
  %95 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 7), align 1
  %96 = sext i8 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %177

98:                                               ; preds = %90
  %99 = load i8*, i8** %11, align 8
  %100 = getelementptr inbounds i8, i8* %99, i64 8
  %101 = load i8, i8* %100, align 1
  %102 = sext i8 %101 to i32
  %103 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 8), align 1
  %104 = sext i8 %103 to i32
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %177

106:                                              ; preds = %98
  %107 = load i8*, i8** %11, align 8
  %108 = getelementptr inbounds i8, i8* %107, i64 9
  %109 = load i8, i8* %108, align 1
  %110 = sext i8 %109 to i32
  %111 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 9), align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %110, %112
  br i1 %113, label %114, label %177

114:                                              ; preds = %106
  %115 = load i8*, i8** %11, align 8
  %116 = getelementptr inbounds i8, i8* %115, i64 10
  %117 = load i8, i8* %116, align 1
  %118 = sext i8 %117 to i32
  %119 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 10), align 1
  %120 = sext i8 %119 to i32
  %121 = icmp eq i32 %118, %120
  br i1 %121, label %122, label %177

122:                                              ; preds = %114
  %123 = load i8*, i8** %11, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 11
  %125 = load i8, i8* %124, align 1
  %126 = sext i8 %125 to i32
  %127 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 11), align 1
  %128 = sext i8 %127 to i32
  %129 = icmp eq i32 %126, %128
  br i1 %129, label %130, label %177

130:                                              ; preds = %122
  %131 = load i8*, i8** %11, align 8
  %132 = getelementptr inbounds i8, i8* %131, i64 12
  %133 = load i8, i8* %132, align 1
  %134 = sext i8 %133 to i32
  %135 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 12), align 1
  %136 = sext i8 %135 to i32
  %137 = icmp eq i32 %134, %136
  br i1 %137, label %138, label %177

138:                                              ; preds = %130
  %139 = load i8*, i8** %11, align 8
  %140 = getelementptr inbounds i8, i8* %139, i64 13
  %141 = load i8, i8* %140, align 1
  %142 = sext i8 %141 to i32
  %143 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 13), align 1
  %144 = sext i8 %143 to i32
  %145 = icmp eq i32 %142, %144
  br i1 %145, label %146, label %177

146:                                              ; preds = %138
  %147 = call i32 (...) @mrb_nil_value()
  store i32 %147, i32* %13, align 4
  br label %148

148:                                              ; preds = %146
  %149 = load i32, i32* %8, align 4
  store i32 %149, i32* %13, align 4
  %150 = load i32, i32* %13, align 4
  %151 = call i32 @mrb_nil_p(i32 %150)
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %163, label %153

153:                                              ; preds = %148
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %155 = load i32, i32* %13, align 4
  %156 = call i32 (%struct.TYPE_12__*, i32, ...) bitcast (i32 (...)* @h2o_mruby_to_int to i32 (%struct.TYPE_12__*, i32, ...)*)(%struct.TYPE_12__* %154, i32 %155)
  store i32 %156, i32* %13, align 4
  %157 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %157, i32 0, i32 0
  %159 = load i32*, i32** %158, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %153
  store i32 -1, i32* %5, align 4
  br label %3173

162:                                              ; preds = %153
  br label %163

163:                                              ; preds = %162, %148
  br label %164

164:                                              ; preds = %163
  %165 = load i32, i32* %13, align 4
  %166 = call i32 @mrb_nil_p(i32 %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %176, label %168

168:                                              ; preds = %164
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @mrb_fixnum(i32 %169)
  %171 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %172 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %171, i32 0, i32 0
  %173 = load %struct.TYPE_11__*, %struct.TYPE_11__** %172, align 8
  %174 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %174, i32 0, i32 2
  store i32 %170, i32* %175, align 4
  br label %176

176:                                              ; preds = %168, %164
  br label %3172

177:                                              ; preds = %138, %130, %122, %114, %106, %98, %90, %82, %74, %66, %58, %50, %42, %34, %26
  %178 = load i32, i32* %12, align 4
  %179 = sext i32 %178 to i64
  %180 = icmp eq i64 9, %179
  br i1 %180, label %181, label %283

181:                                              ; preds = %177
  %182 = load i8*, i8** %11, align 8
  %183 = getelementptr inbounds i8, i8* %182, i64 0
  %184 = load i8, i8* %183, align 1
  %185 = sext i8 %184 to i32
  %186 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), align 1
  %187 = sext i8 %186 to i32
  %188 = icmp eq i32 %185, %187
  br i1 %188, label %189, label %283

189:                                              ; preds = %181
  %190 = load i8*, i8** %11, align 8
  %191 = getelementptr inbounds i8, i8* %190, i64 1
  %192 = load i8, i8* %191, align 1
  %193 = sext i8 %192 to i32
  %194 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 1), align 1
  %195 = sext i8 %194 to i32
  %196 = icmp eq i32 %193, %195
  br i1 %196, label %197, label %283

197:                                              ; preds = %189
  %198 = load i8*, i8** %11, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 2
  %200 = load i8, i8* %199, align 1
  %201 = sext i8 %200 to i32
  %202 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 2), align 1
  %203 = sext i8 %202 to i32
  %204 = icmp eq i32 %201, %203
  br i1 %204, label %205, label %283

205:                                              ; preds = %197
  %206 = load i8*, i8** %11, align 8
  %207 = getelementptr inbounds i8, i8* %206, i64 3
  %208 = load i8, i8* %207, align 1
  %209 = sext i8 %208 to i32
  %210 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 3), align 1
  %211 = sext i8 %210 to i32
  %212 = icmp eq i32 %209, %211
  br i1 %212, label %213, label %283

213:                                              ; preds = %205
  %214 = load i8*, i8** %11, align 8
  %215 = getelementptr inbounds i8, i8* %214, i64 4
  %216 = load i8, i8* %215, align 1
  %217 = sext i8 %216 to i32
  %218 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 4), align 1
  %219 = sext i8 %218 to i32
  %220 = icmp eq i32 %217, %219
  br i1 %220, label %221, label %283

221:                                              ; preds = %213
  %222 = load i8*, i8** %11, align 8
  %223 = getelementptr inbounds i8, i8* %222, i64 5
  %224 = load i8, i8* %223, align 1
  %225 = sext i8 %224 to i32
  %226 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 5), align 1
  %227 = sext i8 %226 to i32
  %228 = icmp eq i32 %225, %227
  br i1 %228, label %229, label %283

229:                                              ; preds = %221
  %230 = load i8*, i8** %11, align 8
  %231 = getelementptr inbounds i8, i8* %230, i64 6
  %232 = load i8, i8* %231, align 1
  %233 = sext i8 %232 to i32
  %234 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 6), align 1
  %235 = sext i8 %234 to i32
  %236 = icmp eq i32 %233, %235
  br i1 %236, label %237, label %283

237:                                              ; preds = %229
  %238 = load i8*, i8** %11, align 8
  %239 = getelementptr inbounds i8, i8* %238, i64 7
  %240 = load i8, i8* %239, align 1
  %241 = sext i8 %240 to i32
  %242 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 7), align 1
  %243 = sext i8 %242 to i32
  %244 = icmp eq i32 %241, %243
  br i1 %244, label %245, label %283

245:                                              ; preds = %237
  %246 = load i8*, i8** %11, align 8
  %247 = getelementptr inbounds i8, i8* %246, i64 8
  %248 = load i8, i8* %247, align 1
  %249 = sext i8 %248 to i32
  %250 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 8), align 1
  %251 = sext i8 %250 to i32
  %252 = icmp eq i32 %249, %251
  br i1 %252, label %253, label %283

253:                                              ; preds = %245
  br label %254

254:                                              ; preds = %253
  %255 = load i32, i32* %8, align 4
  %256 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %257 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %256, i32 0, i32 2
  %258 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %257, i32 0, i32 15
  store i32 %255, i32* %258, align 4
  %259 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %260 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %260, i32 0, i32 15
  %262 = load i32, i32* %261, align 4
  %263 = call i32 @mrb_nil_p(i32 %262)
  %264 = icmp ne i32 %263, 0
  br i1 %264, label %281, label %265

265:                                              ; preds = %254
  %266 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %267 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %268 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %267, i32 0, i32 2
  %269 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %268, i32 0, i32 15
  %270 = load i32, i32* %269, align 4
  %271 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %266, i32 %270)
  %272 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %273 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %272, i32 0, i32 2
  %274 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %273, i32 0, i32 15
  store i32 %271, i32* %274, align 4
  %275 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %276 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %275, i32 0, i32 0
  %277 = load i32*, i32** %276, align 8
  %278 = icmp ne i32* %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %265
  store i32 -1, i32* %5, align 4
  br label %3173

280:                                              ; preds = %265
  br label %281

281:                                              ; preds = %280, %254
  br label %282

282:                                              ; preds = %281
  br label %3171

283:                                              ; preds = %245, %237, %229, %221, %213, %205, %197, %189, %181, %177
  %284 = load i32, i32* %12, align 4
  %285 = sext i32 %284 to i64
  %286 = icmp eq i64 9, %285
  br i1 %286, label %287, label %389

287:                                              ; preds = %283
  %288 = load i8*, i8** %11, align 8
  %289 = getelementptr inbounds i8, i8* %288, i64 0
  %290 = load i8, i8* %289, align 1
  %291 = sext i8 %290 to i32
  %292 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), align 1
  %293 = sext i8 %292 to i32
  %294 = icmp eq i32 %291, %293
  br i1 %294, label %295, label %389

295:                                              ; preds = %287
  %296 = load i8*, i8** %11, align 8
  %297 = getelementptr inbounds i8, i8* %296, i64 1
  %298 = load i8, i8* %297, align 1
  %299 = sext i8 %298 to i32
  %300 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 1), align 1
  %301 = sext i8 %300 to i32
  %302 = icmp eq i32 %299, %301
  br i1 %302, label %303, label %389

303:                                              ; preds = %295
  %304 = load i8*, i8** %11, align 8
  %305 = getelementptr inbounds i8, i8* %304, i64 2
  %306 = load i8, i8* %305, align 1
  %307 = sext i8 %306 to i32
  %308 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 2), align 1
  %309 = sext i8 %308 to i32
  %310 = icmp eq i32 %307, %309
  br i1 %310, label %311, label %389

311:                                              ; preds = %303
  %312 = load i8*, i8** %11, align 8
  %313 = getelementptr inbounds i8, i8* %312, i64 3
  %314 = load i8, i8* %313, align 1
  %315 = sext i8 %314 to i32
  %316 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 3), align 1
  %317 = sext i8 %316 to i32
  %318 = icmp eq i32 %315, %317
  br i1 %318, label %319, label %389

319:                                              ; preds = %311
  %320 = load i8*, i8** %11, align 8
  %321 = getelementptr inbounds i8, i8* %320, i64 4
  %322 = load i8, i8* %321, align 1
  %323 = sext i8 %322 to i32
  %324 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 4), align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %323, %325
  br i1 %326, label %327, label %389

327:                                              ; preds = %319
  %328 = load i8*, i8** %11, align 8
  %329 = getelementptr inbounds i8, i8* %328, i64 5
  %330 = load i8, i8* %329, align 1
  %331 = sext i8 %330 to i32
  %332 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 5), align 1
  %333 = sext i8 %332 to i32
  %334 = icmp eq i32 %331, %333
  br i1 %334, label %335, label %389

335:                                              ; preds = %327
  %336 = load i8*, i8** %11, align 8
  %337 = getelementptr inbounds i8, i8* %336, i64 6
  %338 = load i8, i8* %337, align 1
  %339 = sext i8 %338 to i32
  %340 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 6), align 1
  %341 = sext i8 %340 to i32
  %342 = icmp eq i32 %339, %341
  br i1 %342, label %343, label %389

343:                                              ; preds = %335
  %344 = load i8*, i8** %11, align 8
  %345 = getelementptr inbounds i8, i8* %344, i64 7
  %346 = load i8, i8* %345, align 1
  %347 = sext i8 %346 to i32
  %348 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 7), align 1
  %349 = sext i8 %348 to i32
  %350 = icmp eq i32 %347, %349
  br i1 %350, label %351, label %389

351:                                              ; preds = %343
  %352 = load i8*, i8** %11, align 8
  %353 = getelementptr inbounds i8, i8* %352, i64 8
  %354 = load i8, i8* %353, align 1
  %355 = sext i8 %354 to i32
  %356 = load i8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 8), align 1
  %357 = sext i8 %356 to i32
  %358 = icmp eq i32 %355, %357
  br i1 %358, label %359, label %389

359:                                              ; preds = %351
  br label %360

360:                                              ; preds = %359
  %361 = load i32, i32* %8, align 4
  %362 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %363 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %362, i32 0, i32 2
  %364 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %363, i32 0, i32 14
  store i32 %361, i32* %364, align 8
  %365 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %366 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %365, i32 0, i32 2
  %367 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %366, i32 0, i32 14
  %368 = load i32, i32* %367, align 8
  %369 = call i32 @mrb_nil_p(i32 %368)
  %370 = icmp ne i32 %369, 0
  br i1 %370, label %387, label %371

371:                                              ; preds = %360
  %372 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %373 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %374 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %373, i32 0, i32 2
  %375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %374, i32 0, i32 14
  %376 = load i32, i32* %375, align 8
  %377 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %372, i32 %376)
  %378 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %379 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %378, i32 0, i32 2
  %380 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %379, i32 0, i32 14
  store i32 %377, i32* %380, align 8
  %381 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %382 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %381, i32 0, i32 0
  %383 = load i32*, i32** %382, align 8
  %384 = icmp ne i32* %383, null
  br i1 %384, label %385, label %386

385:                                              ; preds = %371
  store i32 -1, i32* %5, align 4
  br label %3173

386:                                              ; preds = %371
  br label %387

387:                                              ; preds = %386, %360
  br label %388

388:                                              ; preds = %387
  br label %3170

389:                                              ; preds = %351, %343, %335, %327, %319, %311, %303, %295, %287, %283
  %390 = load i32, i32* %12, align 4
  %391 = sext i32 %390 to i64
  %392 = icmp eq i64 12, %391
  br i1 %392, label %393, label %519

393:                                              ; preds = %389
  %394 = load i8*, i8** %11, align 8
  %395 = getelementptr inbounds i8, i8* %394, i64 0
  %396 = load i8, i8* %395, align 1
  %397 = sext i8 %396 to i32
  %398 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 0), align 1
  %399 = sext i8 %398 to i32
  %400 = icmp eq i32 %397, %399
  br i1 %400, label %401, label %519

401:                                              ; preds = %393
  %402 = load i8*, i8** %11, align 8
  %403 = getelementptr inbounds i8, i8* %402, i64 1
  %404 = load i8, i8* %403, align 1
  %405 = sext i8 %404 to i32
  %406 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 1), align 1
  %407 = sext i8 %406 to i32
  %408 = icmp eq i32 %405, %407
  br i1 %408, label %409, label %519

409:                                              ; preds = %401
  %410 = load i8*, i8** %11, align 8
  %411 = getelementptr inbounds i8, i8* %410, i64 2
  %412 = load i8, i8* %411, align 1
  %413 = sext i8 %412 to i32
  %414 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 2), align 1
  %415 = sext i8 %414 to i32
  %416 = icmp eq i32 %413, %415
  br i1 %416, label %417, label %519

417:                                              ; preds = %409
  %418 = load i8*, i8** %11, align 8
  %419 = getelementptr inbounds i8, i8* %418, i64 3
  %420 = load i8, i8* %419, align 1
  %421 = sext i8 %420 to i32
  %422 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 3), align 1
  %423 = sext i8 %422 to i32
  %424 = icmp eq i32 %421, %423
  br i1 %424, label %425, label %519

425:                                              ; preds = %417
  %426 = load i8*, i8** %11, align 8
  %427 = getelementptr inbounds i8, i8* %426, i64 4
  %428 = load i8, i8* %427, align 1
  %429 = sext i8 %428 to i32
  %430 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 4), align 1
  %431 = sext i8 %430 to i32
  %432 = icmp eq i32 %429, %431
  br i1 %432, label %433, label %519

433:                                              ; preds = %425
  %434 = load i8*, i8** %11, align 8
  %435 = getelementptr inbounds i8, i8* %434, i64 5
  %436 = load i8, i8* %435, align 1
  %437 = sext i8 %436 to i32
  %438 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 5), align 1
  %439 = sext i8 %438 to i32
  %440 = icmp eq i32 %437, %439
  br i1 %440, label %441, label %519

441:                                              ; preds = %433
  %442 = load i8*, i8** %11, align 8
  %443 = getelementptr inbounds i8, i8* %442, i64 6
  %444 = load i8, i8* %443, align 1
  %445 = sext i8 %444 to i32
  %446 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 6), align 1
  %447 = sext i8 %446 to i32
  %448 = icmp eq i32 %445, %447
  br i1 %448, label %449, label %519

449:                                              ; preds = %441
  %450 = load i8*, i8** %11, align 8
  %451 = getelementptr inbounds i8, i8* %450, i64 7
  %452 = load i8, i8* %451, align 1
  %453 = sext i8 %452 to i32
  %454 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 7), align 1
  %455 = sext i8 %454 to i32
  %456 = icmp eq i32 %453, %455
  br i1 %456, label %457, label %519

457:                                              ; preds = %449
  %458 = load i8*, i8** %11, align 8
  %459 = getelementptr inbounds i8, i8* %458, i64 8
  %460 = load i8, i8* %459, align 1
  %461 = sext i8 %460 to i32
  %462 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 8), align 1
  %463 = sext i8 %462 to i32
  %464 = icmp eq i32 %461, %463
  br i1 %464, label %465, label %519

465:                                              ; preds = %457
  %466 = load i8*, i8** %11, align 8
  %467 = getelementptr inbounds i8, i8* %466, i64 9
  %468 = load i8, i8* %467, align 1
  %469 = sext i8 %468 to i32
  %470 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 9), align 1
  %471 = sext i8 %470 to i32
  %472 = icmp eq i32 %469, %471
  br i1 %472, label %473, label %519

473:                                              ; preds = %465
  %474 = load i8*, i8** %11, align 8
  %475 = getelementptr inbounds i8, i8* %474, i64 10
  %476 = load i8, i8* %475, align 1
  %477 = sext i8 %476 to i32
  %478 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 10), align 1
  %479 = sext i8 %478 to i32
  %480 = icmp eq i32 %477, %479
  br i1 %480, label %481, label %519

481:                                              ; preds = %473
  %482 = load i8*, i8** %11, align 8
  %483 = getelementptr inbounds i8, i8* %482, i64 11
  %484 = load i8, i8* %483, align 1
  %485 = sext i8 %484 to i32
  %486 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i64 0, i64 11), align 1
  %487 = sext i8 %486 to i32
  %488 = icmp eq i32 %485, %487
  br i1 %488, label %489, label %519

489:                                              ; preds = %481
  br label %490

490:                                              ; preds = %489
  %491 = load i32, i32* %8, align 4
  %492 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %493 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %492, i32 0, i32 2
  %494 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %493, i32 0, i32 13
  store i32 %491, i32* %494, align 4
  %495 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %496 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %495, i32 0, i32 2
  %497 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %496, i32 0, i32 13
  %498 = load i32, i32* %497, align 4
  %499 = call i32 @mrb_nil_p(i32 %498)
  %500 = icmp ne i32 %499, 0
  br i1 %500, label %517, label %501

501:                                              ; preds = %490
  %502 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %503 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %504 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %503, i32 0, i32 2
  %505 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %504, i32 0, i32 13
  %506 = load i32, i32* %505, align 4
  %507 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %502, i32 %506)
  %508 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %509 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %508, i32 0, i32 2
  %510 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %509, i32 0, i32 13
  store i32 %507, i32* %510, align 4
  %511 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %512 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %511, i32 0, i32 0
  %513 = load i32*, i32** %512, align 8
  %514 = icmp ne i32* %513, null
  br i1 %514, label %515, label %516

515:                                              ; preds = %501
  store i32 -1, i32* %5, align 4
  br label %3173

516:                                              ; preds = %501
  br label %517

517:                                              ; preds = %516, %490
  br label %518

518:                                              ; preds = %517
  br label %3169

519:                                              ; preds = %481, %473, %465, %457, %449, %441, %433, %425, %417, %409, %401, %393, %389
  %520 = load i32, i32* %12, align 4
  %521 = sext i32 %520 to i64
  %522 = icmp eq i64 11, %521
  br i1 %522, label %523, label %641

523:                                              ; preds = %519
  %524 = load i8*, i8** %11, align 8
  %525 = getelementptr inbounds i8, i8* %524, i64 0
  %526 = load i8, i8* %525, align 1
  %527 = sext i8 %526 to i32
  %528 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0), align 1
  %529 = sext i8 %528 to i32
  %530 = icmp eq i32 %527, %529
  br i1 %530, label %531, label %641

531:                                              ; preds = %523
  %532 = load i8*, i8** %11, align 8
  %533 = getelementptr inbounds i8, i8* %532, i64 1
  %534 = load i8, i8* %533, align 1
  %535 = sext i8 %534 to i32
  %536 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 1), align 1
  %537 = sext i8 %536 to i32
  %538 = icmp eq i32 %535, %537
  br i1 %538, label %539, label %641

539:                                              ; preds = %531
  %540 = load i8*, i8** %11, align 8
  %541 = getelementptr inbounds i8, i8* %540, i64 2
  %542 = load i8, i8* %541, align 1
  %543 = sext i8 %542 to i32
  %544 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 2), align 1
  %545 = sext i8 %544 to i32
  %546 = icmp eq i32 %543, %545
  br i1 %546, label %547, label %641

547:                                              ; preds = %539
  %548 = load i8*, i8** %11, align 8
  %549 = getelementptr inbounds i8, i8* %548, i64 3
  %550 = load i8, i8* %549, align 1
  %551 = sext i8 %550 to i32
  %552 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 3), align 1
  %553 = sext i8 %552 to i32
  %554 = icmp eq i32 %551, %553
  br i1 %554, label %555, label %641

555:                                              ; preds = %547
  %556 = load i8*, i8** %11, align 8
  %557 = getelementptr inbounds i8, i8* %556, i64 4
  %558 = load i8, i8* %557, align 1
  %559 = sext i8 %558 to i32
  %560 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 4), align 1
  %561 = sext i8 %560 to i32
  %562 = icmp eq i32 %559, %561
  br i1 %562, label %563, label %641

563:                                              ; preds = %555
  %564 = load i8*, i8** %11, align 8
  %565 = getelementptr inbounds i8, i8* %564, i64 5
  %566 = load i8, i8* %565, align 1
  %567 = sext i8 %566 to i32
  %568 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 5), align 1
  %569 = sext i8 %568 to i32
  %570 = icmp eq i32 %567, %569
  br i1 %570, label %571, label %641

571:                                              ; preds = %563
  %572 = load i8*, i8** %11, align 8
  %573 = getelementptr inbounds i8, i8* %572, i64 6
  %574 = load i8, i8* %573, align 1
  %575 = sext i8 %574 to i32
  %576 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 6), align 1
  %577 = sext i8 %576 to i32
  %578 = icmp eq i32 %575, %577
  br i1 %578, label %579, label %641

579:                                              ; preds = %571
  %580 = load i8*, i8** %11, align 8
  %581 = getelementptr inbounds i8, i8* %580, i64 7
  %582 = load i8, i8* %581, align 1
  %583 = sext i8 %582 to i32
  %584 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 7), align 1
  %585 = sext i8 %584 to i32
  %586 = icmp eq i32 %583, %585
  br i1 %586, label %587, label %641

587:                                              ; preds = %579
  %588 = load i8*, i8** %11, align 8
  %589 = getelementptr inbounds i8, i8* %588, i64 8
  %590 = load i8, i8* %589, align 1
  %591 = sext i8 %590 to i32
  %592 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 8), align 1
  %593 = sext i8 %592 to i32
  %594 = icmp eq i32 %591, %593
  br i1 %594, label %595, label %641

595:                                              ; preds = %587
  %596 = load i8*, i8** %11, align 8
  %597 = getelementptr inbounds i8, i8* %596, i64 9
  %598 = load i8, i8* %597, align 1
  %599 = sext i8 %598 to i32
  %600 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 9), align 1
  %601 = sext i8 %600 to i32
  %602 = icmp eq i32 %599, %601
  br i1 %602, label %603, label %641

603:                                              ; preds = %595
  %604 = load i8*, i8** %11, align 8
  %605 = getelementptr inbounds i8, i8* %604, i64 10
  %606 = load i8, i8* %605, align 1
  %607 = sext i8 %606 to i32
  %608 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 10), align 1
  %609 = sext i8 %608 to i32
  %610 = icmp eq i32 %607, %609
  br i1 %610, label %611, label %641

611:                                              ; preds = %603
  br label %612

612:                                              ; preds = %611
  %613 = load i32, i32* %8, align 4
  %614 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %615 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %614, i32 0, i32 2
  %616 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %615, i32 0, i32 12
  store i32 %613, i32* %616, align 8
  %617 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %618 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %617, i32 0, i32 2
  %619 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %618, i32 0, i32 12
  %620 = load i32, i32* %619, align 8
  %621 = call i32 @mrb_nil_p(i32 %620)
  %622 = icmp ne i32 %621, 0
  br i1 %622, label %639, label %623

623:                                              ; preds = %612
  %624 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %625 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %626 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %625, i32 0, i32 2
  %627 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %626, i32 0, i32 12
  %628 = load i32, i32* %627, align 8
  %629 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %624, i32 %628)
  %630 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %631 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %630, i32 0, i32 2
  %632 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %631, i32 0, i32 12
  store i32 %629, i32* %632, align 8
  %633 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %634 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %633, i32 0, i32 0
  %635 = load i32*, i32** %634, align 8
  %636 = icmp ne i32* %635, null
  br i1 %636, label %637, label %638

637:                                              ; preds = %623
  store i32 -1, i32* %5, align 4
  br label %3173

638:                                              ; preds = %623
  br label %639

639:                                              ; preds = %638, %612
  br label %640

640:                                              ; preds = %639
  br label %3168

641:                                              ; preds = %603, %595, %587, %579, %571, %563, %555, %547, %539, %531, %523, %519
  %642 = load i32, i32* %12, align 4
  %643 = sext i32 %642 to i64
  %644 = icmp eq i64 11, %643
  br i1 %644, label %645, label %763

645:                                              ; preds = %641
  %646 = load i8*, i8** %11, align 8
  %647 = getelementptr inbounds i8, i8* %646, i64 0
  %648 = load i8, i8* %647, align 1
  %649 = sext i8 %648 to i32
  %650 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), align 1
  %651 = sext i8 %650 to i32
  %652 = icmp eq i32 %649, %651
  br i1 %652, label %653, label %763

653:                                              ; preds = %645
  %654 = load i8*, i8** %11, align 8
  %655 = getelementptr inbounds i8, i8* %654, i64 1
  %656 = load i8, i8* %655, align 1
  %657 = sext i8 %656 to i32
  %658 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 1), align 1
  %659 = sext i8 %658 to i32
  %660 = icmp eq i32 %657, %659
  br i1 %660, label %661, label %763

661:                                              ; preds = %653
  %662 = load i8*, i8** %11, align 8
  %663 = getelementptr inbounds i8, i8* %662, i64 2
  %664 = load i8, i8* %663, align 1
  %665 = sext i8 %664 to i32
  %666 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 2), align 1
  %667 = sext i8 %666 to i32
  %668 = icmp eq i32 %665, %667
  br i1 %668, label %669, label %763

669:                                              ; preds = %661
  %670 = load i8*, i8** %11, align 8
  %671 = getelementptr inbounds i8, i8* %670, i64 3
  %672 = load i8, i8* %671, align 1
  %673 = sext i8 %672 to i32
  %674 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 3), align 1
  %675 = sext i8 %674 to i32
  %676 = icmp eq i32 %673, %675
  br i1 %676, label %677, label %763

677:                                              ; preds = %669
  %678 = load i8*, i8** %11, align 8
  %679 = getelementptr inbounds i8, i8* %678, i64 4
  %680 = load i8, i8* %679, align 1
  %681 = sext i8 %680 to i32
  %682 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 4), align 1
  %683 = sext i8 %682 to i32
  %684 = icmp eq i32 %681, %683
  br i1 %684, label %685, label %763

685:                                              ; preds = %677
  %686 = load i8*, i8** %11, align 8
  %687 = getelementptr inbounds i8, i8* %686, i64 5
  %688 = load i8, i8* %687, align 1
  %689 = sext i8 %688 to i32
  %690 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 5), align 1
  %691 = sext i8 %690 to i32
  %692 = icmp eq i32 %689, %691
  br i1 %692, label %693, label %763

693:                                              ; preds = %685
  %694 = load i8*, i8** %11, align 8
  %695 = getelementptr inbounds i8, i8* %694, i64 6
  %696 = load i8, i8* %695, align 1
  %697 = sext i8 %696 to i32
  %698 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 6), align 1
  %699 = sext i8 %698 to i32
  %700 = icmp eq i32 %697, %699
  br i1 %700, label %701, label %763

701:                                              ; preds = %693
  %702 = load i8*, i8** %11, align 8
  %703 = getelementptr inbounds i8, i8* %702, i64 7
  %704 = load i8, i8* %703, align 1
  %705 = sext i8 %704 to i32
  %706 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 7), align 1
  %707 = sext i8 %706 to i32
  %708 = icmp eq i32 %705, %707
  br i1 %708, label %709, label %763

709:                                              ; preds = %701
  %710 = load i8*, i8** %11, align 8
  %711 = getelementptr inbounds i8, i8* %710, i64 8
  %712 = load i8, i8* %711, align 1
  %713 = sext i8 %712 to i32
  %714 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 8), align 1
  %715 = sext i8 %714 to i32
  %716 = icmp eq i32 %713, %715
  br i1 %716, label %717, label %763

717:                                              ; preds = %709
  %718 = load i8*, i8** %11, align 8
  %719 = getelementptr inbounds i8, i8* %718, i64 9
  %720 = load i8, i8* %719, align 1
  %721 = sext i8 %720 to i32
  %722 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 9), align 1
  %723 = sext i8 %722 to i32
  %724 = icmp eq i32 %721, %723
  br i1 %724, label %725, label %763

725:                                              ; preds = %717
  %726 = load i8*, i8** %11, align 8
  %727 = getelementptr inbounds i8, i8* %726, i64 10
  %728 = load i8, i8* %727, align 1
  %729 = sext i8 %728 to i32
  %730 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 10), align 1
  %731 = sext i8 %730 to i32
  %732 = icmp eq i32 %729, %731
  br i1 %732, label %733, label %763

733:                                              ; preds = %725
  br label %734

734:                                              ; preds = %733
  %735 = load i32, i32* %8, align 4
  %736 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %737 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %736, i32 0, i32 2
  %738 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %737, i32 0, i32 11
  store i32 %735, i32* %738, align 4
  %739 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %740 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %739, i32 0, i32 2
  %741 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %740, i32 0, i32 11
  %742 = load i32, i32* %741, align 4
  %743 = call i32 @mrb_nil_p(i32 %742)
  %744 = icmp ne i32 %743, 0
  br i1 %744, label %761, label %745

745:                                              ; preds = %734
  %746 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %747 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %748 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %747, i32 0, i32 2
  %749 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %748, i32 0, i32 11
  %750 = load i32, i32* %749, align 4
  %751 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %746, i32 %750)
  %752 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %753 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %752, i32 0, i32 2
  %754 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %753, i32 0, i32 11
  store i32 %751, i32* %754, align 4
  %755 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %756 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %755, i32 0, i32 0
  %757 = load i32*, i32** %756, align 8
  %758 = icmp ne i32* %757, null
  br i1 %758, label %759, label %760

759:                                              ; preds = %745
  store i32 -1, i32* %5, align 4
  br label %3173

760:                                              ; preds = %745
  br label %761

761:                                              ; preds = %760, %734
  br label %762

762:                                              ; preds = %761
  br label %3167

763:                                              ; preds = %725, %717, %709, %701, %693, %685, %677, %669, %661, %653, %645, %641
  %764 = load i32, i32* %12, align 4
  %765 = sext i32 %764 to i64
  %766 = icmp eq i64 14, %765
  br i1 %766, label %767, label %909

767:                                              ; preds = %763
  %768 = load i8*, i8** %11, align 8
  %769 = getelementptr inbounds i8, i8* %768, i64 0
  %770 = load i8, i8* %769, align 1
  %771 = sext i8 %770 to i32
  %772 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 0), align 1
  %773 = sext i8 %772 to i32
  %774 = icmp eq i32 %771, %773
  br i1 %774, label %775, label %909

775:                                              ; preds = %767
  %776 = load i8*, i8** %11, align 8
  %777 = getelementptr inbounds i8, i8* %776, i64 1
  %778 = load i8, i8* %777, align 1
  %779 = sext i8 %778 to i32
  %780 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 1), align 1
  %781 = sext i8 %780 to i32
  %782 = icmp eq i32 %779, %781
  br i1 %782, label %783, label %909

783:                                              ; preds = %775
  %784 = load i8*, i8** %11, align 8
  %785 = getelementptr inbounds i8, i8* %784, i64 2
  %786 = load i8, i8* %785, align 1
  %787 = sext i8 %786 to i32
  %788 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 2), align 1
  %789 = sext i8 %788 to i32
  %790 = icmp eq i32 %787, %789
  br i1 %790, label %791, label %909

791:                                              ; preds = %783
  %792 = load i8*, i8** %11, align 8
  %793 = getelementptr inbounds i8, i8* %792, i64 3
  %794 = load i8, i8* %793, align 1
  %795 = sext i8 %794 to i32
  %796 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 3), align 1
  %797 = sext i8 %796 to i32
  %798 = icmp eq i32 %795, %797
  br i1 %798, label %799, label %909

799:                                              ; preds = %791
  %800 = load i8*, i8** %11, align 8
  %801 = getelementptr inbounds i8, i8* %800, i64 4
  %802 = load i8, i8* %801, align 1
  %803 = sext i8 %802 to i32
  %804 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 4), align 1
  %805 = sext i8 %804 to i32
  %806 = icmp eq i32 %803, %805
  br i1 %806, label %807, label %909

807:                                              ; preds = %799
  %808 = load i8*, i8** %11, align 8
  %809 = getelementptr inbounds i8, i8* %808, i64 5
  %810 = load i8, i8* %809, align 1
  %811 = sext i8 %810 to i32
  %812 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 5), align 1
  %813 = sext i8 %812 to i32
  %814 = icmp eq i32 %811, %813
  br i1 %814, label %815, label %909

815:                                              ; preds = %807
  %816 = load i8*, i8** %11, align 8
  %817 = getelementptr inbounds i8, i8* %816, i64 6
  %818 = load i8, i8* %817, align 1
  %819 = sext i8 %818 to i32
  %820 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 6), align 1
  %821 = sext i8 %820 to i32
  %822 = icmp eq i32 %819, %821
  br i1 %822, label %823, label %909

823:                                              ; preds = %815
  %824 = load i8*, i8** %11, align 8
  %825 = getelementptr inbounds i8, i8* %824, i64 7
  %826 = load i8, i8* %825, align 1
  %827 = sext i8 %826 to i32
  %828 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 7), align 1
  %829 = sext i8 %828 to i32
  %830 = icmp eq i32 %827, %829
  br i1 %830, label %831, label %909

831:                                              ; preds = %823
  %832 = load i8*, i8** %11, align 8
  %833 = getelementptr inbounds i8, i8* %832, i64 8
  %834 = load i8, i8* %833, align 1
  %835 = sext i8 %834 to i32
  %836 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 8), align 1
  %837 = sext i8 %836 to i32
  %838 = icmp eq i32 %835, %837
  br i1 %838, label %839, label %909

839:                                              ; preds = %831
  %840 = load i8*, i8** %11, align 8
  %841 = getelementptr inbounds i8, i8* %840, i64 9
  %842 = load i8, i8* %841, align 1
  %843 = sext i8 %842 to i32
  %844 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 9), align 1
  %845 = sext i8 %844 to i32
  %846 = icmp eq i32 %843, %845
  br i1 %846, label %847, label %909

847:                                              ; preds = %839
  %848 = load i8*, i8** %11, align 8
  %849 = getelementptr inbounds i8, i8* %848, i64 10
  %850 = load i8, i8* %849, align 1
  %851 = sext i8 %850 to i32
  %852 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 10), align 1
  %853 = sext i8 %852 to i32
  %854 = icmp eq i32 %851, %853
  br i1 %854, label %855, label %909

855:                                              ; preds = %847
  %856 = load i8*, i8** %11, align 8
  %857 = getelementptr inbounds i8, i8* %856, i64 11
  %858 = load i8, i8* %857, align 1
  %859 = sext i8 %858 to i32
  %860 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 11), align 1
  %861 = sext i8 %860 to i32
  %862 = icmp eq i32 %859, %861
  br i1 %862, label %863, label %909

863:                                              ; preds = %855
  %864 = load i8*, i8** %11, align 8
  %865 = getelementptr inbounds i8, i8* %864, i64 12
  %866 = load i8, i8* %865, align 1
  %867 = sext i8 %866 to i32
  %868 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 12), align 1
  %869 = sext i8 %868 to i32
  %870 = icmp eq i32 %867, %869
  br i1 %870, label %871, label %909

871:                                              ; preds = %863
  %872 = load i8*, i8** %11, align 8
  %873 = getelementptr inbounds i8, i8* %872, i64 13
  %874 = load i8, i8* %873, align 1
  %875 = sext i8 %874 to i32
  %876 = load i8, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.6, i64 0, i64 13), align 1
  %877 = sext i8 %876 to i32
  %878 = icmp eq i32 %875, %877
  br i1 %878, label %879, label %909

879:                                              ; preds = %871
  br label %880

880:                                              ; preds = %879
  %881 = load i32, i32* %8, align 4
  %882 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %883 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %882, i32 0, i32 2
  %884 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %883, i32 0, i32 10
  store i32 %881, i32* %884, align 8
  %885 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %886 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %885, i32 0, i32 2
  %887 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %886, i32 0, i32 10
  %888 = load i32, i32* %887, align 8
  %889 = call i32 @mrb_nil_p(i32 %888)
  %890 = icmp ne i32 %889, 0
  br i1 %890, label %907, label %891

891:                                              ; preds = %880
  %892 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %893 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %894 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %893, i32 0, i32 2
  %895 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %894, i32 0, i32 10
  %896 = load i32, i32* %895, align 8
  %897 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %892, i32 %896)
  %898 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %899 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %898, i32 0, i32 2
  %900 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %899, i32 0, i32 10
  store i32 %897, i32* %900, align 8
  %901 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %902 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %901, i32 0, i32 0
  %903 = load i32*, i32** %902, align 8
  %904 = icmp ne i32* %903, null
  br i1 %904, label %905, label %906

905:                                              ; preds = %891
  store i32 -1, i32* %5, align 4
  br label %3173

906:                                              ; preds = %891
  br label %907

907:                                              ; preds = %906, %880
  br label %908

908:                                              ; preds = %907
  br label %3166

909:                                              ; preds = %871, %863, %855, %847, %839, %831, %823, %815, %807, %799, %791, %783, %775, %767, %763
  %910 = load i32, i32* %12, align 4
  %911 = sext i32 %910 to i64
  %912 = icmp eq i64 11, %911
  br i1 %912, label %913, label %1031

913:                                              ; preds = %909
  %914 = load i8*, i8** %11, align 8
  %915 = getelementptr inbounds i8, i8* %914, i64 0
  %916 = load i8, i8* %915, align 1
  %917 = sext i8 %916 to i32
  %918 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 0), align 1
  %919 = sext i8 %918 to i32
  %920 = icmp eq i32 %917, %919
  br i1 %920, label %921, label %1031

921:                                              ; preds = %913
  %922 = load i8*, i8** %11, align 8
  %923 = getelementptr inbounds i8, i8* %922, i64 1
  %924 = load i8, i8* %923, align 1
  %925 = sext i8 %924 to i32
  %926 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 1), align 1
  %927 = sext i8 %926 to i32
  %928 = icmp eq i32 %925, %927
  br i1 %928, label %929, label %1031

929:                                              ; preds = %921
  %930 = load i8*, i8** %11, align 8
  %931 = getelementptr inbounds i8, i8* %930, i64 2
  %932 = load i8, i8* %931, align 1
  %933 = sext i8 %932 to i32
  %934 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 2), align 1
  %935 = sext i8 %934 to i32
  %936 = icmp eq i32 %933, %935
  br i1 %936, label %937, label %1031

937:                                              ; preds = %929
  %938 = load i8*, i8** %11, align 8
  %939 = getelementptr inbounds i8, i8* %938, i64 3
  %940 = load i8, i8* %939, align 1
  %941 = sext i8 %940 to i32
  %942 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 3), align 1
  %943 = sext i8 %942 to i32
  %944 = icmp eq i32 %941, %943
  br i1 %944, label %945, label %1031

945:                                              ; preds = %937
  %946 = load i8*, i8** %11, align 8
  %947 = getelementptr inbounds i8, i8* %946, i64 4
  %948 = load i8, i8* %947, align 1
  %949 = sext i8 %948 to i32
  %950 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 4), align 1
  %951 = sext i8 %950 to i32
  %952 = icmp eq i32 %949, %951
  br i1 %952, label %953, label %1031

953:                                              ; preds = %945
  %954 = load i8*, i8** %11, align 8
  %955 = getelementptr inbounds i8, i8* %954, i64 5
  %956 = load i8, i8* %955, align 1
  %957 = sext i8 %956 to i32
  %958 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 5), align 1
  %959 = sext i8 %958 to i32
  %960 = icmp eq i32 %957, %959
  br i1 %960, label %961, label %1031

961:                                              ; preds = %953
  %962 = load i8*, i8** %11, align 8
  %963 = getelementptr inbounds i8, i8* %962, i64 6
  %964 = load i8, i8* %963, align 1
  %965 = sext i8 %964 to i32
  %966 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 6), align 1
  %967 = sext i8 %966 to i32
  %968 = icmp eq i32 %965, %967
  br i1 %968, label %969, label %1031

969:                                              ; preds = %961
  %970 = load i8*, i8** %11, align 8
  %971 = getelementptr inbounds i8, i8* %970, i64 7
  %972 = load i8, i8* %971, align 1
  %973 = sext i8 %972 to i32
  %974 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 7), align 1
  %975 = sext i8 %974 to i32
  %976 = icmp eq i32 %973, %975
  br i1 %976, label %977, label %1031

977:                                              ; preds = %969
  %978 = load i8*, i8** %11, align 8
  %979 = getelementptr inbounds i8, i8* %978, i64 8
  %980 = load i8, i8* %979, align 1
  %981 = sext i8 %980 to i32
  %982 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 8), align 1
  %983 = sext i8 %982 to i32
  %984 = icmp eq i32 %981, %983
  br i1 %984, label %985, label %1031

985:                                              ; preds = %977
  %986 = load i8*, i8** %11, align 8
  %987 = getelementptr inbounds i8, i8* %986, i64 9
  %988 = load i8, i8* %987, align 1
  %989 = sext i8 %988 to i32
  %990 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 9), align 1
  %991 = sext i8 %990 to i32
  %992 = icmp eq i32 %989, %991
  br i1 %992, label %993, label %1031

993:                                              ; preds = %985
  %994 = load i8*, i8** %11, align 8
  %995 = getelementptr inbounds i8, i8* %994, i64 10
  %996 = load i8, i8* %995, align 1
  %997 = sext i8 %996 to i32
  %998 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i64 0, i64 10), align 1
  %999 = sext i8 %998 to i32
  %1000 = icmp eq i32 %997, %999
  br i1 %1000, label %1001, label %1031

1001:                                             ; preds = %993
  br label %1002

1002:                                             ; preds = %1001
  %1003 = load i32, i32* %8, align 4
  %1004 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1005 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1004, i32 0, i32 2
  %1006 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1005, i32 0, i32 9
  store i32 %1003, i32* %1006, align 4
  %1007 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1008 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1007, i32 0, i32 2
  %1009 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1008, i32 0, i32 9
  %1010 = load i32, i32* %1009, align 4
  %1011 = call i32 @mrb_nil_p(i32 %1010)
  %1012 = icmp ne i32 %1011, 0
  br i1 %1012, label %1029, label %1013

1013:                                             ; preds = %1002
  %1014 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1015 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1016 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1015, i32 0, i32 2
  %1017 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1016, i32 0, i32 9
  %1018 = load i32, i32* %1017, align 4
  %1019 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %1014, i32 %1018)
  %1020 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1021 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1020, i32 0, i32 2
  %1022 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1021, i32 0, i32 9
  store i32 %1019, i32* %1022, align 4
  %1023 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1024 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1023, i32 0, i32 0
  %1025 = load i32*, i32** %1024, align 8
  %1026 = icmp ne i32* %1025, null
  br i1 %1026, label %1027, label %1028

1027:                                             ; preds = %1013
  store i32 -1, i32* %5, align 4
  br label %3173

1028:                                             ; preds = %1013
  br label %1029

1029:                                             ; preds = %1028, %1002
  br label %1030

1030:                                             ; preds = %1029
  br label %3165

1031:                                             ; preds = %993, %985, %977, %969, %961, %953, %945, %937, %929, %921, %913, %909
  %1032 = load i32, i32* %12, align 4
  %1033 = sext i32 %1032 to i64
  %1034 = icmp eq i64 11, %1033
  br i1 %1034, label %1035, label %1153

1035:                                             ; preds = %1031
  %1036 = load i8*, i8** %11, align 8
  %1037 = getelementptr inbounds i8, i8* %1036, i64 0
  %1038 = load i8, i8* %1037, align 1
  %1039 = sext i8 %1038 to i32
  %1040 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0), align 1
  %1041 = sext i8 %1040 to i32
  %1042 = icmp eq i32 %1039, %1041
  br i1 %1042, label %1043, label %1153

1043:                                             ; preds = %1035
  %1044 = load i8*, i8** %11, align 8
  %1045 = getelementptr inbounds i8, i8* %1044, i64 1
  %1046 = load i8, i8* %1045, align 1
  %1047 = sext i8 %1046 to i32
  %1048 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 1), align 1
  %1049 = sext i8 %1048 to i32
  %1050 = icmp eq i32 %1047, %1049
  br i1 %1050, label %1051, label %1153

1051:                                             ; preds = %1043
  %1052 = load i8*, i8** %11, align 8
  %1053 = getelementptr inbounds i8, i8* %1052, i64 2
  %1054 = load i8, i8* %1053, align 1
  %1055 = sext i8 %1054 to i32
  %1056 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 2), align 1
  %1057 = sext i8 %1056 to i32
  %1058 = icmp eq i32 %1055, %1057
  br i1 %1058, label %1059, label %1153

1059:                                             ; preds = %1051
  %1060 = load i8*, i8** %11, align 8
  %1061 = getelementptr inbounds i8, i8* %1060, i64 3
  %1062 = load i8, i8* %1061, align 1
  %1063 = sext i8 %1062 to i32
  %1064 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 3), align 1
  %1065 = sext i8 %1064 to i32
  %1066 = icmp eq i32 %1063, %1065
  br i1 %1066, label %1067, label %1153

1067:                                             ; preds = %1059
  %1068 = load i8*, i8** %11, align 8
  %1069 = getelementptr inbounds i8, i8* %1068, i64 4
  %1070 = load i8, i8* %1069, align 1
  %1071 = sext i8 %1070 to i32
  %1072 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 4), align 1
  %1073 = sext i8 %1072 to i32
  %1074 = icmp eq i32 %1071, %1073
  br i1 %1074, label %1075, label %1153

1075:                                             ; preds = %1067
  %1076 = load i8*, i8** %11, align 8
  %1077 = getelementptr inbounds i8, i8* %1076, i64 5
  %1078 = load i8, i8* %1077, align 1
  %1079 = sext i8 %1078 to i32
  %1080 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 5), align 1
  %1081 = sext i8 %1080 to i32
  %1082 = icmp eq i32 %1079, %1081
  br i1 %1082, label %1083, label %1153

1083:                                             ; preds = %1075
  %1084 = load i8*, i8** %11, align 8
  %1085 = getelementptr inbounds i8, i8* %1084, i64 6
  %1086 = load i8, i8* %1085, align 1
  %1087 = sext i8 %1086 to i32
  %1088 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 6), align 1
  %1089 = sext i8 %1088 to i32
  %1090 = icmp eq i32 %1087, %1089
  br i1 %1090, label %1091, label %1153

1091:                                             ; preds = %1083
  %1092 = load i8*, i8** %11, align 8
  %1093 = getelementptr inbounds i8, i8* %1092, i64 7
  %1094 = load i8, i8* %1093, align 1
  %1095 = sext i8 %1094 to i32
  %1096 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 7), align 1
  %1097 = sext i8 %1096 to i32
  %1098 = icmp eq i32 %1095, %1097
  br i1 %1098, label %1099, label %1153

1099:                                             ; preds = %1091
  %1100 = load i8*, i8** %11, align 8
  %1101 = getelementptr inbounds i8, i8* %1100, i64 8
  %1102 = load i8, i8* %1101, align 1
  %1103 = sext i8 %1102 to i32
  %1104 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 8), align 1
  %1105 = sext i8 %1104 to i32
  %1106 = icmp eq i32 %1103, %1105
  br i1 %1106, label %1107, label %1153

1107:                                             ; preds = %1099
  %1108 = load i8*, i8** %11, align 8
  %1109 = getelementptr inbounds i8, i8* %1108, i64 9
  %1110 = load i8, i8* %1109, align 1
  %1111 = sext i8 %1110 to i32
  %1112 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 9), align 1
  %1113 = sext i8 %1112 to i32
  %1114 = icmp eq i32 %1111, %1113
  br i1 %1114, label %1115, label %1153

1115:                                             ; preds = %1107
  %1116 = load i8*, i8** %11, align 8
  %1117 = getelementptr inbounds i8, i8* %1116, i64 10
  %1118 = load i8, i8* %1117, align 1
  %1119 = sext i8 %1118 to i32
  %1120 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 10), align 1
  %1121 = sext i8 %1120 to i32
  %1122 = icmp eq i32 %1119, %1121
  br i1 %1122, label %1123, label %1153

1123:                                             ; preds = %1115
  br label %1124

1124:                                             ; preds = %1123
  %1125 = load i32, i32* %8, align 4
  %1126 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1127 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1126, i32 0, i32 2
  %1128 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1127, i32 0, i32 8
  store i32 %1125, i32* %1128, align 8
  %1129 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1130 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1129, i32 0, i32 2
  %1131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1130, i32 0, i32 8
  %1132 = load i32, i32* %1131, align 8
  %1133 = call i32 @mrb_nil_p(i32 %1132)
  %1134 = icmp ne i32 %1133, 0
  br i1 %1134, label %1151, label %1135

1135:                                             ; preds = %1124
  %1136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1137 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1138 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1137, i32 0, i32 2
  %1139 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1138, i32 0, i32 8
  %1140 = load i32, i32* %1139, align 8
  %1141 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %1136, i32 %1140)
  %1142 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1143 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1142, i32 0, i32 2
  %1144 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1143, i32 0, i32 8
  store i32 %1141, i32* %1144, align 8
  %1145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1145, i32 0, i32 0
  %1147 = load i32*, i32** %1146, align 8
  %1148 = icmp ne i32* %1147, null
  br i1 %1148, label %1149, label %1150

1149:                                             ; preds = %1135
  store i32 -1, i32* %5, align 4
  br label %3173

1150:                                             ; preds = %1135
  br label %1151

1151:                                             ; preds = %1150, %1124
  br label %1152

1152:                                             ; preds = %1151
  br label %3164

1153:                                             ; preds = %1115, %1107, %1099, %1091, %1083, %1075, %1067, %1059, %1051, %1043, %1035, %1031
  %1154 = load i32, i32* %12, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = icmp eq i64 11, %1155
  br i1 %1156, label %1157, label %1275

1157:                                             ; preds = %1153
  %1158 = load i8*, i8** %11, align 8
  %1159 = getelementptr inbounds i8, i8* %1158, i64 0
  %1160 = load i8, i8* %1159, align 1
  %1161 = sext i8 %1160 to i32
  %1162 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0), align 1
  %1163 = sext i8 %1162 to i32
  %1164 = icmp eq i32 %1161, %1163
  br i1 %1164, label %1165, label %1275

1165:                                             ; preds = %1157
  %1166 = load i8*, i8** %11, align 8
  %1167 = getelementptr inbounds i8, i8* %1166, i64 1
  %1168 = load i8, i8* %1167, align 1
  %1169 = sext i8 %1168 to i32
  %1170 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 1), align 1
  %1171 = sext i8 %1170 to i32
  %1172 = icmp eq i32 %1169, %1171
  br i1 %1172, label %1173, label %1275

1173:                                             ; preds = %1165
  %1174 = load i8*, i8** %11, align 8
  %1175 = getelementptr inbounds i8, i8* %1174, i64 2
  %1176 = load i8, i8* %1175, align 1
  %1177 = sext i8 %1176 to i32
  %1178 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 2), align 1
  %1179 = sext i8 %1178 to i32
  %1180 = icmp eq i32 %1177, %1179
  br i1 %1180, label %1181, label %1275

1181:                                             ; preds = %1173
  %1182 = load i8*, i8** %11, align 8
  %1183 = getelementptr inbounds i8, i8* %1182, i64 3
  %1184 = load i8, i8* %1183, align 1
  %1185 = sext i8 %1184 to i32
  %1186 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 3), align 1
  %1187 = sext i8 %1186 to i32
  %1188 = icmp eq i32 %1185, %1187
  br i1 %1188, label %1189, label %1275

1189:                                             ; preds = %1181
  %1190 = load i8*, i8** %11, align 8
  %1191 = getelementptr inbounds i8, i8* %1190, i64 4
  %1192 = load i8, i8* %1191, align 1
  %1193 = sext i8 %1192 to i32
  %1194 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 4), align 1
  %1195 = sext i8 %1194 to i32
  %1196 = icmp eq i32 %1193, %1195
  br i1 %1196, label %1197, label %1275

1197:                                             ; preds = %1189
  %1198 = load i8*, i8** %11, align 8
  %1199 = getelementptr inbounds i8, i8* %1198, i64 5
  %1200 = load i8, i8* %1199, align 1
  %1201 = sext i8 %1200 to i32
  %1202 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 5), align 1
  %1203 = sext i8 %1202 to i32
  %1204 = icmp eq i32 %1201, %1203
  br i1 %1204, label %1205, label %1275

1205:                                             ; preds = %1197
  %1206 = load i8*, i8** %11, align 8
  %1207 = getelementptr inbounds i8, i8* %1206, i64 6
  %1208 = load i8, i8* %1207, align 1
  %1209 = sext i8 %1208 to i32
  %1210 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 6), align 1
  %1211 = sext i8 %1210 to i32
  %1212 = icmp eq i32 %1209, %1211
  br i1 %1212, label %1213, label %1275

1213:                                             ; preds = %1205
  %1214 = load i8*, i8** %11, align 8
  %1215 = getelementptr inbounds i8, i8* %1214, i64 7
  %1216 = load i8, i8* %1215, align 1
  %1217 = sext i8 %1216 to i32
  %1218 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 7), align 1
  %1219 = sext i8 %1218 to i32
  %1220 = icmp eq i32 %1217, %1219
  br i1 %1220, label %1221, label %1275

1221:                                             ; preds = %1213
  %1222 = load i8*, i8** %11, align 8
  %1223 = getelementptr inbounds i8, i8* %1222, i64 8
  %1224 = load i8, i8* %1223, align 1
  %1225 = sext i8 %1224 to i32
  %1226 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 8), align 1
  %1227 = sext i8 %1226 to i32
  %1228 = icmp eq i32 %1225, %1227
  br i1 %1228, label %1229, label %1275

1229:                                             ; preds = %1221
  %1230 = load i8*, i8** %11, align 8
  %1231 = getelementptr inbounds i8, i8* %1230, i64 9
  %1232 = load i8, i8* %1231, align 1
  %1233 = sext i8 %1232 to i32
  %1234 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 9), align 1
  %1235 = sext i8 %1234 to i32
  %1236 = icmp eq i32 %1233, %1235
  br i1 %1236, label %1237, label %1275

1237:                                             ; preds = %1229
  %1238 = load i8*, i8** %11, align 8
  %1239 = getelementptr inbounds i8, i8* %1238, i64 10
  %1240 = load i8, i8* %1239, align 1
  %1241 = sext i8 %1240 to i32
  %1242 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 10), align 1
  %1243 = sext i8 %1242 to i32
  %1244 = icmp eq i32 %1241, %1243
  br i1 %1244, label %1245, label %1275

1245:                                             ; preds = %1237
  br label %1246

1246:                                             ; preds = %1245
  %1247 = load i32, i32* %8, align 4
  %1248 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1249 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1248, i32 0, i32 2
  %1250 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1249, i32 0, i32 7
  store i32 %1247, i32* %1250, align 4
  %1251 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1252 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1251, i32 0, i32 2
  %1253 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1252, i32 0, i32 7
  %1254 = load i32, i32* %1253, align 4
  %1255 = call i32 @mrb_nil_p(i32 %1254)
  %1256 = icmp ne i32 %1255, 0
  br i1 %1256, label %1273, label %1257

1257:                                             ; preds = %1246
  %1258 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1259 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1260 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1259, i32 0, i32 2
  %1261 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1260, i32 0, i32 7
  %1262 = load i32, i32* %1261, align 4
  %1263 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %1258, i32 %1262)
  %1264 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1265 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1264, i32 0, i32 2
  %1266 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1265, i32 0, i32 7
  store i32 %1263, i32* %1266, align 4
  %1267 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1268 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1267, i32 0, i32 0
  %1269 = load i32*, i32** %1268, align 8
  %1270 = icmp ne i32* %1269, null
  br i1 %1270, label %1271, label %1272

1271:                                             ; preds = %1257
  store i32 -1, i32* %5, align 4
  br label %3173

1272:                                             ; preds = %1257
  br label %1273

1273:                                             ; preds = %1272, %1246
  br label %1274

1274:                                             ; preds = %1273
  br label %3163

1275:                                             ; preds = %1237, %1229, %1221, %1213, %1205, %1197, %1189, %1181, %1173, %1165, %1157, %1153
  %1276 = load i32, i32* %12, align 4
  %1277 = sext i32 %1276 to i64
  %1278 = icmp eq i64 11, %1277
  br i1 %1278, label %1279, label %1397

1279:                                             ; preds = %1275
  %1280 = load i8*, i8** %11, align 8
  %1281 = getelementptr inbounds i8, i8* %1280, i64 0
  %1282 = load i8, i8* %1281, align 1
  %1283 = sext i8 %1282 to i32
  %1284 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), align 1
  %1285 = sext i8 %1284 to i32
  %1286 = icmp eq i32 %1283, %1285
  br i1 %1286, label %1287, label %1397

1287:                                             ; preds = %1279
  %1288 = load i8*, i8** %11, align 8
  %1289 = getelementptr inbounds i8, i8* %1288, i64 1
  %1290 = load i8, i8* %1289, align 1
  %1291 = sext i8 %1290 to i32
  %1292 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 1), align 1
  %1293 = sext i8 %1292 to i32
  %1294 = icmp eq i32 %1291, %1293
  br i1 %1294, label %1295, label %1397

1295:                                             ; preds = %1287
  %1296 = load i8*, i8** %11, align 8
  %1297 = getelementptr inbounds i8, i8* %1296, i64 2
  %1298 = load i8, i8* %1297, align 1
  %1299 = sext i8 %1298 to i32
  %1300 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 2), align 1
  %1301 = sext i8 %1300 to i32
  %1302 = icmp eq i32 %1299, %1301
  br i1 %1302, label %1303, label %1397

1303:                                             ; preds = %1295
  %1304 = load i8*, i8** %11, align 8
  %1305 = getelementptr inbounds i8, i8* %1304, i64 3
  %1306 = load i8, i8* %1305, align 1
  %1307 = sext i8 %1306 to i32
  %1308 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 3), align 1
  %1309 = sext i8 %1308 to i32
  %1310 = icmp eq i32 %1307, %1309
  br i1 %1310, label %1311, label %1397

1311:                                             ; preds = %1303
  %1312 = load i8*, i8** %11, align 8
  %1313 = getelementptr inbounds i8, i8* %1312, i64 4
  %1314 = load i8, i8* %1313, align 1
  %1315 = sext i8 %1314 to i32
  %1316 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 4), align 1
  %1317 = sext i8 %1316 to i32
  %1318 = icmp eq i32 %1315, %1317
  br i1 %1318, label %1319, label %1397

1319:                                             ; preds = %1311
  %1320 = load i8*, i8** %11, align 8
  %1321 = getelementptr inbounds i8, i8* %1320, i64 5
  %1322 = load i8, i8* %1321, align 1
  %1323 = sext i8 %1322 to i32
  %1324 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 5), align 1
  %1325 = sext i8 %1324 to i32
  %1326 = icmp eq i32 %1323, %1325
  br i1 %1326, label %1327, label %1397

1327:                                             ; preds = %1319
  %1328 = load i8*, i8** %11, align 8
  %1329 = getelementptr inbounds i8, i8* %1328, i64 6
  %1330 = load i8, i8* %1329, align 1
  %1331 = sext i8 %1330 to i32
  %1332 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 6), align 1
  %1333 = sext i8 %1332 to i32
  %1334 = icmp eq i32 %1331, %1333
  br i1 %1334, label %1335, label %1397

1335:                                             ; preds = %1327
  %1336 = load i8*, i8** %11, align 8
  %1337 = getelementptr inbounds i8, i8* %1336, i64 7
  %1338 = load i8, i8* %1337, align 1
  %1339 = sext i8 %1338 to i32
  %1340 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 7), align 1
  %1341 = sext i8 %1340 to i32
  %1342 = icmp eq i32 %1339, %1341
  br i1 %1342, label %1343, label %1397

1343:                                             ; preds = %1335
  %1344 = load i8*, i8** %11, align 8
  %1345 = getelementptr inbounds i8, i8* %1344, i64 8
  %1346 = load i8, i8* %1345, align 1
  %1347 = sext i8 %1346 to i32
  %1348 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 8), align 1
  %1349 = sext i8 %1348 to i32
  %1350 = icmp eq i32 %1347, %1349
  br i1 %1350, label %1351, label %1397

1351:                                             ; preds = %1343
  %1352 = load i8*, i8** %11, align 8
  %1353 = getelementptr inbounds i8, i8* %1352, i64 9
  %1354 = load i8, i8* %1353, align 1
  %1355 = sext i8 %1354 to i32
  %1356 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 9), align 1
  %1357 = sext i8 %1356 to i32
  %1358 = icmp eq i32 %1355, %1357
  br i1 %1358, label %1359, label %1397

1359:                                             ; preds = %1351
  %1360 = load i8*, i8** %11, align 8
  %1361 = getelementptr inbounds i8, i8* %1360, i64 10
  %1362 = load i8, i8* %1361, align 1
  %1363 = sext i8 %1362 to i32
  %1364 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 10), align 1
  %1365 = sext i8 %1364 to i32
  %1366 = icmp eq i32 %1363, %1365
  br i1 %1366, label %1367, label %1397

1367:                                             ; preds = %1359
  br label %1368

1368:                                             ; preds = %1367
  %1369 = load i32, i32* %8, align 4
  %1370 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1371 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1370, i32 0, i32 2
  %1372 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1371, i32 0, i32 6
  store i32 %1369, i32* %1372, align 8
  %1373 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1374 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1373, i32 0, i32 2
  %1375 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1374, i32 0, i32 6
  %1376 = load i32, i32* %1375, align 8
  %1377 = call i32 @mrb_nil_p(i32 %1376)
  %1378 = icmp ne i32 %1377, 0
  br i1 %1378, label %1395, label %1379

1379:                                             ; preds = %1368
  %1380 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1381 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1382 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1381, i32 0, i32 2
  %1383 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1382, i32 0, i32 6
  %1384 = load i32, i32* %1383, align 8
  %1385 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %1380, i32 %1384)
  %1386 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1387 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1386, i32 0, i32 2
  %1388 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1387, i32 0, i32 6
  store i32 %1385, i32* %1388, align 8
  %1389 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1390 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1389, i32 0, i32 0
  %1391 = load i32*, i32** %1390, align 8
  %1392 = icmp ne i32* %1391, null
  br i1 %1392, label %1393, label %1394

1393:                                             ; preds = %1379
  store i32 -1, i32* %5, align 4
  br label %3173

1394:                                             ; preds = %1379
  br label %1395

1395:                                             ; preds = %1394, %1368
  br label %1396

1396:                                             ; preds = %1395
  br label %3162

1397:                                             ; preds = %1359, %1351, %1343, %1335, %1327, %1319, %1311, %1303, %1295, %1287, %1279, %1275
  %1398 = load i32, i32* %12, align 4
  %1399 = sext i32 %1398 to i64
  %1400 = icmp eq i64 15, %1399
  br i1 %1400, label %1401, label %1551

1401:                                             ; preds = %1397
  %1402 = load i8*, i8** %11, align 8
  %1403 = getelementptr inbounds i8, i8* %1402, i64 0
  %1404 = load i8, i8* %1403, align 1
  %1405 = sext i8 %1404 to i32
  %1406 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0), align 1
  %1407 = sext i8 %1406 to i32
  %1408 = icmp eq i32 %1405, %1407
  br i1 %1408, label %1409, label %1551

1409:                                             ; preds = %1401
  %1410 = load i8*, i8** %11, align 8
  %1411 = getelementptr inbounds i8, i8* %1410, i64 1
  %1412 = load i8, i8* %1411, align 1
  %1413 = sext i8 %1412 to i32
  %1414 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 1), align 1
  %1415 = sext i8 %1414 to i32
  %1416 = icmp eq i32 %1413, %1415
  br i1 %1416, label %1417, label %1551

1417:                                             ; preds = %1409
  %1418 = load i8*, i8** %11, align 8
  %1419 = getelementptr inbounds i8, i8* %1418, i64 2
  %1420 = load i8, i8* %1419, align 1
  %1421 = sext i8 %1420 to i32
  %1422 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 2), align 1
  %1423 = sext i8 %1422 to i32
  %1424 = icmp eq i32 %1421, %1423
  br i1 %1424, label %1425, label %1551

1425:                                             ; preds = %1417
  %1426 = load i8*, i8** %11, align 8
  %1427 = getelementptr inbounds i8, i8* %1426, i64 3
  %1428 = load i8, i8* %1427, align 1
  %1429 = sext i8 %1428 to i32
  %1430 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 3), align 1
  %1431 = sext i8 %1430 to i32
  %1432 = icmp eq i32 %1429, %1431
  br i1 %1432, label %1433, label %1551

1433:                                             ; preds = %1425
  %1434 = load i8*, i8** %11, align 8
  %1435 = getelementptr inbounds i8, i8* %1434, i64 4
  %1436 = load i8, i8* %1435, align 1
  %1437 = sext i8 %1436 to i32
  %1438 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 4), align 1
  %1439 = sext i8 %1438 to i32
  %1440 = icmp eq i32 %1437, %1439
  br i1 %1440, label %1441, label %1551

1441:                                             ; preds = %1433
  %1442 = load i8*, i8** %11, align 8
  %1443 = getelementptr inbounds i8, i8* %1442, i64 5
  %1444 = load i8, i8* %1443, align 1
  %1445 = sext i8 %1444 to i32
  %1446 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 5), align 1
  %1447 = sext i8 %1446 to i32
  %1448 = icmp eq i32 %1445, %1447
  br i1 %1448, label %1449, label %1551

1449:                                             ; preds = %1441
  %1450 = load i8*, i8** %11, align 8
  %1451 = getelementptr inbounds i8, i8* %1450, i64 6
  %1452 = load i8, i8* %1451, align 1
  %1453 = sext i8 %1452 to i32
  %1454 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 6), align 1
  %1455 = sext i8 %1454 to i32
  %1456 = icmp eq i32 %1453, %1455
  br i1 %1456, label %1457, label %1551

1457:                                             ; preds = %1449
  %1458 = load i8*, i8** %11, align 8
  %1459 = getelementptr inbounds i8, i8* %1458, i64 7
  %1460 = load i8, i8* %1459, align 1
  %1461 = sext i8 %1460 to i32
  %1462 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 7), align 1
  %1463 = sext i8 %1462 to i32
  %1464 = icmp eq i32 %1461, %1463
  br i1 %1464, label %1465, label %1551

1465:                                             ; preds = %1457
  %1466 = load i8*, i8** %11, align 8
  %1467 = getelementptr inbounds i8, i8* %1466, i64 8
  %1468 = load i8, i8* %1467, align 1
  %1469 = sext i8 %1468 to i32
  %1470 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 8), align 1
  %1471 = sext i8 %1470 to i32
  %1472 = icmp eq i32 %1469, %1471
  br i1 %1472, label %1473, label %1551

1473:                                             ; preds = %1465
  %1474 = load i8*, i8** %11, align 8
  %1475 = getelementptr inbounds i8, i8* %1474, i64 9
  %1476 = load i8, i8* %1475, align 1
  %1477 = sext i8 %1476 to i32
  %1478 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 9), align 1
  %1479 = sext i8 %1478 to i32
  %1480 = icmp eq i32 %1477, %1479
  br i1 %1480, label %1481, label %1551

1481:                                             ; preds = %1473
  %1482 = load i8*, i8** %11, align 8
  %1483 = getelementptr inbounds i8, i8* %1482, i64 10
  %1484 = load i8, i8* %1483, align 1
  %1485 = sext i8 %1484 to i32
  %1486 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 10), align 1
  %1487 = sext i8 %1486 to i32
  %1488 = icmp eq i32 %1485, %1487
  br i1 %1488, label %1489, label %1551

1489:                                             ; preds = %1481
  %1490 = load i8*, i8** %11, align 8
  %1491 = getelementptr inbounds i8, i8* %1490, i64 11
  %1492 = load i8, i8* %1491, align 1
  %1493 = sext i8 %1492 to i32
  %1494 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 11), align 1
  %1495 = sext i8 %1494 to i32
  %1496 = icmp eq i32 %1493, %1495
  br i1 %1496, label %1497, label %1551

1497:                                             ; preds = %1489
  %1498 = load i8*, i8** %11, align 8
  %1499 = getelementptr inbounds i8, i8* %1498, i64 12
  %1500 = load i8, i8* %1499, align 1
  %1501 = sext i8 %1500 to i32
  %1502 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 12), align 1
  %1503 = sext i8 %1502 to i32
  %1504 = icmp eq i32 %1501, %1503
  br i1 %1504, label %1505, label %1551

1505:                                             ; preds = %1497
  %1506 = load i8*, i8** %11, align 8
  %1507 = getelementptr inbounds i8, i8* %1506, i64 13
  %1508 = load i8, i8* %1507, align 1
  %1509 = sext i8 %1508 to i32
  %1510 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 13), align 1
  %1511 = sext i8 %1510 to i32
  %1512 = icmp eq i32 %1509, %1511
  br i1 %1512, label %1513, label %1551

1513:                                             ; preds = %1505
  %1514 = load i8*, i8** %11, align 8
  %1515 = getelementptr inbounds i8, i8* %1514, i64 14
  %1516 = load i8, i8* %1515, align 1
  %1517 = sext i8 %1516 to i32
  %1518 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 14), align 1
  %1519 = sext i8 %1518 to i32
  %1520 = icmp eq i32 %1517, %1519
  br i1 %1520, label %1521, label %1551

1521:                                             ; preds = %1513
  br label %1522

1522:                                             ; preds = %1521
  %1523 = load i32, i32* %8, align 4
  %1524 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1525 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1524, i32 0, i32 2
  %1526 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1525, i32 0, i32 5
  store i32 %1523, i32* %1526, align 4
  %1527 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1528 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1527, i32 0, i32 2
  %1529 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1528, i32 0, i32 5
  %1530 = load i32, i32* %1529, align 4
  %1531 = call i32 @mrb_nil_p(i32 %1530)
  %1532 = icmp ne i32 %1531, 0
  br i1 %1532, label %1549, label %1533

1533:                                             ; preds = %1522
  %1534 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1535 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1536 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1535, i32 0, i32 2
  %1537 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1536, i32 0, i32 5
  %1538 = load i32, i32* %1537, align 4
  %1539 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %1534, i32 %1538)
  %1540 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1541 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1540, i32 0, i32 2
  %1542 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1541, i32 0, i32 5
  store i32 %1539, i32* %1542, align 4
  %1543 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1544 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1543, i32 0, i32 0
  %1545 = load i32*, i32** %1544, align 8
  %1546 = icmp ne i32* %1545, null
  br i1 %1546, label %1547, label %1548

1547:                                             ; preds = %1533
  store i32 -1, i32* %5, align 4
  br label %3173

1548:                                             ; preds = %1533
  br label %1549

1549:                                             ; preds = %1548, %1522
  br label %1550

1550:                                             ; preds = %1549
  br label %3161

1551:                                             ; preds = %1513, %1505, %1497, %1489, %1481, %1473, %1465, %1457, %1449, %1441, %1433, %1425, %1417, %1409, %1401, %1397
  %1552 = load i32, i32* %12, align 4
  %1553 = sext i32 %1552 to i64
  %1554 = icmp eq i64 15, %1553
  br i1 %1554, label %1555, label %1676

1555:                                             ; preds = %1551
  %1556 = load i8*, i8** %11, align 8
  %1557 = getelementptr inbounds i8, i8* %1556, i64 0
  %1558 = load i8, i8* %1557, align 1
  %1559 = sext i8 %1558 to i32
  %1560 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 0), align 1
  %1561 = sext i8 %1560 to i32
  %1562 = icmp eq i32 %1559, %1561
  br i1 %1562, label %1563, label %1676

1563:                                             ; preds = %1555
  %1564 = load i8*, i8** %11, align 8
  %1565 = getelementptr inbounds i8, i8* %1564, i64 1
  %1566 = load i8, i8* %1565, align 1
  %1567 = sext i8 %1566 to i32
  %1568 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 1), align 1
  %1569 = sext i8 %1568 to i32
  %1570 = icmp eq i32 %1567, %1569
  br i1 %1570, label %1571, label %1676

1571:                                             ; preds = %1563
  %1572 = load i8*, i8** %11, align 8
  %1573 = getelementptr inbounds i8, i8* %1572, i64 2
  %1574 = load i8, i8* %1573, align 1
  %1575 = sext i8 %1574 to i32
  %1576 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 2), align 1
  %1577 = sext i8 %1576 to i32
  %1578 = icmp eq i32 %1575, %1577
  br i1 %1578, label %1579, label %1676

1579:                                             ; preds = %1571
  %1580 = load i8*, i8** %11, align 8
  %1581 = getelementptr inbounds i8, i8* %1580, i64 3
  %1582 = load i8, i8* %1581, align 1
  %1583 = sext i8 %1582 to i32
  %1584 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 3), align 1
  %1585 = sext i8 %1584 to i32
  %1586 = icmp eq i32 %1583, %1585
  br i1 %1586, label %1587, label %1676

1587:                                             ; preds = %1579
  %1588 = load i8*, i8** %11, align 8
  %1589 = getelementptr inbounds i8, i8* %1588, i64 4
  %1590 = load i8, i8* %1589, align 1
  %1591 = sext i8 %1590 to i32
  %1592 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 4), align 1
  %1593 = sext i8 %1592 to i32
  %1594 = icmp eq i32 %1591, %1593
  br i1 %1594, label %1595, label %1676

1595:                                             ; preds = %1587
  %1596 = load i8*, i8** %11, align 8
  %1597 = getelementptr inbounds i8, i8* %1596, i64 5
  %1598 = load i8, i8* %1597, align 1
  %1599 = sext i8 %1598 to i32
  %1600 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 5), align 1
  %1601 = sext i8 %1600 to i32
  %1602 = icmp eq i32 %1599, %1601
  br i1 %1602, label %1603, label %1676

1603:                                             ; preds = %1595
  %1604 = load i8*, i8** %11, align 8
  %1605 = getelementptr inbounds i8, i8* %1604, i64 6
  %1606 = load i8, i8* %1605, align 1
  %1607 = sext i8 %1606 to i32
  %1608 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 6), align 1
  %1609 = sext i8 %1608 to i32
  %1610 = icmp eq i32 %1607, %1609
  br i1 %1610, label %1611, label %1676

1611:                                             ; preds = %1603
  %1612 = load i8*, i8** %11, align 8
  %1613 = getelementptr inbounds i8, i8* %1612, i64 7
  %1614 = load i8, i8* %1613, align 1
  %1615 = sext i8 %1614 to i32
  %1616 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 7), align 1
  %1617 = sext i8 %1616 to i32
  %1618 = icmp eq i32 %1615, %1617
  br i1 %1618, label %1619, label %1676

1619:                                             ; preds = %1611
  %1620 = load i8*, i8** %11, align 8
  %1621 = getelementptr inbounds i8, i8* %1620, i64 8
  %1622 = load i8, i8* %1621, align 1
  %1623 = sext i8 %1622 to i32
  %1624 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 8), align 1
  %1625 = sext i8 %1624 to i32
  %1626 = icmp eq i32 %1623, %1625
  br i1 %1626, label %1627, label %1676

1627:                                             ; preds = %1619
  %1628 = load i8*, i8** %11, align 8
  %1629 = getelementptr inbounds i8, i8* %1628, i64 9
  %1630 = load i8, i8* %1629, align 1
  %1631 = sext i8 %1630 to i32
  %1632 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 9), align 1
  %1633 = sext i8 %1632 to i32
  %1634 = icmp eq i32 %1631, %1633
  br i1 %1634, label %1635, label %1676

1635:                                             ; preds = %1627
  %1636 = load i8*, i8** %11, align 8
  %1637 = getelementptr inbounds i8, i8* %1636, i64 10
  %1638 = load i8, i8* %1637, align 1
  %1639 = sext i8 %1638 to i32
  %1640 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 10), align 1
  %1641 = sext i8 %1640 to i32
  %1642 = icmp eq i32 %1639, %1641
  br i1 %1642, label %1643, label %1676

1643:                                             ; preds = %1635
  %1644 = load i8*, i8** %11, align 8
  %1645 = getelementptr inbounds i8, i8* %1644, i64 11
  %1646 = load i8, i8* %1645, align 1
  %1647 = sext i8 %1646 to i32
  %1648 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 11), align 1
  %1649 = sext i8 %1648 to i32
  %1650 = icmp eq i32 %1647, %1649
  br i1 %1650, label %1651, label %1676

1651:                                             ; preds = %1643
  %1652 = load i8*, i8** %11, align 8
  %1653 = getelementptr inbounds i8, i8* %1652, i64 12
  %1654 = load i8, i8* %1653, align 1
  %1655 = sext i8 %1654 to i32
  %1656 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 12), align 1
  %1657 = sext i8 %1656 to i32
  %1658 = icmp eq i32 %1655, %1657
  br i1 %1658, label %1659, label %1676

1659:                                             ; preds = %1651
  %1660 = load i8*, i8** %11, align 8
  %1661 = getelementptr inbounds i8, i8* %1660, i64 13
  %1662 = load i8, i8* %1661, align 1
  %1663 = sext i8 %1662 to i32
  %1664 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 13), align 1
  %1665 = sext i8 %1664 to i32
  %1666 = icmp eq i32 %1663, %1665
  br i1 %1666, label %1667, label %1676

1667:                                             ; preds = %1659
  %1668 = load i8*, i8** %11, align 8
  %1669 = getelementptr inbounds i8, i8* %1668, i64 14
  %1670 = load i8, i8* %1669, align 1
  %1671 = sext i8 %1670 to i32
  %1672 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.12, i64 0, i64 14), align 1
  %1673 = sext i8 %1672 to i32
  %1674 = icmp eq i32 %1671, %1673
  br i1 %1674, label %1675, label %1676

1675:                                             ; preds = %1667
  br label %3160

1676:                                             ; preds = %1667, %1659, %1651, %1643, %1635, %1627, %1619, %1611, %1603, %1595, %1587, %1579, %1571, %1563, %1555, %1551
  %1677 = load i32, i32* %12, align 4
  %1678 = sext i32 %1677 to i64
  %1679 = icmp eq i64 25, %1678
  br i1 %1679, label %1680, label %1910

1680:                                             ; preds = %1676
  %1681 = load i8*, i8** %11, align 8
  %1682 = getelementptr inbounds i8, i8* %1681, i64 0
  %1683 = load i8, i8* %1682, align 1
  %1684 = sext i8 %1683 to i32
  %1685 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 0), align 1
  %1686 = sext i8 %1685 to i32
  %1687 = icmp eq i32 %1684, %1686
  br i1 %1687, label %1688, label %1910

1688:                                             ; preds = %1680
  %1689 = load i8*, i8** %11, align 8
  %1690 = getelementptr inbounds i8, i8* %1689, i64 1
  %1691 = load i8, i8* %1690, align 1
  %1692 = sext i8 %1691 to i32
  %1693 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 1), align 1
  %1694 = sext i8 %1693 to i32
  %1695 = icmp eq i32 %1692, %1694
  br i1 %1695, label %1696, label %1910

1696:                                             ; preds = %1688
  %1697 = load i8*, i8** %11, align 8
  %1698 = getelementptr inbounds i8, i8* %1697, i64 2
  %1699 = load i8, i8* %1698, align 1
  %1700 = sext i8 %1699 to i32
  %1701 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 2), align 1
  %1702 = sext i8 %1701 to i32
  %1703 = icmp eq i32 %1700, %1702
  br i1 %1703, label %1704, label %1910

1704:                                             ; preds = %1696
  %1705 = load i8*, i8** %11, align 8
  %1706 = getelementptr inbounds i8, i8* %1705, i64 3
  %1707 = load i8, i8* %1706, align 1
  %1708 = sext i8 %1707 to i32
  %1709 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 3), align 1
  %1710 = sext i8 %1709 to i32
  %1711 = icmp eq i32 %1708, %1710
  br i1 %1711, label %1712, label %1910

1712:                                             ; preds = %1704
  %1713 = load i8*, i8** %11, align 8
  %1714 = getelementptr inbounds i8, i8* %1713, i64 4
  %1715 = load i8, i8* %1714, align 1
  %1716 = sext i8 %1715 to i32
  %1717 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 4), align 1
  %1718 = sext i8 %1717 to i32
  %1719 = icmp eq i32 %1716, %1718
  br i1 %1719, label %1720, label %1910

1720:                                             ; preds = %1712
  %1721 = load i8*, i8** %11, align 8
  %1722 = getelementptr inbounds i8, i8* %1721, i64 5
  %1723 = load i8, i8* %1722, align 1
  %1724 = sext i8 %1723 to i32
  %1725 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 5), align 1
  %1726 = sext i8 %1725 to i32
  %1727 = icmp eq i32 %1724, %1726
  br i1 %1727, label %1728, label %1910

1728:                                             ; preds = %1720
  %1729 = load i8*, i8** %11, align 8
  %1730 = getelementptr inbounds i8, i8* %1729, i64 6
  %1731 = load i8, i8* %1730, align 1
  %1732 = sext i8 %1731 to i32
  %1733 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 6), align 1
  %1734 = sext i8 %1733 to i32
  %1735 = icmp eq i32 %1732, %1734
  br i1 %1735, label %1736, label %1910

1736:                                             ; preds = %1728
  %1737 = load i8*, i8** %11, align 8
  %1738 = getelementptr inbounds i8, i8* %1737, i64 7
  %1739 = load i8, i8* %1738, align 1
  %1740 = sext i8 %1739 to i32
  %1741 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 7), align 1
  %1742 = sext i8 %1741 to i32
  %1743 = icmp eq i32 %1740, %1742
  br i1 %1743, label %1744, label %1910

1744:                                             ; preds = %1736
  %1745 = load i8*, i8** %11, align 8
  %1746 = getelementptr inbounds i8, i8* %1745, i64 8
  %1747 = load i8, i8* %1746, align 1
  %1748 = sext i8 %1747 to i32
  %1749 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 8), align 1
  %1750 = sext i8 %1749 to i32
  %1751 = icmp eq i32 %1748, %1750
  br i1 %1751, label %1752, label %1910

1752:                                             ; preds = %1744
  %1753 = load i8*, i8** %11, align 8
  %1754 = getelementptr inbounds i8, i8* %1753, i64 9
  %1755 = load i8, i8* %1754, align 1
  %1756 = sext i8 %1755 to i32
  %1757 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 9), align 1
  %1758 = sext i8 %1757 to i32
  %1759 = icmp eq i32 %1756, %1758
  br i1 %1759, label %1760, label %1910

1760:                                             ; preds = %1752
  %1761 = load i8*, i8** %11, align 8
  %1762 = getelementptr inbounds i8, i8* %1761, i64 10
  %1763 = load i8, i8* %1762, align 1
  %1764 = sext i8 %1763 to i32
  %1765 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 10), align 1
  %1766 = sext i8 %1765 to i32
  %1767 = icmp eq i32 %1764, %1766
  br i1 %1767, label %1768, label %1910

1768:                                             ; preds = %1760
  %1769 = load i8*, i8** %11, align 8
  %1770 = getelementptr inbounds i8, i8* %1769, i64 11
  %1771 = load i8, i8* %1770, align 1
  %1772 = sext i8 %1771 to i32
  %1773 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 11), align 1
  %1774 = sext i8 %1773 to i32
  %1775 = icmp eq i32 %1772, %1774
  br i1 %1775, label %1776, label %1910

1776:                                             ; preds = %1768
  %1777 = load i8*, i8** %11, align 8
  %1778 = getelementptr inbounds i8, i8* %1777, i64 12
  %1779 = load i8, i8* %1778, align 1
  %1780 = sext i8 %1779 to i32
  %1781 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 12), align 1
  %1782 = sext i8 %1781 to i32
  %1783 = icmp eq i32 %1780, %1782
  br i1 %1783, label %1784, label %1910

1784:                                             ; preds = %1776
  %1785 = load i8*, i8** %11, align 8
  %1786 = getelementptr inbounds i8, i8* %1785, i64 13
  %1787 = load i8, i8* %1786, align 1
  %1788 = sext i8 %1787 to i32
  %1789 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 13), align 1
  %1790 = sext i8 %1789 to i32
  %1791 = icmp eq i32 %1788, %1790
  br i1 %1791, label %1792, label %1910

1792:                                             ; preds = %1784
  %1793 = load i8*, i8** %11, align 8
  %1794 = getelementptr inbounds i8, i8* %1793, i64 14
  %1795 = load i8, i8* %1794, align 1
  %1796 = sext i8 %1795 to i32
  %1797 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 14), align 1
  %1798 = sext i8 %1797 to i32
  %1799 = icmp eq i32 %1796, %1798
  br i1 %1799, label %1800, label %1910

1800:                                             ; preds = %1792
  %1801 = load i8*, i8** %11, align 8
  %1802 = getelementptr inbounds i8, i8* %1801, i64 15
  %1803 = load i8, i8* %1802, align 1
  %1804 = sext i8 %1803 to i32
  %1805 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 15), align 1
  %1806 = sext i8 %1805 to i32
  %1807 = icmp eq i32 %1804, %1806
  br i1 %1807, label %1808, label %1910

1808:                                             ; preds = %1800
  %1809 = load i8*, i8** %11, align 8
  %1810 = getelementptr inbounds i8, i8* %1809, i64 16
  %1811 = load i8, i8* %1810, align 1
  %1812 = sext i8 %1811 to i32
  %1813 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 16), align 1
  %1814 = sext i8 %1813 to i32
  %1815 = icmp eq i32 %1812, %1814
  br i1 %1815, label %1816, label %1910

1816:                                             ; preds = %1808
  %1817 = load i8*, i8** %11, align 8
  %1818 = getelementptr inbounds i8, i8* %1817, i64 17
  %1819 = load i8, i8* %1818, align 1
  %1820 = sext i8 %1819 to i32
  %1821 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 17), align 1
  %1822 = sext i8 %1821 to i32
  %1823 = icmp eq i32 %1820, %1822
  br i1 %1823, label %1824, label %1910

1824:                                             ; preds = %1816
  %1825 = load i8*, i8** %11, align 8
  %1826 = getelementptr inbounds i8, i8* %1825, i64 18
  %1827 = load i8, i8* %1826, align 1
  %1828 = sext i8 %1827 to i32
  %1829 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 18), align 1
  %1830 = sext i8 %1829 to i32
  %1831 = icmp eq i32 %1828, %1830
  br i1 %1831, label %1832, label %1910

1832:                                             ; preds = %1824
  %1833 = load i8*, i8** %11, align 8
  %1834 = getelementptr inbounds i8, i8* %1833, i64 19
  %1835 = load i8, i8* %1834, align 1
  %1836 = sext i8 %1835 to i32
  %1837 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 19), align 1
  %1838 = sext i8 %1837 to i32
  %1839 = icmp eq i32 %1836, %1838
  br i1 %1839, label %1840, label %1910

1840:                                             ; preds = %1832
  %1841 = load i8*, i8** %11, align 8
  %1842 = getelementptr inbounds i8, i8* %1841, i64 20
  %1843 = load i8, i8* %1842, align 1
  %1844 = sext i8 %1843 to i32
  %1845 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 20), align 1
  %1846 = sext i8 %1845 to i32
  %1847 = icmp eq i32 %1844, %1846
  br i1 %1847, label %1848, label %1910

1848:                                             ; preds = %1840
  %1849 = load i8*, i8** %11, align 8
  %1850 = getelementptr inbounds i8, i8* %1849, i64 21
  %1851 = load i8, i8* %1850, align 1
  %1852 = sext i8 %1851 to i32
  %1853 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 21), align 1
  %1854 = sext i8 %1853 to i32
  %1855 = icmp eq i32 %1852, %1854
  br i1 %1855, label %1856, label %1910

1856:                                             ; preds = %1848
  %1857 = load i8*, i8** %11, align 8
  %1858 = getelementptr inbounds i8, i8* %1857, i64 22
  %1859 = load i8, i8* %1858, align 1
  %1860 = sext i8 %1859 to i32
  %1861 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 22), align 1
  %1862 = sext i8 %1861 to i32
  %1863 = icmp eq i32 %1860, %1862
  br i1 %1863, label %1864, label %1910

1864:                                             ; preds = %1856
  %1865 = load i8*, i8** %11, align 8
  %1866 = getelementptr inbounds i8, i8* %1865, i64 23
  %1867 = load i8, i8* %1866, align 1
  %1868 = sext i8 %1867 to i32
  %1869 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 23), align 1
  %1870 = sext i8 %1869 to i32
  %1871 = icmp eq i32 %1868, %1870
  br i1 %1871, label %1872, label %1910

1872:                                             ; preds = %1864
  %1873 = load i8*, i8** %11, align 8
  %1874 = getelementptr inbounds i8, i8* %1873, i64 24
  %1875 = load i8, i8* %1874, align 1
  %1876 = sext i8 %1875 to i32
  %1877 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i64 0, i64 24), align 1
  %1878 = sext i8 %1877 to i32
  %1879 = icmp eq i32 %1876, %1878
  br i1 %1879, label %1880, label %1910

1880:                                             ; preds = %1872
  br label %1881

1881:                                             ; preds = %1880
  %1882 = load i32, i32* %8, align 4
  %1883 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1884 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1883, i32 0, i32 2
  %1885 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1884, i32 0, i32 4
  store i32 %1882, i32* %1885, align 8
  %1886 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1887 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1886, i32 0, i32 2
  %1888 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1887, i32 0, i32 4
  %1889 = load i32, i32* %1888, align 8
  %1890 = call i32 @mrb_nil_p(i32 %1889)
  %1891 = icmp ne i32 %1890, 0
  br i1 %1891, label %1908, label %1892

1892:                                             ; preds = %1881
  %1893 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1894 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1895 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1894, i32 0, i32 2
  %1896 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1895, i32 0, i32 4
  %1897 = load i32, i32* %1896, align 8
  %1898 = call i32 (%struct.TYPE_12__*, i32, ...) bitcast (i32 (...)* @h2o_mruby_to_int to i32 (%struct.TYPE_12__*, i32, ...)*)(%struct.TYPE_12__* %1893, i32 %1897)
  %1899 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %1900 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %1899, i32 0, i32 2
  %1901 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %1900, i32 0, i32 4
  store i32 %1898, i32* %1901, align 8
  %1902 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %1903 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %1902, i32 0, i32 0
  %1904 = load i32*, i32** %1903, align 8
  %1905 = icmp ne i32* %1904, null
  br i1 %1905, label %1906, label %1907

1906:                                             ; preds = %1892
  store i32 -1, i32* %5, align 4
  br label %3173

1907:                                             ; preds = %1892
  br label %1908

1908:                                             ; preds = %1907, %1881
  br label %1909

1909:                                             ; preds = %1908
  br label %3159

1910:                                             ; preds = %1872, %1864, %1856, %1848, %1840, %1832, %1824, %1816, %1808, %1800, %1792, %1784, %1776, %1768, %1760, %1752, %1744, %1736, %1728, %1720, %1712, %1704, %1696, %1688, %1680, %1676
  %1911 = load i32, i32* %12, align 4
  %1912 = sext i32 %1911 to i64
  %1913 = icmp eq i64 25, %1912
  br i1 %1913, label %1914, label %2144

1914:                                             ; preds = %1910
  %1915 = load i8*, i8** %11, align 8
  %1916 = getelementptr inbounds i8, i8* %1915, i64 0
  %1917 = load i8, i8* %1916, align 1
  %1918 = sext i8 %1917 to i32
  %1919 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0), align 1
  %1920 = sext i8 %1919 to i32
  %1921 = icmp eq i32 %1918, %1920
  br i1 %1921, label %1922, label %2144

1922:                                             ; preds = %1914
  %1923 = load i8*, i8** %11, align 8
  %1924 = getelementptr inbounds i8, i8* %1923, i64 1
  %1925 = load i8, i8* %1924, align 1
  %1926 = sext i8 %1925 to i32
  %1927 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 1), align 1
  %1928 = sext i8 %1927 to i32
  %1929 = icmp eq i32 %1926, %1928
  br i1 %1929, label %1930, label %2144

1930:                                             ; preds = %1922
  %1931 = load i8*, i8** %11, align 8
  %1932 = getelementptr inbounds i8, i8* %1931, i64 2
  %1933 = load i8, i8* %1932, align 1
  %1934 = sext i8 %1933 to i32
  %1935 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 2), align 1
  %1936 = sext i8 %1935 to i32
  %1937 = icmp eq i32 %1934, %1936
  br i1 %1937, label %1938, label %2144

1938:                                             ; preds = %1930
  %1939 = load i8*, i8** %11, align 8
  %1940 = getelementptr inbounds i8, i8* %1939, i64 3
  %1941 = load i8, i8* %1940, align 1
  %1942 = sext i8 %1941 to i32
  %1943 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 3), align 1
  %1944 = sext i8 %1943 to i32
  %1945 = icmp eq i32 %1942, %1944
  br i1 %1945, label %1946, label %2144

1946:                                             ; preds = %1938
  %1947 = load i8*, i8** %11, align 8
  %1948 = getelementptr inbounds i8, i8* %1947, i64 4
  %1949 = load i8, i8* %1948, align 1
  %1950 = sext i8 %1949 to i32
  %1951 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 4), align 1
  %1952 = sext i8 %1951 to i32
  %1953 = icmp eq i32 %1950, %1952
  br i1 %1953, label %1954, label %2144

1954:                                             ; preds = %1946
  %1955 = load i8*, i8** %11, align 8
  %1956 = getelementptr inbounds i8, i8* %1955, i64 5
  %1957 = load i8, i8* %1956, align 1
  %1958 = sext i8 %1957 to i32
  %1959 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 5), align 1
  %1960 = sext i8 %1959 to i32
  %1961 = icmp eq i32 %1958, %1960
  br i1 %1961, label %1962, label %2144

1962:                                             ; preds = %1954
  %1963 = load i8*, i8** %11, align 8
  %1964 = getelementptr inbounds i8, i8* %1963, i64 6
  %1965 = load i8, i8* %1964, align 1
  %1966 = sext i8 %1965 to i32
  %1967 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 6), align 1
  %1968 = sext i8 %1967 to i32
  %1969 = icmp eq i32 %1966, %1968
  br i1 %1969, label %1970, label %2144

1970:                                             ; preds = %1962
  %1971 = load i8*, i8** %11, align 8
  %1972 = getelementptr inbounds i8, i8* %1971, i64 7
  %1973 = load i8, i8* %1972, align 1
  %1974 = sext i8 %1973 to i32
  %1975 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 7), align 1
  %1976 = sext i8 %1975 to i32
  %1977 = icmp eq i32 %1974, %1976
  br i1 %1977, label %1978, label %2144

1978:                                             ; preds = %1970
  %1979 = load i8*, i8** %11, align 8
  %1980 = getelementptr inbounds i8, i8* %1979, i64 8
  %1981 = load i8, i8* %1980, align 1
  %1982 = sext i8 %1981 to i32
  %1983 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 8), align 1
  %1984 = sext i8 %1983 to i32
  %1985 = icmp eq i32 %1982, %1984
  br i1 %1985, label %1986, label %2144

1986:                                             ; preds = %1978
  %1987 = load i8*, i8** %11, align 8
  %1988 = getelementptr inbounds i8, i8* %1987, i64 9
  %1989 = load i8, i8* %1988, align 1
  %1990 = sext i8 %1989 to i32
  %1991 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 9), align 1
  %1992 = sext i8 %1991 to i32
  %1993 = icmp eq i32 %1990, %1992
  br i1 %1993, label %1994, label %2144

1994:                                             ; preds = %1986
  %1995 = load i8*, i8** %11, align 8
  %1996 = getelementptr inbounds i8, i8* %1995, i64 10
  %1997 = load i8, i8* %1996, align 1
  %1998 = sext i8 %1997 to i32
  %1999 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 10), align 1
  %2000 = sext i8 %1999 to i32
  %2001 = icmp eq i32 %1998, %2000
  br i1 %2001, label %2002, label %2144

2002:                                             ; preds = %1994
  %2003 = load i8*, i8** %11, align 8
  %2004 = getelementptr inbounds i8, i8* %2003, i64 11
  %2005 = load i8, i8* %2004, align 1
  %2006 = sext i8 %2005 to i32
  %2007 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 11), align 1
  %2008 = sext i8 %2007 to i32
  %2009 = icmp eq i32 %2006, %2008
  br i1 %2009, label %2010, label %2144

2010:                                             ; preds = %2002
  %2011 = load i8*, i8** %11, align 8
  %2012 = getelementptr inbounds i8, i8* %2011, i64 12
  %2013 = load i8, i8* %2012, align 1
  %2014 = sext i8 %2013 to i32
  %2015 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 12), align 1
  %2016 = sext i8 %2015 to i32
  %2017 = icmp eq i32 %2014, %2016
  br i1 %2017, label %2018, label %2144

2018:                                             ; preds = %2010
  %2019 = load i8*, i8** %11, align 8
  %2020 = getelementptr inbounds i8, i8* %2019, i64 13
  %2021 = load i8, i8* %2020, align 1
  %2022 = sext i8 %2021 to i32
  %2023 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 13), align 1
  %2024 = sext i8 %2023 to i32
  %2025 = icmp eq i32 %2022, %2024
  br i1 %2025, label %2026, label %2144

2026:                                             ; preds = %2018
  %2027 = load i8*, i8** %11, align 8
  %2028 = getelementptr inbounds i8, i8* %2027, i64 14
  %2029 = load i8, i8* %2028, align 1
  %2030 = sext i8 %2029 to i32
  %2031 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 14), align 1
  %2032 = sext i8 %2031 to i32
  %2033 = icmp eq i32 %2030, %2032
  br i1 %2033, label %2034, label %2144

2034:                                             ; preds = %2026
  %2035 = load i8*, i8** %11, align 8
  %2036 = getelementptr inbounds i8, i8* %2035, i64 15
  %2037 = load i8, i8* %2036, align 1
  %2038 = sext i8 %2037 to i32
  %2039 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 15), align 1
  %2040 = sext i8 %2039 to i32
  %2041 = icmp eq i32 %2038, %2040
  br i1 %2041, label %2042, label %2144

2042:                                             ; preds = %2034
  %2043 = load i8*, i8** %11, align 8
  %2044 = getelementptr inbounds i8, i8* %2043, i64 16
  %2045 = load i8, i8* %2044, align 1
  %2046 = sext i8 %2045 to i32
  %2047 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 16), align 1
  %2048 = sext i8 %2047 to i32
  %2049 = icmp eq i32 %2046, %2048
  br i1 %2049, label %2050, label %2144

2050:                                             ; preds = %2042
  %2051 = load i8*, i8** %11, align 8
  %2052 = getelementptr inbounds i8, i8* %2051, i64 17
  %2053 = load i8, i8* %2052, align 1
  %2054 = sext i8 %2053 to i32
  %2055 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 17), align 1
  %2056 = sext i8 %2055 to i32
  %2057 = icmp eq i32 %2054, %2056
  br i1 %2057, label %2058, label %2144

2058:                                             ; preds = %2050
  %2059 = load i8*, i8** %11, align 8
  %2060 = getelementptr inbounds i8, i8* %2059, i64 18
  %2061 = load i8, i8* %2060, align 1
  %2062 = sext i8 %2061 to i32
  %2063 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 18), align 1
  %2064 = sext i8 %2063 to i32
  %2065 = icmp eq i32 %2062, %2064
  br i1 %2065, label %2066, label %2144

2066:                                             ; preds = %2058
  %2067 = load i8*, i8** %11, align 8
  %2068 = getelementptr inbounds i8, i8* %2067, i64 19
  %2069 = load i8, i8* %2068, align 1
  %2070 = sext i8 %2069 to i32
  %2071 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 19), align 1
  %2072 = sext i8 %2071 to i32
  %2073 = icmp eq i32 %2070, %2072
  br i1 %2073, label %2074, label %2144

2074:                                             ; preds = %2066
  %2075 = load i8*, i8** %11, align 8
  %2076 = getelementptr inbounds i8, i8* %2075, i64 20
  %2077 = load i8, i8* %2076, align 1
  %2078 = sext i8 %2077 to i32
  %2079 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 20), align 1
  %2080 = sext i8 %2079 to i32
  %2081 = icmp eq i32 %2078, %2080
  br i1 %2081, label %2082, label %2144

2082:                                             ; preds = %2074
  %2083 = load i8*, i8** %11, align 8
  %2084 = getelementptr inbounds i8, i8* %2083, i64 21
  %2085 = load i8, i8* %2084, align 1
  %2086 = sext i8 %2085 to i32
  %2087 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 21), align 1
  %2088 = sext i8 %2087 to i32
  %2089 = icmp eq i32 %2086, %2088
  br i1 %2089, label %2090, label %2144

2090:                                             ; preds = %2082
  %2091 = load i8*, i8** %11, align 8
  %2092 = getelementptr inbounds i8, i8* %2091, i64 22
  %2093 = load i8, i8* %2092, align 1
  %2094 = sext i8 %2093 to i32
  %2095 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 22), align 1
  %2096 = sext i8 %2095 to i32
  %2097 = icmp eq i32 %2094, %2096
  br i1 %2097, label %2098, label %2144

2098:                                             ; preds = %2090
  %2099 = load i8*, i8** %11, align 8
  %2100 = getelementptr inbounds i8, i8* %2099, i64 23
  %2101 = load i8, i8* %2100, align 1
  %2102 = sext i8 %2101 to i32
  %2103 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 23), align 1
  %2104 = sext i8 %2103 to i32
  %2105 = icmp eq i32 %2102, %2104
  br i1 %2105, label %2106, label %2144

2106:                                             ; preds = %2098
  %2107 = load i8*, i8** %11, align 8
  %2108 = getelementptr inbounds i8, i8* %2107, i64 24
  %2109 = load i8, i8* %2108, align 1
  %2110 = sext i8 %2109 to i32
  %2111 = load i8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 24), align 1
  %2112 = sext i8 %2111 to i32
  %2113 = icmp eq i32 %2110, %2112
  br i1 %2113, label %2114, label %2144

2114:                                             ; preds = %2106
  br label %2115

2115:                                             ; preds = %2114
  %2116 = load i32, i32* %8, align 4
  %2117 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2118 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2117, i32 0, i32 2
  %2119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2118, i32 0, i32 3
  store i32 %2116, i32* %2119, align 4
  %2120 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2121 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2120, i32 0, i32 2
  %2122 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2121, i32 0, i32 3
  %2123 = load i32, i32* %2122, align 4
  %2124 = call i32 @mrb_nil_p(i32 %2123)
  %2125 = icmp ne i32 %2124, 0
  br i1 %2125, label %2142, label %2126

2126:                                             ; preds = %2115
  %2127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2128 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2129 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2128, i32 0, i32 2
  %2130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2129, i32 0, i32 3
  %2131 = load i32, i32* %2130, align 4
  %2132 = call i32 (%struct.TYPE_12__*, i32, ...) bitcast (i32 (...)* @h2o_mruby_to_int to i32 (%struct.TYPE_12__*, i32, ...)*)(%struct.TYPE_12__* %2127, i32 %2131)
  %2133 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2134 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2133, i32 0, i32 2
  %2135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2134, i32 0, i32 3
  store i32 %2132, i32* %2135, align 4
  %2136 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2136, i32 0, i32 0
  %2138 = load i32*, i32** %2137, align 8
  %2139 = icmp ne i32* %2138, null
  br i1 %2139, label %2140, label %2141

2140:                                             ; preds = %2126
  store i32 -1, i32* %5, align 4
  br label %3173

2141:                                             ; preds = %2126
  br label %2142

2142:                                             ; preds = %2141, %2115
  br label %2143

2143:                                             ; preds = %2142
  br label %3158

2144:                                             ; preds = %2106, %2098, %2090, %2082, %2074, %2066, %2058, %2050, %2042, %2034, %2026, %2018, %2010, %2002, %1994, %1986, %1978, %1970, %1962, %1954, %1946, %1938, %1930, %1922, %1914, %1910
  %2145 = load i32, i32* %12, align 4
  %2146 = sext i32 %2145 to i64
  %2147 = icmp eq i64 11, %2146
  br i1 %2147, label %2148, label %2257

2148:                                             ; preds = %2144
  %2149 = load i8*, i8** %11, align 8
  %2150 = getelementptr inbounds i8, i8* %2149, i64 0
  %2151 = load i8, i8* %2150, align 1
  %2152 = sext i8 %2151 to i32
  %2153 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 0), align 1
  %2154 = sext i8 %2153 to i32
  %2155 = icmp eq i32 %2152, %2154
  br i1 %2155, label %2156, label %2257

2156:                                             ; preds = %2148
  %2157 = load i8*, i8** %11, align 8
  %2158 = getelementptr inbounds i8, i8* %2157, i64 1
  %2159 = load i8, i8* %2158, align 1
  %2160 = sext i8 %2159 to i32
  %2161 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 1), align 1
  %2162 = sext i8 %2161 to i32
  %2163 = icmp eq i32 %2160, %2162
  br i1 %2163, label %2164, label %2257

2164:                                             ; preds = %2156
  %2165 = load i8*, i8** %11, align 8
  %2166 = getelementptr inbounds i8, i8* %2165, i64 2
  %2167 = load i8, i8* %2166, align 1
  %2168 = sext i8 %2167 to i32
  %2169 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 2), align 1
  %2170 = sext i8 %2169 to i32
  %2171 = icmp eq i32 %2168, %2170
  br i1 %2171, label %2172, label %2257

2172:                                             ; preds = %2164
  %2173 = load i8*, i8** %11, align 8
  %2174 = getelementptr inbounds i8, i8* %2173, i64 3
  %2175 = load i8, i8* %2174, align 1
  %2176 = sext i8 %2175 to i32
  %2177 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 3), align 1
  %2178 = sext i8 %2177 to i32
  %2179 = icmp eq i32 %2176, %2178
  br i1 %2179, label %2180, label %2257

2180:                                             ; preds = %2172
  %2181 = load i8*, i8** %11, align 8
  %2182 = getelementptr inbounds i8, i8* %2181, i64 4
  %2183 = load i8, i8* %2182, align 1
  %2184 = sext i8 %2183 to i32
  %2185 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 4), align 1
  %2186 = sext i8 %2185 to i32
  %2187 = icmp eq i32 %2184, %2186
  br i1 %2187, label %2188, label %2257

2188:                                             ; preds = %2180
  %2189 = load i8*, i8** %11, align 8
  %2190 = getelementptr inbounds i8, i8* %2189, i64 5
  %2191 = load i8, i8* %2190, align 1
  %2192 = sext i8 %2191 to i32
  %2193 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 5), align 1
  %2194 = sext i8 %2193 to i32
  %2195 = icmp eq i32 %2192, %2194
  br i1 %2195, label %2196, label %2257

2196:                                             ; preds = %2188
  %2197 = load i8*, i8** %11, align 8
  %2198 = getelementptr inbounds i8, i8* %2197, i64 6
  %2199 = load i8, i8* %2198, align 1
  %2200 = sext i8 %2199 to i32
  %2201 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 6), align 1
  %2202 = sext i8 %2201 to i32
  %2203 = icmp eq i32 %2200, %2202
  br i1 %2203, label %2204, label %2257

2204:                                             ; preds = %2196
  %2205 = load i8*, i8** %11, align 8
  %2206 = getelementptr inbounds i8, i8* %2205, i64 7
  %2207 = load i8, i8* %2206, align 1
  %2208 = sext i8 %2207 to i32
  %2209 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 7), align 1
  %2210 = sext i8 %2209 to i32
  %2211 = icmp eq i32 %2208, %2210
  br i1 %2211, label %2212, label %2257

2212:                                             ; preds = %2204
  %2213 = load i8*, i8** %11, align 8
  %2214 = getelementptr inbounds i8, i8* %2213, i64 8
  %2215 = load i8, i8* %2214, align 1
  %2216 = sext i8 %2215 to i32
  %2217 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 8), align 1
  %2218 = sext i8 %2217 to i32
  %2219 = icmp eq i32 %2216, %2218
  br i1 %2219, label %2220, label %2257

2220:                                             ; preds = %2212
  %2221 = load i8*, i8** %11, align 8
  %2222 = getelementptr inbounds i8, i8* %2221, i64 9
  %2223 = load i8, i8* %2222, align 1
  %2224 = sext i8 %2223 to i32
  %2225 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 9), align 1
  %2226 = sext i8 %2225 to i32
  %2227 = icmp eq i32 %2224, %2226
  br i1 %2227, label %2228, label %2257

2228:                                             ; preds = %2220
  %2229 = load i8*, i8** %11, align 8
  %2230 = getelementptr inbounds i8, i8* %2229, i64 10
  %2231 = load i8, i8* %2230, align 1
  %2232 = sext i8 %2231 to i32
  %2233 = load i8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i64 0, i64 10), align 1
  %2234 = sext i8 %2233 to i32
  %2235 = icmp eq i32 %2232, %2234
  br i1 %2235, label %2236, label %2257

2236:                                             ; preds = %2228
  br label %2237

2237:                                             ; preds = %2236
  %2238 = load i32, i32* %8, align 4
  %2239 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2240 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2239, i32 0, i32 2
  %2241 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2240, i32 0, i32 2
  store i32 %2238, i32* %2241, align 8
  %2242 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2243 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2242, i32 0, i32 2
  %2244 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2243, i32 0, i32 2
  %2245 = load i32, i32* %2244, align 8
  %2246 = call i32 @mrb_nil_p(i32 %2245)
  %2247 = icmp ne i32 %2246, 0
  br i1 %2247, label %2255, label %2248

2248:                                             ; preds = %2237
  %2249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2249, i32 0, i32 0
  %2251 = load i32*, i32** %2250, align 8
  %2252 = icmp ne i32* %2251, null
  br i1 %2252, label %2253, label %2254

2253:                                             ; preds = %2248
  store i32 -1, i32* %5, align 4
  br label %3173

2254:                                             ; preds = %2248
  br label %2255

2255:                                             ; preds = %2254, %2237
  br label %2256

2256:                                             ; preds = %2255
  br label %3157

2257:                                             ; preds = %2228, %2220, %2212, %2204, %2196, %2188, %2180, %2172, %2164, %2156, %2148, %2144
  %2258 = load i32, i32* %12, align 4
  %2259 = sext i32 %2258 to i64
  %2260 = icmp eq i64 12, %2259
  br i1 %2260, label %2261, label %2358

2261:                                             ; preds = %2257
  %2262 = load i8*, i8** %11, align 8
  %2263 = getelementptr inbounds i8, i8* %2262, i64 0
  %2264 = load i8, i8* %2263, align 1
  %2265 = sext i8 %2264 to i32
  %2266 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 0), align 1
  %2267 = sext i8 %2266 to i32
  %2268 = icmp eq i32 %2265, %2267
  br i1 %2268, label %2269, label %2358

2269:                                             ; preds = %2261
  %2270 = load i8*, i8** %11, align 8
  %2271 = getelementptr inbounds i8, i8* %2270, i64 1
  %2272 = load i8, i8* %2271, align 1
  %2273 = sext i8 %2272 to i32
  %2274 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 1), align 1
  %2275 = sext i8 %2274 to i32
  %2276 = icmp eq i32 %2273, %2275
  br i1 %2276, label %2277, label %2358

2277:                                             ; preds = %2269
  %2278 = load i8*, i8** %11, align 8
  %2279 = getelementptr inbounds i8, i8* %2278, i64 2
  %2280 = load i8, i8* %2279, align 1
  %2281 = sext i8 %2280 to i32
  %2282 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 2), align 1
  %2283 = sext i8 %2282 to i32
  %2284 = icmp eq i32 %2281, %2283
  br i1 %2284, label %2285, label %2358

2285:                                             ; preds = %2277
  %2286 = load i8*, i8** %11, align 8
  %2287 = getelementptr inbounds i8, i8* %2286, i64 3
  %2288 = load i8, i8* %2287, align 1
  %2289 = sext i8 %2288 to i32
  %2290 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 3), align 1
  %2291 = sext i8 %2290 to i32
  %2292 = icmp eq i32 %2289, %2291
  br i1 %2292, label %2293, label %2358

2293:                                             ; preds = %2285
  %2294 = load i8*, i8** %11, align 8
  %2295 = getelementptr inbounds i8, i8* %2294, i64 4
  %2296 = load i8, i8* %2295, align 1
  %2297 = sext i8 %2296 to i32
  %2298 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 4), align 1
  %2299 = sext i8 %2298 to i32
  %2300 = icmp eq i32 %2297, %2299
  br i1 %2300, label %2301, label %2358

2301:                                             ; preds = %2293
  %2302 = load i8*, i8** %11, align 8
  %2303 = getelementptr inbounds i8, i8* %2302, i64 5
  %2304 = load i8, i8* %2303, align 1
  %2305 = sext i8 %2304 to i32
  %2306 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 5), align 1
  %2307 = sext i8 %2306 to i32
  %2308 = icmp eq i32 %2305, %2307
  br i1 %2308, label %2309, label %2358

2309:                                             ; preds = %2301
  %2310 = load i8*, i8** %11, align 8
  %2311 = getelementptr inbounds i8, i8* %2310, i64 6
  %2312 = load i8, i8* %2311, align 1
  %2313 = sext i8 %2312 to i32
  %2314 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 6), align 1
  %2315 = sext i8 %2314 to i32
  %2316 = icmp eq i32 %2313, %2315
  br i1 %2316, label %2317, label %2358

2317:                                             ; preds = %2309
  %2318 = load i8*, i8** %11, align 8
  %2319 = getelementptr inbounds i8, i8* %2318, i64 7
  %2320 = load i8, i8* %2319, align 1
  %2321 = sext i8 %2320 to i32
  %2322 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 7), align 1
  %2323 = sext i8 %2322 to i32
  %2324 = icmp eq i32 %2321, %2323
  br i1 %2324, label %2325, label %2358

2325:                                             ; preds = %2317
  %2326 = load i8*, i8** %11, align 8
  %2327 = getelementptr inbounds i8, i8* %2326, i64 8
  %2328 = load i8, i8* %2327, align 1
  %2329 = sext i8 %2328 to i32
  %2330 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 8), align 1
  %2331 = sext i8 %2330 to i32
  %2332 = icmp eq i32 %2329, %2331
  br i1 %2332, label %2333, label %2358

2333:                                             ; preds = %2325
  %2334 = load i8*, i8** %11, align 8
  %2335 = getelementptr inbounds i8, i8* %2334, i64 9
  %2336 = load i8, i8* %2335, align 1
  %2337 = sext i8 %2336 to i32
  %2338 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 9), align 1
  %2339 = sext i8 %2338 to i32
  %2340 = icmp eq i32 %2337, %2339
  br i1 %2340, label %2341, label %2358

2341:                                             ; preds = %2333
  %2342 = load i8*, i8** %11, align 8
  %2343 = getelementptr inbounds i8, i8* %2342, i64 10
  %2344 = load i8, i8* %2343, align 1
  %2345 = sext i8 %2344 to i32
  %2346 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 10), align 1
  %2347 = sext i8 %2346 to i32
  %2348 = icmp eq i32 %2345, %2347
  br i1 %2348, label %2349, label %2358

2349:                                             ; preds = %2341
  %2350 = load i8*, i8** %11, align 8
  %2351 = getelementptr inbounds i8, i8* %2350, i64 11
  %2352 = load i8, i8* %2351, align 1
  %2353 = sext i8 %2352 to i32
  %2354 = load i8, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.16, i64 0, i64 11), align 1
  %2355 = sext i8 %2354 to i32
  %2356 = icmp eq i32 %2353, %2355
  br i1 %2356, label %2357, label %2358

2357:                                             ; preds = %2349
  br label %3156

2358:                                             ; preds = %2349, %2341, %2333, %2325, %2317, %2309, %2301, %2293, %2285, %2277, %2269, %2261, %2257
  %2359 = load i32, i32* %12, align 4
  %2360 = sext i32 %2359 to i64
  %2361 = icmp eq i64 10, %2360
  br i1 %2361, label %2362, label %2463

2362:                                             ; preds = %2358
  %2363 = load i8*, i8** %11, align 8
  %2364 = getelementptr inbounds i8, i8* %2363, i64 0
  %2365 = load i8, i8* %2364, align 1
  %2366 = sext i8 %2365 to i32
  %2367 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 0), align 1
  %2368 = sext i8 %2367 to i32
  %2369 = icmp eq i32 %2366, %2368
  br i1 %2369, label %2370, label %2463

2370:                                             ; preds = %2362
  %2371 = load i8*, i8** %11, align 8
  %2372 = getelementptr inbounds i8, i8* %2371, i64 1
  %2373 = load i8, i8* %2372, align 1
  %2374 = sext i8 %2373 to i32
  %2375 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 1), align 1
  %2376 = sext i8 %2375 to i32
  %2377 = icmp eq i32 %2374, %2376
  br i1 %2377, label %2378, label %2463

2378:                                             ; preds = %2370
  %2379 = load i8*, i8** %11, align 8
  %2380 = getelementptr inbounds i8, i8* %2379, i64 2
  %2381 = load i8, i8* %2380, align 1
  %2382 = sext i8 %2381 to i32
  %2383 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 2), align 1
  %2384 = sext i8 %2383 to i32
  %2385 = icmp eq i32 %2382, %2384
  br i1 %2385, label %2386, label %2463

2386:                                             ; preds = %2378
  %2387 = load i8*, i8** %11, align 8
  %2388 = getelementptr inbounds i8, i8* %2387, i64 3
  %2389 = load i8, i8* %2388, align 1
  %2390 = sext i8 %2389 to i32
  %2391 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 3), align 1
  %2392 = sext i8 %2391 to i32
  %2393 = icmp eq i32 %2390, %2392
  br i1 %2393, label %2394, label %2463

2394:                                             ; preds = %2386
  %2395 = load i8*, i8** %11, align 8
  %2396 = getelementptr inbounds i8, i8* %2395, i64 4
  %2397 = load i8, i8* %2396, align 1
  %2398 = sext i8 %2397 to i32
  %2399 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 4), align 1
  %2400 = sext i8 %2399 to i32
  %2401 = icmp eq i32 %2398, %2400
  br i1 %2401, label %2402, label %2463

2402:                                             ; preds = %2394
  %2403 = load i8*, i8** %11, align 8
  %2404 = getelementptr inbounds i8, i8* %2403, i64 5
  %2405 = load i8, i8* %2404, align 1
  %2406 = sext i8 %2405 to i32
  %2407 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 5), align 1
  %2408 = sext i8 %2407 to i32
  %2409 = icmp eq i32 %2406, %2408
  br i1 %2409, label %2410, label %2463

2410:                                             ; preds = %2402
  %2411 = load i8*, i8** %11, align 8
  %2412 = getelementptr inbounds i8, i8* %2411, i64 6
  %2413 = load i8, i8* %2412, align 1
  %2414 = sext i8 %2413 to i32
  %2415 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 6), align 1
  %2416 = sext i8 %2415 to i32
  %2417 = icmp eq i32 %2414, %2416
  br i1 %2417, label %2418, label %2463

2418:                                             ; preds = %2410
  %2419 = load i8*, i8** %11, align 8
  %2420 = getelementptr inbounds i8, i8* %2419, i64 7
  %2421 = load i8, i8* %2420, align 1
  %2422 = sext i8 %2421 to i32
  %2423 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 7), align 1
  %2424 = sext i8 %2423 to i32
  %2425 = icmp eq i32 %2422, %2424
  br i1 %2425, label %2426, label %2463

2426:                                             ; preds = %2418
  %2427 = load i8*, i8** %11, align 8
  %2428 = getelementptr inbounds i8, i8* %2427, i64 8
  %2429 = load i8, i8* %2428, align 1
  %2430 = sext i8 %2429 to i32
  %2431 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 8), align 1
  %2432 = sext i8 %2431 to i32
  %2433 = icmp eq i32 %2430, %2432
  br i1 %2433, label %2434, label %2463

2434:                                             ; preds = %2426
  %2435 = load i8*, i8** %11, align 8
  %2436 = getelementptr inbounds i8, i8* %2435, i64 9
  %2437 = load i8, i8* %2436, align 1
  %2438 = sext i8 %2437 to i32
  %2439 = load i8, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.17, i64 0, i64 9), align 1
  %2440 = sext i8 %2439 to i32
  %2441 = icmp eq i32 %2438, %2440
  br i1 %2441, label %2442, label %2463

2442:                                             ; preds = %2434
  br label %2443

2443:                                             ; preds = %2442
  %2444 = load i32, i32* %8, align 4
  %2445 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2446 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2445, i32 0, i32 2
  %2447 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2446, i32 0, i32 1
  store i32 %2444, i32* %2447, align 4
  %2448 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2449 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2448, i32 0, i32 2
  %2450 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2449, i32 0, i32 1
  %2451 = load i32, i32* %2450, align 4
  %2452 = call i32 @mrb_nil_p(i32 %2451)
  %2453 = icmp ne i32 %2452, 0
  br i1 %2453, label %2461, label %2454

2454:                                             ; preds = %2443
  %2455 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2456 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2455, i32 0, i32 0
  %2457 = load i32*, i32** %2456, align 8
  %2458 = icmp ne i32* %2457, null
  br i1 %2458, label %2459, label %2460

2459:                                             ; preds = %2454
  store i32 -1, i32* %5, align 4
  br label %3173

2460:                                             ; preds = %2454
  br label %2461

2461:                                             ; preds = %2460, %2443
  br label %2462

2462:                                             ; preds = %2461
  br label %3155

2463:                                             ; preds = %2434, %2426, %2418, %2410, %2402, %2394, %2386, %2378, %2370, %2362, %2358
  %2464 = load i32, i32* %12, align 4
  %2465 = sext i32 %2464 to i64
  %2466 = icmp eq i64 17, %2465
  br i1 %2466, label %2467, label %2604

2467:                                             ; preds = %2463
  %2468 = load i8*, i8** %11, align 8
  %2469 = getelementptr inbounds i8, i8* %2468, i64 0
  %2470 = load i8, i8* %2469, align 1
  %2471 = sext i8 %2470 to i32
  %2472 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0), align 1
  %2473 = sext i8 %2472 to i32
  %2474 = icmp eq i32 %2471, %2473
  br i1 %2474, label %2475, label %2604

2475:                                             ; preds = %2467
  %2476 = load i8*, i8** %11, align 8
  %2477 = getelementptr inbounds i8, i8* %2476, i64 1
  %2478 = load i8, i8* %2477, align 1
  %2479 = sext i8 %2478 to i32
  %2480 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 1), align 1
  %2481 = sext i8 %2480 to i32
  %2482 = icmp eq i32 %2479, %2481
  br i1 %2482, label %2483, label %2604

2483:                                             ; preds = %2475
  %2484 = load i8*, i8** %11, align 8
  %2485 = getelementptr inbounds i8, i8* %2484, i64 2
  %2486 = load i8, i8* %2485, align 1
  %2487 = sext i8 %2486 to i32
  %2488 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 2), align 1
  %2489 = sext i8 %2488 to i32
  %2490 = icmp eq i32 %2487, %2489
  br i1 %2490, label %2491, label %2604

2491:                                             ; preds = %2483
  %2492 = load i8*, i8** %11, align 8
  %2493 = getelementptr inbounds i8, i8* %2492, i64 3
  %2494 = load i8, i8* %2493, align 1
  %2495 = sext i8 %2494 to i32
  %2496 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 3), align 1
  %2497 = sext i8 %2496 to i32
  %2498 = icmp eq i32 %2495, %2497
  br i1 %2498, label %2499, label %2604

2499:                                             ; preds = %2491
  %2500 = load i8*, i8** %11, align 8
  %2501 = getelementptr inbounds i8, i8* %2500, i64 4
  %2502 = load i8, i8* %2501, align 1
  %2503 = sext i8 %2502 to i32
  %2504 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 4), align 1
  %2505 = sext i8 %2504 to i32
  %2506 = icmp eq i32 %2503, %2505
  br i1 %2506, label %2507, label %2604

2507:                                             ; preds = %2499
  %2508 = load i8*, i8** %11, align 8
  %2509 = getelementptr inbounds i8, i8* %2508, i64 5
  %2510 = load i8, i8* %2509, align 1
  %2511 = sext i8 %2510 to i32
  %2512 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 5), align 1
  %2513 = sext i8 %2512 to i32
  %2514 = icmp eq i32 %2511, %2513
  br i1 %2514, label %2515, label %2604

2515:                                             ; preds = %2507
  %2516 = load i8*, i8** %11, align 8
  %2517 = getelementptr inbounds i8, i8* %2516, i64 6
  %2518 = load i8, i8* %2517, align 1
  %2519 = sext i8 %2518 to i32
  %2520 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 6), align 1
  %2521 = sext i8 %2520 to i32
  %2522 = icmp eq i32 %2519, %2521
  br i1 %2522, label %2523, label %2604

2523:                                             ; preds = %2515
  %2524 = load i8*, i8** %11, align 8
  %2525 = getelementptr inbounds i8, i8* %2524, i64 7
  %2526 = load i8, i8* %2525, align 1
  %2527 = sext i8 %2526 to i32
  %2528 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 7), align 1
  %2529 = sext i8 %2528 to i32
  %2530 = icmp eq i32 %2527, %2529
  br i1 %2530, label %2531, label %2604

2531:                                             ; preds = %2523
  %2532 = load i8*, i8** %11, align 8
  %2533 = getelementptr inbounds i8, i8* %2532, i64 8
  %2534 = load i8, i8* %2533, align 1
  %2535 = sext i8 %2534 to i32
  %2536 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 8), align 1
  %2537 = sext i8 %2536 to i32
  %2538 = icmp eq i32 %2535, %2537
  br i1 %2538, label %2539, label %2604

2539:                                             ; preds = %2531
  %2540 = load i8*, i8** %11, align 8
  %2541 = getelementptr inbounds i8, i8* %2540, i64 9
  %2542 = load i8, i8* %2541, align 1
  %2543 = sext i8 %2542 to i32
  %2544 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 9), align 1
  %2545 = sext i8 %2544 to i32
  %2546 = icmp eq i32 %2543, %2545
  br i1 %2546, label %2547, label %2604

2547:                                             ; preds = %2539
  %2548 = load i8*, i8** %11, align 8
  %2549 = getelementptr inbounds i8, i8* %2548, i64 10
  %2550 = load i8, i8* %2549, align 1
  %2551 = sext i8 %2550 to i32
  %2552 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 10), align 1
  %2553 = sext i8 %2552 to i32
  %2554 = icmp eq i32 %2551, %2553
  br i1 %2554, label %2555, label %2604

2555:                                             ; preds = %2547
  %2556 = load i8*, i8** %11, align 8
  %2557 = getelementptr inbounds i8, i8* %2556, i64 11
  %2558 = load i8, i8* %2557, align 1
  %2559 = sext i8 %2558 to i32
  %2560 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 11), align 1
  %2561 = sext i8 %2560 to i32
  %2562 = icmp eq i32 %2559, %2561
  br i1 %2562, label %2563, label %2604

2563:                                             ; preds = %2555
  %2564 = load i8*, i8** %11, align 8
  %2565 = getelementptr inbounds i8, i8* %2564, i64 12
  %2566 = load i8, i8* %2565, align 1
  %2567 = sext i8 %2566 to i32
  %2568 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 12), align 1
  %2569 = sext i8 %2568 to i32
  %2570 = icmp eq i32 %2567, %2569
  br i1 %2570, label %2571, label %2604

2571:                                             ; preds = %2563
  %2572 = load i8*, i8** %11, align 8
  %2573 = getelementptr inbounds i8, i8* %2572, i64 13
  %2574 = load i8, i8* %2573, align 1
  %2575 = sext i8 %2574 to i32
  %2576 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 13), align 1
  %2577 = sext i8 %2576 to i32
  %2578 = icmp eq i32 %2575, %2577
  br i1 %2578, label %2579, label %2604

2579:                                             ; preds = %2571
  %2580 = load i8*, i8** %11, align 8
  %2581 = getelementptr inbounds i8, i8* %2580, i64 14
  %2582 = load i8, i8* %2581, align 1
  %2583 = sext i8 %2582 to i32
  %2584 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 14), align 1
  %2585 = sext i8 %2584 to i32
  %2586 = icmp eq i32 %2583, %2585
  br i1 %2586, label %2587, label %2604

2587:                                             ; preds = %2579
  %2588 = load i8*, i8** %11, align 8
  %2589 = getelementptr inbounds i8, i8* %2588, i64 15
  %2590 = load i8, i8* %2589, align 1
  %2591 = sext i8 %2590 to i32
  %2592 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 15), align 1
  %2593 = sext i8 %2592 to i32
  %2594 = icmp eq i32 %2591, %2593
  br i1 %2594, label %2595, label %2604

2595:                                             ; preds = %2587
  %2596 = load i8*, i8** %11, align 8
  %2597 = getelementptr inbounds i8, i8* %2596, i64 16
  %2598 = load i8, i8* %2597, align 1
  %2599 = sext i8 %2598 to i32
  %2600 = load i8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 16), align 1
  %2601 = sext i8 %2600 to i32
  %2602 = icmp eq i32 %2599, %2601
  br i1 %2602, label %2603, label %2604

2603:                                             ; preds = %2595
  br label %3154

2604:                                             ; preds = %2595, %2587, %2579, %2571, %2563, %2555, %2547, %2539, %2531, %2523, %2515, %2507, %2499, %2491, %2483, %2475, %2467, %2463
  %2605 = load i32, i32* %12, align 4
  %2606 = sext i32 %2605 to i64
  %2607 = icmp eq i64 16, %2606
  br i1 %2607, label %2608, label %2737

2608:                                             ; preds = %2604
  %2609 = load i8*, i8** %11, align 8
  %2610 = getelementptr inbounds i8, i8* %2609, i64 0
  %2611 = load i8, i8* %2610, align 1
  %2612 = sext i8 %2611 to i32
  %2613 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0), align 1
  %2614 = sext i8 %2613 to i32
  %2615 = icmp eq i32 %2612, %2614
  br i1 %2615, label %2616, label %2737

2616:                                             ; preds = %2608
  %2617 = load i8*, i8** %11, align 8
  %2618 = getelementptr inbounds i8, i8* %2617, i64 1
  %2619 = load i8, i8* %2618, align 1
  %2620 = sext i8 %2619 to i32
  %2621 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 1), align 1
  %2622 = sext i8 %2621 to i32
  %2623 = icmp eq i32 %2620, %2622
  br i1 %2623, label %2624, label %2737

2624:                                             ; preds = %2616
  %2625 = load i8*, i8** %11, align 8
  %2626 = getelementptr inbounds i8, i8* %2625, i64 2
  %2627 = load i8, i8* %2626, align 1
  %2628 = sext i8 %2627 to i32
  %2629 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 2), align 1
  %2630 = sext i8 %2629 to i32
  %2631 = icmp eq i32 %2628, %2630
  br i1 %2631, label %2632, label %2737

2632:                                             ; preds = %2624
  %2633 = load i8*, i8** %11, align 8
  %2634 = getelementptr inbounds i8, i8* %2633, i64 3
  %2635 = load i8, i8* %2634, align 1
  %2636 = sext i8 %2635 to i32
  %2637 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 3), align 1
  %2638 = sext i8 %2637 to i32
  %2639 = icmp eq i32 %2636, %2638
  br i1 %2639, label %2640, label %2737

2640:                                             ; preds = %2632
  %2641 = load i8*, i8** %11, align 8
  %2642 = getelementptr inbounds i8, i8* %2641, i64 4
  %2643 = load i8, i8* %2642, align 1
  %2644 = sext i8 %2643 to i32
  %2645 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 4), align 1
  %2646 = sext i8 %2645 to i32
  %2647 = icmp eq i32 %2644, %2646
  br i1 %2647, label %2648, label %2737

2648:                                             ; preds = %2640
  %2649 = load i8*, i8** %11, align 8
  %2650 = getelementptr inbounds i8, i8* %2649, i64 5
  %2651 = load i8, i8* %2650, align 1
  %2652 = sext i8 %2651 to i32
  %2653 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 5), align 1
  %2654 = sext i8 %2653 to i32
  %2655 = icmp eq i32 %2652, %2654
  br i1 %2655, label %2656, label %2737

2656:                                             ; preds = %2648
  %2657 = load i8*, i8** %11, align 8
  %2658 = getelementptr inbounds i8, i8* %2657, i64 6
  %2659 = load i8, i8* %2658, align 1
  %2660 = sext i8 %2659 to i32
  %2661 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 6), align 1
  %2662 = sext i8 %2661 to i32
  %2663 = icmp eq i32 %2660, %2662
  br i1 %2663, label %2664, label %2737

2664:                                             ; preds = %2656
  %2665 = load i8*, i8** %11, align 8
  %2666 = getelementptr inbounds i8, i8* %2665, i64 7
  %2667 = load i8, i8* %2666, align 1
  %2668 = sext i8 %2667 to i32
  %2669 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 7), align 1
  %2670 = sext i8 %2669 to i32
  %2671 = icmp eq i32 %2668, %2670
  br i1 %2671, label %2672, label %2737

2672:                                             ; preds = %2664
  %2673 = load i8*, i8** %11, align 8
  %2674 = getelementptr inbounds i8, i8* %2673, i64 8
  %2675 = load i8, i8* %2674, align 1
  %2676 = sext i8 %2675 to i32
  %2677 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 8), align 1
  %2678 = sext i8 %2677 to i32
  %2679 = icmp eq i32 %2676, %2678
  br i1 %2679, label %2680, label %2737

2680:                                             ; preds = %2672
  %2681 = load i8*, i8** %11, align 8
  %2682 = getelementptr inbounds i8, i8* %2681, i64 9
  %2683 = load i8, i8* %2682, align 1
  %2684 = sext i8 %2683 to i32
  %2685 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 9), align 1
  %2686 = sext i8 %2685 to i32
  %2687 = icmp eq i32 %2684, %2686
  br i1 %2687, label %2688, label %2737

2688:                                             ; preds = %2680
  %2689 = load i8*, i8** %11, align 8
  %2690 = getelementptr inbounds i8, i8* %2689, i64 10
  %2691 = load i8, i8* %2690, align 1
  %2692 = sext i8 %2691 to i32
  %2693 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 10), align 1
  %2694 = sext i8 %2693 to i32
  %2695 = icmp eq i32 %2692, %2694
  br i1 %2695, label %2696, label %2737

2696:                                             ; preds = %2688
  %2697 = load i8*, i8** %11, align 8
  %2698 = getelementptr inbounds i8, i8* %2697, i64 11
  %2699 = load i8, i8* %2698, align 1
  %2700 = sext i8 %2699 to i32
  %2701 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 11), align 1
  %2702 = sext i8 %2701 to i32
  %2703 = icmp eq i32 %2700, %2702
  br i1 %2703, label %2704, label %2737

2704:                                             ; preds = %2696
  %2705 = load i8*, i8** %11, align 8
  %2706 = getelementptr inbounds i8, i8* %2705, i64 12
  %2707 = load i8, i8* %2706, align 1
  %2708 = sext i8 %2707 to i32
  %2709 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 12), align 1
  %2710 = sext i8 %2709 to i32
  %2711 = icmp eq i32 %2708, %2710
  br i1 %2711, label %2712, label %2737

2712:                                             ; preds = %2704
  %2713 = load i8*, i8** %11, align 8
  %2714 = getelementptr inbounds i8, i8* %2713, i64 13
  %2715 = load i8, i8* %2714, align 1
  %2716 = sext i8 %2715 to i32
  %2717 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 13), align 1
  %2718 = sext i8 %2717 to i32
  %2719 = icmp eq i32 %2716, %2718
  br i1 %2719, label %2720, label %2737

2720:                                             ; preds = %2712
  %2721 = load i8*, i8** %11, align 8
  %2722 = getelementptr inbounds i8, i8* %2721, i64 14
  %2723 = load i8, i8* %2722, align 1
  %2724 = sext i8 %2723 to i32
  %2725 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 14), align 1
  %2726 = sext i8 %2725 to i32
  %2727 = icmp eq i32 %2724, %2726
  br i1 %2727, label %2728, label %2737

2728:                                             ; preds = %2720
  %2729 = load i8*, i8** %11, align 8
  %2730 = getelementptr inbounds i8, i8* %2729, i64 15
  %2731 = load i8, i8* %2730, align 1
  %2732 = sext i8 %2731 to i32
  %2733 = load i8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 15), align 1
  %2734 = sext i8 %2733 to i32
  %2735 = icmp eq i32 %2732, %2734
  br i1 %2735, label %2736, label %2737

2736:                                             ; preds = %2728
  br label %3153

2737:                                             ; preds = %2728, %2720, %2712, %2704, %2696, %2688, %2680, %2672, %2664, %2656, %2648, %2640, %2632, %2624, %2616, %2608, %2604
  %2738 = load i32, i32* %12, align 4
  %2739 = sext i32 %2738 to i64
  %2740 = icmp eq i64 13, %2739
  br i1 %2740, label %2741, label %2846

2741:                                             ; preds = %2737
  %2742 = load i8*, i8** %11, align 8
  %2743 = getelementptr inbounds i8, i8* %2742, i64 0
  %2744 = load i8, i8* %2743, align 1
  %2745 = sext i8 %2744 to i32
  %2746 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), align 1
  %2747 = sext i8 %2746 to i32
  %2748 = icmp eq i32 %2745, %2747
  br i1 %2748, label %2749, label %2846

2749:                                             ; preds = %2741
  %2750 = load i8*, i8** %11, align 8
  %2751 = getelementptr inbounds i8, i8* %2750, i64 1
  %2752 = load i8, i8* %2751, align 1
  %2753 = sext i8 %2752 to i32
  %2754 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 1), align 1
  %2755 = sext i8 %2754 to i32
  %2756 = icmp eq i32 %2753, %2755
  br i1 %2756, label %2757, label %2846

2757:                                             ; preds = %2749
  %2758 = load i8*, i8** %11, align 8
  %2759 = getelementptr inbounds i8, i8* %2758, i64 2
  %2760 = load i8, i8* %2759, align 1
  %2761 = sext i8 %2760 to i32
  %2762 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 2), align 1
  %2763 = sext i8 %2762 to i32
  %2764 = icmp eq i32 %2761, %2763
  br i1 %2764, label %2765, label %2846

2765:                                             ; preds = %2757
  %2766 = load i8*, i8** %11, align 8
  %2767 = getelementptr inbounds i8, i8* %2766, i64 3
  %2768 = load i8, i8* %2767, align 1
  %2769 = sext i8 %2768 to i32
  %2770 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 3), align 1
  %2771 = sext i8 %2770 to i32
  %2772 = icmp eq i32 %2769, %2771
  br i1 %2772, label %2773, label %2846

2773:                                             ; preds = %2765
  %2774 = load i8*, i8** %11, align 8
  %2775 = getelementptr inbounds i8, i8* %2774, i64 4
  %2776 = load i8, i8* %2775, align 1
  %2777 = sext i8 %2776 to i32
  %2778 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 4), align 1
  %2779 = sext i8 %2778 to i32
  %2780 = icmp eq i32 %2777, %2779
  br i1 %2780, label %2781, label %2846

2781:                                             ; preds = %2773
  %2782 = load i8*, i8** %11, align 8
  %2783 = getelementptr inbounds i8, i8* %2782, i64 5
  %2784 = load i8, i8* %2783, align 1
  %2785 = sext i8 %2784 to i32
  %2786 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 5), align 1
  %2787 = sext i8 %2786 to i32
  %2788 = icmp eq i32 %2785, %2787
  br i1 %2788, label %2789, label %2846

2789:                                             ; preds = %2781
  %2790 = load i8*, i8** %11, align 8
  %2791 = getelementptr inbounds i8, i8* %2790, i64 6
  %2792 = load i8, i8* %2791, align 1
  %2793 = sext i8 %2792 to i32
  %2794 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 6), align 1
  %2795 = sext i8 %2794 to i32
  %2796 = icmp eq i32 %2793, %2795
  br i1 %2796, label %2797, label %2846

2797:                                             ; preds = %2789
  %2798 = load i8*, i8** %11, align 8
  %2799 = getelementptr inbounds i8, i8* %2798, i64 7
  %2800 = load i8, i8* %2799, align 1
  %2801 = sext i8 %2800 to i32
  %2802 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 7), align 1
  %2803 = sext i8 %2802 to i32
  %2804 = icmp eq i32 %2801, %2803
  br i1 %2804, label %2805, label %2846

2805:                                             ; preds = %2797
  %2806 = load i8*, i8** %11, align 8
  %2807 = getelementptr inbounds i8, i8* %2806, i64 8
  %2808 = load i8, i8* %2807, align 1
  %2809 = sext i8 %2808 to i32
  %2810 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 8), align 1
  %2811 = sext i8 %2810 to i32
  %2812 = icmp eq i32 %2809, %2811
  br i1 %2812, label %2813, label %2846

2813:                                             ; preds = %2805
  %2814 = load i8*, i8** %11, align 8
  %2815 = getelementptr inbounds i8, i8* %2814, i64 9
  %2816 = load i8, i8* %2815, align 1
  %2817 = sext i8 %2816 to i32
  %2818 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 9), align 1
  %2819 = sext i8 %2818 to i32
  %2820 = icmp eq i32 %2817, %2819
  br i1 %2820, label %2821, label %2846

2821:                                             ; preds = %2813
  %2822 = load i8*, i8** %11, align 8
  %2823 = getelementptr inbounds i8, i8* %2822, i64 10
  %2824 = load i8, i8* %2823, align 1
  %2825 = sext i8 %2824 to i32
  %2826 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 10), align 1
  %2827 = sext i8 %2826 to i32
  %2828 = icmp eq i32 %2825, %2827
  br i1 %2828, label %2829, label %2846

2829:                                             ; preds = %2821
  %2830 = load i8*, i8** %11, align 8
  %2831 = getelementptr inbounds i8, i8* %2830, i64 11
  %2832 = load i8, i8* %2831, align 1
  %2833 = sext i8 %2832 to i32
  %2834 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 11), align 1
  %2835 = sext i8 %2834 to i32
  %2836 = icmp eq i32 %2833, %2835
  br i1 %2836, label %2837, label %2846

2837:                                             ; preds = %2829
  %2838 = load i8*, i8** %11, align 8
  %2839 = getelementptr inbounds i8, i8* %2838, i64 12
  %2840 = load i8, i8* %2839, align 1
  %2841 = sext i8 %2840 to i32
  %2842 = load i8, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 12), align 1
  %2843 = sext i8 %2842 to i32
  %2844 = icmp eq i32 %2841, %2843
  br i1 %2844, label %2845, label %2846

2845:                                             ; preds = %2837
  br label %3152

2846:                                             ; preds = %2837, %2829, %2821, %2813, %2805, %2797, %2789, %2781, %2773, %2765, %2757, %2749, %2741, %2737
  %2847 = load i32, i32* %12, align 4
  %2848 = sext i32 %2847 to i64
  %2849 = icmp eq i64 15, %2848
  br i1 %2849, label %2850, label %3000

2850:                                             ; preds = %2846
  %2851 = load i8*, i8** %11, align 8
  %2852 = getelementptr inbounds i8, i8* %2851, i64 0
  %2853 = load i8, i8* %2852, align 1
  %2854 = sext i8 %2853 to i32
  %2855 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 0), align 1
  %2856 = sext i8 %2855 to i32
  %2857 = icmp eq i32 %2854, %2856
  br i1 %2857, label %2858, label %3000

2858:                                             ; preds = %2850
  %2859 = load i8*, i8** %11, align 8
  %2860 = getelementptr inbounds i8, i8* %2859, i64 1
  %2861 = load i8, i8* %2860, align 1
  %2862 = sext i8 %2861 to i32
  %2863 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 1), align 1
  %2864 = sext i8 %2863 to i32
  %2865 = icmp eq i32 %2862, %2864
  br i1 %2865, label %2866, label %3000

2866:                                             ; preds = %2858
  %2867 = load i8*, i8** %11, align 8
  %2868 = getelementptr inbounds i8, i8* %2867, i64 2
  %2869 = load i8, i8* %2868, align 1
  %2870 = sext i8 %2869 to i32
  %2871 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 2), align 1
  %2872 = sext i8 %2871 to i32
  %2873 = icmp eq i32 %2870, %2872
  br i1 %2873, label %2874, label %3000

2874:                                             ; preds = %2866
  %2875 = load i8*, i8** %11, align 8
  %2876 = getelementptr inbounds i8, i8* %2875, i64 3
  %2877 = load i8, i8* %2876, align 1
  %2878 = sext i8 %2877 to i32
  %2879 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 3), align 1
  %2880 = sext i8 %2879 to i32
  %2881 = icmp eq i32 %2878, %2880
  br i1 %2881, label %2882, label %3000

2882:                                             ; preds = %2874
  %2883 = load i8*, i8** %11, align 8
  %2884 = getelementptr inbounds i8, i8* %2883, i64 4
  %2885 = load i8, i8* %2884, align 1
  %2886 = sext i8 %2885 to i32
  %2887 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 4), align 1
  %2888 = sext i8 %2887 to i32
  %2889 = icmp eq i32 %2886, %2888
  br i1 %2889, label %2890, label %3000

2890:                                             ; preds = %2882
  %2891 = load i8*, i8** %11, align 8
  %2892 = getelementptr inbounds i8, i8* %2891, i64 5
  %2893 = load i8, i8* %2892, align 1
  %2894 = sext i8 %2893 to i32
  %2895 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 5), align 1
  %2896 = sext i8 %2895 to i32
  %2897 = icmp eq i32 %2894, %2896
  br i1 %2897, label %2898, label %3000

2898:                                             ; preds = %2890
  %2899 = load i8*, i8** %11, align 8
  %2900 = getelementptr inbounds i8, i8* %2899, i64 6
  %2901 = load i8, i8* %2900, align 1
  %2902 = sext i8 %2901 to i32
  %2903 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 6), align 1
  %2904 = sext i8 %2903 to i32
  %2905 = icmp eq i32 %2902, %2904
  br i1 %2905, label %2906, label %3000

2906:                                             ; preds = %2898
  %2907 = load i8*, i8** %11, align 8
  %2908 = getelementptr inbounds i8, i8* %2907, i64 7
  %2909 = load i8, i8* %2908, align 1
  %2910 = sext i8 %2909 to i32
  %2911 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 7), align 1
  %2912 = sext i8 %2911 to i32
  %2913 = icmp eq i32 %2910, %2912
  br i1 %2913, label %2914, label %3000

2914:                                             ; preds = %2906
  %2915 = load i8*, i8** %11, align 8
  %2916 = getelementptr inbounds i8, i8* %2915, i64 8
  %2917 = load i8, i8* %2916, align 1
  %2918 = sext i8 %2917 to i32
  %2919 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 8), align 1
  %2920 = sext i8 %2919 to i32
  %2921 = icmp eq i32 %2918, %2920
  br i1 %2921, label %2922, label %3000

2922:                                             ; preds = %2914
  %2923 = load i8*, i8** %11, align 8
  %2924 = getelementptr inbounds i8, i8* %2923, i64 9
  %2925 = load i8, i8* %2924, align 1
  %2926 = sext i8 %2925 to i32
  %2927 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 9), align 1
  %2928 = sext i8 %2927 to i32
  %2929 = icmp eq i32 %2926, %2928
  br i1 %2929, label %2930, label %3000

2930:                                             ; preds = %2922
  %2931 = load i8*, i8** %11, align 8
  %2932 = getelementptr inbounds i8, i8* %2931, i64 10
  %2933 = load i8, i8* %2932, align 1
  %2934 = sext i8 %2933 to i32
  %2935 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 10), align 1
  %2936 = sext i8 %2935 to i32
  %2937 = icmp eq i32 %2934, %2936
  br i1 %2937, label %2938, label %3000

2938:                                             ; preds = %2930
  %2939 = load i8*, i8** %11, align 8
  %2940 = getelementptr inbounds i8, i8* %2939, i64 11
  %2941 = load i8, i8* %2940, align 1
  %2942 = sext i8 %2941 to i32
  %2943 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 11), align 1
  %2944 = sext i8 %2943 to i32
  %2945 = icmp eq i32 %2942, %2944
  br i1 %2945, label %2946, label %3000

2946:                                             ; preds = %2938
  %2947 = load i8*, i8** %11, align 8
  %2948 = getelementptr inbounds i8, i8* %2947, i64 12
  %2949 = load i8, i8* %2948, align 1
  %2950 = sext i8 %2949 to i32
  %2951 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 12), align 1
  %2952 = sext i8 %2951 to i32
  %2953 = icmp eq i32 %2950, %2952
  br i1 %2953, label %2954, label %3000

2954:                                             ; preds = %2946
  %2955 = load i8*, i8** %11, align 8
  %2956 = getelementptr inbounds i8, i8* %2955, i64 13
  %2957 = load i8, i8* %2956, align 1
  %2958 = sext i8 %2957 to i32
  %2959 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 13), align 1
  %2960 = sext i8 %2959 to i32
  %2961 = icmp eq i32 %2958, %2960
  br i1 %2961, label %2962, label %3000

2962:                                             ; preds = %2954
  %2963 = load i8*, i8** %11, align 8
  %2964 = getelementptr inbounds i8, i8* %2963, i64 14
  %2965 = load i8, i8* %2964, align 1
  %2966 = sext i8 %2965 to i32
  %2967 = load i8, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.21, i64 0, i64 14), align 1
  %2968 = sext i8 %2967 to i32
  %2969 = icmp eq i32 %2966, %2968
  br i1 %2969, label %2970, label %3000

2970:                                             ; preds = %2962
  br label %2971

2971:                                             ; preds = %2970
  %2972 = load i32, i32* %8, align 4
  %2973 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2974 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2973, i32 0, i32 2
  %2975 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2974, i32 0, i32 0
  store i32 %2972, i32* %2975, align 8
  %2976 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2977 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2976, i32 0, i32 2
  %2978 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2977, i32 0, i32 0
  %2979 = load i32, i32* %2978, align 8
  %2980 = call i32 @mrb_nil_p(i32 %2979)
  %2981 = icmp ne i32 %2980, 0
  br i1 %2981, label %2998, label %2982

2982:                                             ; preds = %2971
  %2983 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2984 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2985 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2984, i32 0, i32 2
  %2986 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2985, i32 0, i32 0
  %2987 = load i32, i32* %2986, align 8
  %2988 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %2983, i32 %2987)
  %2989 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %2990 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %2989, i32 0, i32 2
  %2991 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %2990, i32 0, i32 0
  store i32 %2988, i32* %2991, align 8
  %2992 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %2993 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %2992, i32 0, i32 0
  %2994 = load i32*, i32** %2993, align 8
  %2995 = icmp ne i32* %2994, null
  br i1 %2995, label %2996, label %2997

2996:                                             ; preds = %2982
  store i32 -1, i32* %5, align 4
  br label %3173

2997:                                             ; preds = %2982
  br label %2998

2998:                                             ; preds = %2997, %2971
  br label %2999

2999:                                             ; preds = %2998
  br label %3151

3000:                                             ; preds = %2962, %2954, %2946, %2938, %2930, %2922, %2914, %2906, %2898, %2890, %2882, %2874, %2866, %2858, %2850, %2846
  %3001 = load i32, i32* %12, align 4
  %3002 = icmp sge i32 %3001, 5
  br i1 %3002, label %3003, label %3044

3003:                                             ; preds = %3000
  %3004 = load i8*, i8** %11, align 8
  %3005 = call i64 @memcmp(i8* %3004, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i64 0, i64 0), i32 5)
  %3006 = icmp eq i64 %3005, 0
  br i1 %3006, label %3007, label %3044

3007:                                             ; preds = %3003
  %3008 = call i32 (...) @mrb_nil_value()
  store i32 %3008, i32* %14, align 4
  br label %3009

3009:                                             ; preds = %3007
  %3010 = load i32, i32* %8, align 4
  store i32 %3010, i32* %14, align 4
  %3011 = load i32, i32* %14, align 4
  %3012 = call i32 @mrb_nil_p(i32 %3011)
  %3013 = icmp ne i32 %3012, 0
  br i1 %3013, label %3024, label %3014

3014:                                             ; preds = %3009
  %3015 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %3016 = load i32, i32* %14, align 4
  %3017 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %3015, i32 %3016)
  store i32 %3017, i32* %14, align 4
  %3018 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %3019 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3018, i32 0, i32 0
  %3020 = load i32*, i32** %3019, align 8
  %3021 = icmp ne i32* %3020, null
  br i1 %3021, label %3022, label %3023

3022:                                             ; preds = %3014
  store i32 -1, i32* %5, align 4
  br label %3173

3023:                                             ; preds = %3014
  br label %3024

3024:                                             ; preds = %3023, %3009
  br label %3025

3025:                                             ; preds = %3024
  %3026 = load i32, i32* %14, align 4
  %3027 = call i32 @mrb_nil_p(i32 %3026)
  %3028 = icmp ne i32 %3027, 0
  br i1 %3028, label %3043, label %3029

3029:                                             ; preds = %3025
  %3030 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3031 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3030, i32 0, i32 1
  %3032 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3031, align 8
  %3033 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %3032, i32 0, i32 0
  %3034 = load i32, i32* %3033, align 4
  %3035 = load i32, i32* %7, align 4
  %3036 = load i32, i32* %14, align 4
  %3037 = load i32, i32* @handle_header_env_key, align 4
  %3038 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3039 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3038, i32 0, i32 0
  %3040 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3039, align 8
  %3041 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3040, i32 0, i32 0
  %3042 = call i32 @h2o_mruby_iterate_header_values(i32 %3034, i32 %3035, i32 %3036, i32 %3037, %struct.TYPE_14__* %3041)
  br label %3043

3043:                                             ; preds = %3029, %3025
  br label %3150

3044:                                             ; preds = %3003, %3000
  %3045 = load i32, i32* %12, align 4
  %3046 = icmp ne i32 %3045, 0
  br i1 %3046, label %3047, label %3149

3047:                                             ; preds = %3044
  %3048 = call i32 (...) @mrb_nil_value()
  store i32 %3048, i32* %15, align 4
  br label %3049

3049:                                             ; preds = %3047
  %3050 = load i32, i32* %8, align 4
  store i32 %3050, i32* %15, align 4
  %3051 = load i32, i32* %15, align 4
  %3052 = call i32 @mrb_nil_p(i32 %3051)
  %3053 = icmp ne i32 %3052, 0
  br i1 %3053, label %3064, label %3054

3054:                                             ; preds = %3049
  %3055 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %3056 = load i32, i32* %15, align 4
  %3057 = call i32 @h2o_mruby_to_str(%struct.TYPE_12__* %3055, i32 %3056)
  store i32 %3057, i32* %15, align 4
  %3058 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %3059 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3058, i32 0, i32 0
  %3060 = load i32*, i32** %3059, align 8
  %3061 = icmp ne i32* %3060, null
  br i1 %3061, label %3062, label %3063

3062:                                             ; preds = %3054
  store i32 -1, i32* %5, align 4
  br label %3173

3063:                                             ; preds = %3054
  br label %3064

3064:                                             ; preds = %3063, %3049
  br label %3065

3065:                                             ; preds = %3064
  %3066 = load i32, i32* %15, align 4
  %3067 = call i32 @mrb_nil_p(i32 %3066)
  %3068 = icmp ne i32 %3067, 0
  br i1 %3068, label %3148, label %3069

3069:                                             ; preds = %3065
  %3070 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3071 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3070, i32 0, i32 0
  %3072 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3071, align 8
  %3073 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3072, i32 0, i32 0
  %3074 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3073, i32 0, i32 1
  %3075 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3076 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3075, i32 0, i32 0
  %3077 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3076, align 8
  %3078 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3077, i32 0, i32 0
  %3079 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3078, i32 0, i32 0
  %3080 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3081 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3080, i32 0, i32 0
  %3082 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3081, align 8
  %3083 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3082, i32 0, i32 0
  %3084 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3083, i32 0, i32 0
  %3085 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3084, i32 0, i32 0
  %3086 = load i32, i32* %3085, align 8
  %3087 = add nsw i32 %3086, 2
  %3088 = call i32 @h2o_vector_reserve(i32* %3074, %struct.TYPE_13__* %3079, i32 %3087)
  %3089 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3090 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3089, i32 0, i32 0
  %3091 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3090, align 8
  %3092 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3091, i32 0, i32 0
  %3093 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3092, i32 0, i32 1
  %3094 = load i8*, i8** %11, align 8
  %3095 = load i32, i32* %12, align 4
  %3096 = call i8* @h2o_strdup(i32* %3093, i8* %3094, i32 %3095)
  %3097 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3098 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3097, i32 0, i32 0
  %3099 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3098, align 8
  %3100 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3099, i32 0, i32 0
  %3101 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3100, i32 0, i32 0
  %3102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3101, i32 0, i32 1
  %3103 = load i8**, i8*** %3102, align 8
  %3104 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3105 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3104, i32 0, i32 0
  %3106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3105, align 8
  %3107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3106, i32 0, i32 0
  %3108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3107, i32 0, i32 0
  %3109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3108, i32 0, i32 0
  %3110 = load i32, i32* %3109, align 8
  %3111 = sext i32 %3110 to i64
  %3112 = getelementptr inbounds i8*, i8** %3103, i64 %3111
  store i8* %3096, i8** %3112, align 8
  %3113 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3114 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3113, i32 0, i32 0
  %3115 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3114, align 8
  %3116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3115, i32 0, i32 0
  %3117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3116, i32 0, i32 1
  %3118 = load i32, i32* %15, align 4
  %3119 = call i8* @RSTRING_PTR(i32 %3118)
  %3120 = load i32, i32* %15, align 4
  %3121 = call i32 @RSTRING_LEN(i32 %3120)
  %3122 = call i8* @h2o_strdup(i32* %3117, i8* %3119, i32 %3121)
  %3123 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3124 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3123, i32 0, i32 0
  %3125 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3124, align 8
  %3126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3125, i32 0, i32 0
  %3127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3126, i32 0, i32 0
  %3128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3127, i32 0, i32 1
  %3129 = load i8**, i8*** %3128, align 8
  %3130 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3131 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3130, i32 0, i32 0
  %3132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3131, align 8
  %3133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3132, i32 0, i32 0
  %3134 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3133, i32 0, i32 0
  %3135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3134, i32 0, i32 0
  %3136 = load i32, i32* %3135, align 8
  %3137 = add nsw i32 %3136, 1
  %3138 = sext i32 %3137 to i64
  %3139 = getelementptr inbounds i8*, i8** %3129, i64 %3138
  store i8* %3122, i8** %3139, align 8
  %3140 = load %struct.st_mruby_env_foreach_data_t*, %struct.st_mruby_env_foreach_data_t** %10, align 8
  %3141 = getelementptr inbounds %struct.st_mruby_env_foreach_data_t, %struct.st_mruby_env_foreach_data_t* %3140, i32 0, i32 0
  %3142 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3141, align 8
  %3143 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %3142, i32 0, i32 0
  %3144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %3143, i32 0, i32 0
  %3145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %3144, i32 0, i32 0
  %3146 = load i32, i32* %3145, align 8
  %3147 = add nsw i32 %3146, 2
  store i32 %3147, i32* %3145, align 8
  br label %3148

3148:                                             ; preds = %3069, %3065
  br label %3149

3149:                                             ; preds = %3148, %3044
  br label %3150

3150:                                             ; preds = %3149, %3043
  br label %3151

3151:                                             ; preds = %3150, %2999
  br label %3152

3152:                                             ; preds = %3151, %2845
  br label %3153

3153:                                             ; preds = %3152, %2736
  br label %3154

3154:                                             ; preds = %3153, %2603
  br label %3155

3155:                                             ; preds = %3154, %2462
  br label %3156

3156:                                             ; preds = %3155, %2357
  br label %3157

3157:                                             ; preds = %3156, %2256
  br label %3158

3158:                                             ; preds = %3157, %2143
  br label %3159

3159:                                             ; preds = %3158, %1909
  br label %3160

3160:                                             ; preds = %3159, %1675
  br label %3161

3161:                                             ; preds = %3160, %1550
  br label %3162

3162:                                             ; preds = %3161, %1396
  br label %3163

3163:                                             ; preds = %3162, %1274
  br label %3164

3164:                                             ; preds = %3163, %1152
  br label %3165

3165:                                             ; preds = %3164, %1030
  br label %3166

3166:                                             ; preds = %3165, %908
  br label %3167

3167:                                             ; preds = %3166, %762
  br label %3168

3168:                                             ; preds = %3167, %640
  br label %3169

3169:                                             ; preds = %3168, %518
  br label %3170

3170:                                             ; preds = %3169, %388
  br label %3171

3171:                                             ; preds = %3170, %282
  br label %3172

3172:                                             ; preds = %3171, %176
  store i32 0, i32* %5, align 4
  br label %3173

3173:                                             ; preds = %3172, %3062, %3022, %2996, %2459, %2253, %2140, %1906, %1547, %1393, %1271, %1149, %1027, %905, %759, %637, %515, %385, %279, %161, %25
  %3174 = load i32, i32* %5, align 4
  ret i32 %3174
}

declare dso_local i32 @h2o_mruby_to_str(%struct.TYPE_12__*, i32) #1

declare dso_local i8* @RSTRING_PTR(i32) #1

declare dso_local i32 @RSTRING_LEN(i32) #1

declare dso_local i32 @mrb_nil_value(...) #1

declare dso_local i32 @mrb_nil_p(i32) #1

declare dso_local i32 @h2o_mruby_to_int(...) #1

declare dso_local i32 @mrb_fixnum(i32) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @h2o_mruby_iterate_header_values(i32, i32, i32, i32, %struct.TYPE_14__*) #1

declare dso_local i32 @h2o_vector_reserve(i32*, %struct.TYPE_13__*, i32) #1

declare dso_local i8* @h2o_strdup(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
