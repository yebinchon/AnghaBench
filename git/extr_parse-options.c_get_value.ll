; ModuleID = '/home/carl/AnghaBench/git/extr_parse-options.c_get_value.c'
source_filename = "/home/carl/AnghaBench/git/extr_parse-options.c_get_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parse_opt_ctx_t = type { i64, i32 }
%struct.option = type { i32, i32, i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)*, i32, i32, i64, i32 (%struct.option*, i8*, i32)* }

@OPT_UNSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"%s takes no value\00", align 1
@PARSE_OPT_NONEG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"%s isn't available\00", align 1
@OPT_SHORT = common dso_local global i32 0, align 4
@PARSE_OPT_NOARG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"BITOP can't have unset form\00", align 1
@PARSE_OPT_OPTARG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"%s expects a numerical value\00", align 1
@.str.4 = private unnamed_addr constant [70 x i8] c"%s expects a non-negative integer value with an optional k/m/g suffix\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"opt->type %d should not happen\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.parse_opt_ctx_t*, %struct.option*, %struct.option*, i32)* @get_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_value(%struct.parse_opt_ctx_t* %0, %struct.option* %1, %struct.option* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.parse_opt_ctx_t*, align 8
  %7 = alloca %struct.option*, align 8
  %8 = alloca %struct.option*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  store %struct.parse_opt_ctx_t* %0, %struct.parse_opt_ctx_t** %6, align 8
  store %struct.option* %1, %struct.option** %7, align 8
  store %struct.option* %2, %struct.option** %8, align 8
  store i32 %3, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @OPT_UNSET, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %12, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %4
  %22 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %23 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.option*, %struct.option** %7, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @optname(%struct.option* %28, i32 %29)
  %31 = call i32 @error(i32 %27, i32 %30)
  store i32 %31, i32* %5, align 4
  br label %505

32:                                               ; preds = %21, %4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %48

35:                                               ; preds = %32
  %36 = load %struct.option*, %struct.option** %7, align 8
  %37 = getelementptr inbounds %struct.option, %struct.option* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @PARSE_OPT_NONEG, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = call i32 @_(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %44 = load %struct.option*, %struct.option** %7, align 8
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @optname(%struct.option* %44, i32 %45)
  %47 = call i32 @error(i32 %43, i32 %46)
  store i32 %47, i32* %5, align 4
  br label %505

48:                                               ; preds = %35, %32
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @OPT_SHORT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %71, label %53

53:                                               ; preds = %48
  %54 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %55 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %53
  %59 = load %struct.option*, %struct.option** %7, align 8
  %60 = getelementptr inbounds %struct.option, %struct.option* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %71

65:                                               ; preds = %58
  %66 = call i32 @_(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %67 = load %struct.option*, %struct.option** %7, align 8
  %68 = load i32, i32* %9, align 4
  %69 = call i32 @optname(%struct.option* %67, i32 %68)
  %70 = call i32 @error(i32 %66, i32 %69)
  store i32 %70, i32* %5, align 4
  br label %505

71:                                               ; preds = %58, %53, %48
  %72 = load %struct.option*, %struct.option** %7, align 8
  %73 = getelementptr inbounds %struct.option, %struct.option* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  switch i32 %74, label %500 [
    i32 132, label %75
    i32 139, label %83
    i32 130, label %108
    i32 138, label %133
    i32 135, label %158
    i32 129, label %187
    i32 136, label %201
    i32 128, label %231
    i32 134, label %272
    i32 137, label %326
    i32 133, label %388
    i32 131, label %450
  ]

75:                                               ; preds = %71
  %76 = load %struct.option*, %struct.option** %7, align 8
  %77 = getelementptr inbounds %struct.option, %struct.option* %76, i32 0, i32 2
  %78 = load i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)*, i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)** %77, align 8
  %79 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %80 = load %struct.option*, %struct.option** %7, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 %78(%struct.parse_opt_ctx_t* %79, %struct.option* %80, i8* null, i32 %81)
  store i32 %82, i32* %5, align 4
  br label %505

83:                                               ; preds = %71
  %84 = load i32, i32* %12, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %97

86:                                               ; preds = %83
  %87 = load %struct.option*, %struct.option** %7, align 8
  %88 = getelementptr inbounds %struct.option, %struct.option* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = xor i32 %89, -1
  %91 = load %struct.option*, %struct.option** %7, align 8
  %92 = getelementptr inbounds %struct.option, %struct.option* %91, i32 0, i32 5
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %94, align 4
  %96 = and i32 %95, %90
  store i32 %96, i32* %94, align 4
  br label %107

97:                                               ; preds = %83
  %98 = load %struct.option*, %struct.option** %7, align 8
  %99 = getelementptr inbounds %struct.option, %struct.option* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.option*, %struct.option** %7, align 8
  %102 = getelementptr inbounds %struct.option, %struct.option* %101, i32 0, i32 5
  %103 = load i64, i64* %102, align 8
  %104 = inttoptr i64 %103 to i32*
  %105 = load i32, i32* %104, align 4
  %106 = or i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %97, %86
  store i32 0, i32* %5, align 4
  br label %505

108:                                              ; preds = %71
  %109 = load i32, i32* %12, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %108
  %112 = load %struct.option*, %struct.option** %7, align 8
  %113 = getelementptr inbounds %struct.option, %struct.option* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.option*, %struct.option** %7, align 8
  %116 = getelementptr inbounds %struct.option, %struct.option* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = inttoptr i64 %117 to i32*
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %114
  store i32 %120, i32* %118, align 4
  br label %132

121:                                              ; preds = %108
  %122 = load %struct.option*, %struct.option** %7, align 8
  %123 = getelementptr inbounds %struct.option, %struct.option* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = xor i32 %124, -1
  %126 = load %struct.option*, %struct.option** %7, align 8
  %127 = getelementptr inbounds %struct.option, %struct.option* %126, i32 0, i32 5
  %128 = load i64, i64* %127, align 8
  %129 = inttoptr i64 %128 to i32*
  %130 = load i32, i32* %129, align 4
  %131 = and i32 %130, %125
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %121, %111
  store i32 0, i32* %5, align 4
  br label %505

133:                                              ; preds = %71
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %133
  %137 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  br label %138

138:                                              ; preds = %136, %133
  %139 = load %struct.option*, %struct.option** %7, align 8
  %140 = getelementptr inbounds %struct.option, %struct.option* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  %142 = xor i32 %141, -1
  %143 = load %struct.option*, %struct.option** %7, align 8
  %144 = getelementptr inbounds %struct.option, %struct.option* %143, i32 0, i32 5
  %145 = load i64, i64* %144, align 8
  %146 = inttoptr i64 %145 to i32*
  %147 = load i32, i32* %146, align 4
  %148 = and i32 %147, %142
  store i32 %148, i32* %146, align 4
  %149 = load %struct.option*, %struct.option** %7, align 8
  %150 = getelementptr inbounds %struct.option, %struct.option* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.option*, %struct.option** %7, align 8
  %153 = getelementptr inbounds %struct.option, %struct.option* %152, i32 0, i32 5
  %154 = load i64, i64* %153, align 8
  %155 = inttoptr i64 %154 to i32*
  %156 = load i32, i32* %155, align 4
  %157 = or i32 %156, %151
  store i32 %157, i32* %155, align 4
  store i32 0, i32* %5, align 4
  br label %505

158:                                              ; preds = %71
  %159 = load %struct.option*, %struct.option** %7, align 8
  %160 = getelementptr inbounds %struct.option, %struct.option* %159, i32 0, i32 5
  %161 = load i64, i64* %160, align 8
  %162 = inttoptr i64 %161 to i32*
  %163 = load i32, i32* %162, align 4
  %164 = icmp slt i32 %163, 0
  br i1 %164, label %165, label %170

165:                                              ; preds = %158
  %166 = load %struct.option*, %struct.option** %7, align 8
  %167 = getelementptr inbounds %struct.option, %struct.option* %166, i32 0, i32 5
  %168 = load i64, i64* %167, align 8
  %169 = inttoptr i64 %168 to i32*
  store i32 0, i32* %169, align 4
  br label %170

170:                                              ; preds = %165, %158
  %171 = load i32, i32* %12, align 4
  %172 = icmp ne i32 %171, 0
  br i1 %172, label %173, label %174

173:                                              ; preds = %170
  br label %181

174:                                              ; preds = %170
  %175 = load %struct.option*, %struct.option** %7, align 8
  %176 = getelementptr inbounds %struct.option, %struct.option* %175, i32 0, i32 5
  %177 = load i64, i64* %176, align 8
  %178 = inttoptr i64 %177 to i32*
  %179 = load i32, i32* %178, align 4
  %180 = add nsw i32 %179, 1
  br label %181

181:                                              ; preds = %174, %173
  %182 = phi i32 [ 0, %173 ], [ %180, %174 ]
  %183 = load %struct.option*, %struct.option** %7, align 8
  %184 = getelementptr inbounds %struct.option, %struct.option* %183, i32 0, i32 5
  %185 = load i64, i64* %184, align 8
  %186 = inttoptr i64 %185 to i32*
  store i32 %182, i32* %186, align 4
  store i32 0, i32* %5, align 4
  br label %505

187:                                              ; preds = %71
  %188 = load i32, i32* %12, align 4
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %187
  br label %195

191:                                              ; preds = %187
  %192 = load %struct.option*, %struct.option** %7, align 8
  %193 = getelementptr inbounds %struct.option, %struct.option* %192, i32 0, i32 3
  %194 = load i32, i32* %193, align 8
  br label %195

195:                                              ; preds = %191, %190
  %196 = phi i32 [ 0, %190 ], [ %194, %191 ]
  %197 = load %struct.option*, %struct.option** %7, align 8
  %198 = getelementptr inbounds %struct.option, %struct.option* %197, i32 0, i32 5
  %199 = load i64, i64* %198, align 8
  %200 = inttoptr i64 %199 to i32*
  store i32 %196, i32* %200, align 4
  store i32 0, i32* %5, align 4
  br label %505

201:                                              ; preds = %71
  %202 = load %struct.option*, %struct.option** %7, align 8
  %203 = getelementptr inbounds %struct.option, %struct.option* %202, i32 0, i32 5
  %204 = load i64, i64* %203, align 8
  %205 = inttoptr i64 %204 to i32*
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %208, label %223

208:                                              ; preds = %201
  %209 = load %struct.option*, %struct.option** %7, align 8
  %210 = getelementptr inbounds %struct.option, %struct.option* %209, i32 0, i32 5
  %211 = load i64, i64* %210, align 8
  %212 = inttoptr i64 %211 to i32*
  %213 = load i32, i32* %212, align 4
  %214 = load %struct.option*, %struct.option** %7, align 8
  %215 = getelementptr inbounds %struct.option, %struct.option* %214, i32 0, i32 3
  %216 = load i32, i32* %215, align 8
  %217 = icmp ne i32 %213, %216
  br i1 %217, label %218, label %223

218:                                              ; preds = %208
  %219 = load %struct.option*, %struct.option** %7, align 8
  %220 = load %struct.option*, %struct.option** %8, align 8
  %221 = load i32, i32* %9, align 4
  %222 = call i32 @opt_command_mode_error(%struct.option* %219, %struct.option* %220, i32 %221)
  store i32 %222, i32* %5, align 4
  br label %505

223:                                              ; preds = %208, %201
  %224 = load %struct.option*, %struct.option** %7, align 8
  %225 = getelementptr inbounds %struct.option, %struct.option* %224, i32 0, i32 3
  %226 = load i32, i32* %225, align 8
  %227 = load %struct.option*, %struct.option** %7, align 8
  %228 = getelementptr inbounds %struct.option, %struct.option* %227, i32 0, i32 5
  %229 = load i64, i64* %228, align 8
  %230 = inttoptr i64 %229 to i32*
  store i32 %226, i32* %230, align 4
  store i32 0, i32* %5, align 4
  br label %505

231:                                              ; preds = %71
  %232 = load i32, i32* %12, align 4
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %234, label %239

234:                                              ; preds = %231
  %235 = load %struct.option*, %struct.option** %7, align 8
  %236 = getelementptr inbounds %struct.option, %struct.option* %235, i32 0, i32 5
  %237 = load i64, i64* %236, align 8
  %238 = inttoptr i64 %237 to i8**
  store i8* null, i8** %238, align 8
  br label %271

239:                                              ; preds = %231
  %240 = load %struct.option*, %struct.option** %7, align 8
  %241 = getelementptr inbounds %struct.option, %struct.option* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %244 = and i32 %242, %243
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %246, label %261

246:                                              ; preds = %239
  %247 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %248 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %247, i32 0, i32 0
  %249 = load i64, i64* %248, align 8
  %250 = icmp ne i64 %249, 0
  br i1 %250, label %261, label %251

251:                                              ; preds = %246
  %252 = load %struct.option*, %struct.option** %7, align 8
  %253 = getelementptr inbounds %struct.option, %struct.option* %252, i32 0, i32 3
  %254 = load i32, i32* %253, align 8
  %255 = sext i32 %254 to i64
  %256 = inttoptr i64 %255 to i8*
  %257 = load %struct.option*, %struct.option** %7, align 8
  %258 = getelementptr inbounds %struct.option, %struct.option* %257, i32 0, i32 5
  %259 = load i64, i64* %258, align 8
  %260 = inttoptr i64 %259 to i8**
  store i8* %256, i8** %260, align 8
  br label %270

261:                                              ; preds = %246, %239
  %262 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %263 = load %struct.option*, %struct.option** %7, align 8
  %264 = load i32, i32* %9, align 4
  %265 = load %struct.option*, %struct.option** %7, align 8
  %266 = getelementptr inbounds %struct.option, %struct.option* %265, i32 0, i32 5
  %267 = load i64, i64* %266, align 8
  %268 = inttoptr i64 %267 to i8**
  %269 = call i32 @get_arg(%struct.parse_opt_ctx_t* %262, %struct.option* %263, i32 %264, i8** %268)
  store i32 %269, i32* %5, align 4
  br label %505

270:                                              ; preds = %251
  br label %271

271:                                              ; preds = %270, %234
  store i32 0, i32* %5, align 4
  br label %505

272:                                              ; preds = %71
  store i32 0, i32* %13, align 4
  %273 = load i32, i32* %12, align 4
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %275, label %280

275:                                              ; preds = %272
  %276 = load %struct.option*, %struct.option** %7, align 8
  %277 = getelementptr inbounds %struct.option, %struct.option* %276, i32 0, i32 5
  %278 = load i64, i64* %277, align 8
  %279 = inttoptr i64 %278 to i8**
  store i8* null, i8** %279, align 8
  br label %312

280:                                              ; preds = %272
  %281 = load %struct.option*, %struct.option** %7, align 8
  %282 = getelementptr inbounds %struct.option, %struct.option* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %285 = and i32 %283, %284
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %302

287:                                              ; preds = %280
  %288 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %289 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %288, i32 0, i32 0
  %290 = load i64, i64* %289, align 8
  %291 = icmp ne i64 %290, 0
  br i1 %291, label %302, label %292

292:                                              ; preds = %287
  %293 = load %struct.option*, %struct.option** %7, align 8
  %294 = getelementptr inbounds %struct.option, %struct.option* %293, i32 0, i32 3
  %295 = load i32, i32* %294, align 8
  %296 = sext i32 %295 to i64
  %297 = inttoptr i64 %296 to i8*
  %298 = load %struct.option*, %struct.option** %7, align 8
  %299 = getelementptr inbounds %struct.option, %struct.option* %298, i32 0, i32 5
  %300 = load i64, i64* %299, align 8
  %301 = inttoptr i64 %300 to i8**
  store i8* %297, i8** %301, align 8
  br label %311

302:                                              ; preds = %287, %280
  %303 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %304 = load %struct.option*, %struct.option** %7, align 8
  %305 = load i32, i32* %9, align 4
  %306 = load %struct.option*, %struct.option** %7, align 8
  %307 = getelementptr inbounds %struct.option, %struct.option* %306, i32 0, i32 5
  %308 = load i64, i64* %307, align 8
  %309 = inttoptr i64 %308 to i8**
  %310 = call i32 @get_arg(%struct.parse_opt_ctx_t* %303, %struct.option* %304, i32 %305, i8** %309)
  store i32 %310, i32* %13, align 4
  br label %311

311:                                              ; preds = %302, %292
  br label %312

312:                                              ; preds = %311, %275
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %324, label %315

315:                                              ; preds = %312
  %316 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %317 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %316, i32 0, i32 1
  %318 = load i32, i32* %317, align 8
  %319 = load %struct.option*, %struct.option** %7, align 8
  %320 = getelementptr inbounds %struct.option, %struct.option* %319, i32 0, i32 5
  %321 = load i64, i64* %320, align 8
  %322 = inttoptr i64 %321 to i8**
  %323 = call i32 @fix_filename(i32 %318, i8** %322)
  br label %324

324:                                              ; preds = %315, %312
  %325 = load i32, i32* %13, align 4
  store i32 %325, i32* %5, align 4
  br label %505

326:                                              ; preds = %71
  store i8* null, i8** %14, align 8
  %327 = load i32, i32* %12, align 4
  %328 = icmp ne i32 %327, 0
  br i1 %328, label %329, label %330

329:                                              ; preds = %326
  store i32 1, i32* %15, align 4
  br label %363

330:                                              ; preds = %326
  %331 = load %struct.option*, %struct.option** %7, align 8
  %332 = getelementptr inbounds %struct.option, %struct.option* %331, i32 0, i32 0
  %333 = load i32, i32* %332, align 8
  %334 = load i32, i32* @PARSE_OPT_NOARG, align 4
  %335 = and i32 %333, %334
  %336 = icmp ne i32 %335, 0
  br i1 %336, label %337, label %338

337:                                              ; preds = %330
  store i32 0, i32* %15, align 4
  br label %362

338:                                              ; preds = %330
  %339 = load %struct.option*, %struct.option** %7, align 8
  %340 = getelementptr inbounds %struct.option, %struct.option* %339, i32 0, i32 0
  %341 = load i32, i32* %340, align 8
  %342 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %343 = and i32 %341, %342
  %344 = icmp ne i32 %343, 0
  br i1 %344, label %345, label %351

345:                                              ; preds = %338
  %346 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %347 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %351, label %350

350:                                              ; preds = %345
  store i32 0, i32* %15, align 4
  br label %361

351:                                              ; preds = %345, %338
  %352 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %353 = load %struct.option*, %struct.option** %7, align 8
  %354 = load i32, i32* %9, align 4
  %355 = call i32 @get_arg(%struct.parse_opt_ctx_t* %352, %struct.option* %353, i32 %354, i8** %11)
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %358

357:                                              ; preds = %351
  store i32 -1, i32* %5, align 4
  br label %505

358:                                              ; preds = %351
  store i32 0, i32* %15, align 4
  %359 = load i8*, i8** %11, align 8
  store i8* %359, i8** %14, align 8
  br label %360

360:                                              ; preds = %358
  br label %361

361:                                              ; preds = %360, %350
  br label %362

362:                                              ; preds = %361, %337
  br label %363

363:                                              ; preds = %362, %329
  %364 = load %struct.option*, %struct.option** %7, align 8
  %365 = getelementptr inbounds %struct.option, %struct.option* %364, i32 0, i32 6
  %366 = load i32 (%struct.option*, i8*, i32)*, i32 (%struct.option*, i8*, i32)** %365, align 8
  %367 = icmp ne i32 (%struct.option*, i8*, i32)* %366, null
  br i1 %367, label %368, label %379

368:                                              ; preds = %363
  %369 = load %struct.option*, %struct.option** %7, align 8
  %370 = getelementptr inbounds %struct.option, %struct.option* %369, i32 0, i32 6
  %371 = load i32 (%struct.option*, i8*, i32)*, i32 (%struct.option*, i8*, i32)** %370, align 8
  %372 = load %struct.option*, %struct.option** %7, align 8
  %373 = load i8*, i8** %14, align 8
  %374 = load i32, i32* %15, align 4
  %375 = call i32 %371(%struct.option* %372, i8* %373, i32 %374)
  %376 = icmp ne i32 %375, 0
  %377 = zext i1 %376 to i64
  %378 = select i1 %376, i32 -1, i32 0
  store i32 %378, i32* %5, align 4
  br label %505

379:                                              ; preds = %363
  %380 = load %struct.option*, %struct.option** %7, align 8
  %381 = getelementptr inbounds %struct.option, %struct.option* %380, i32 0, i32 2
  %382 = load i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)*, i32 (%struct.parse_opt_ctx_t*, %struct.option*, i8*, i32)** %381, align 8
  %383 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %384 = load %struct.option*, %struct.option** %7, align 8
  %385 = load i8*, i8** %14, align 8
  %386 = load i32, i32* %15, align 4
  %387 = call i32 %382(%struct.parse_opt_ctx_t* %383, %struct.option* %384, i8* %385, i32 %386)
  store i32 %387, i32* %5, align 4
  br label %505

388:                                              ; preds = %71
  %389 = load i32, i32* %12, align 4
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %396

391:                                              ; preds = %388
  %392 = load %struct.option*, %struct.option** %7, align 8
  %393 = getelementptr inbounds %struct.option, %struct.option* %392, i32 0, i32 5
  %394 = load i64, i64* %393, align 8
  %395 = inttoptr i64 %394 to i32*
  store i32 0, i32* %395, align 4
  store i32 0, i32* %5, align 4
  br label %505

396:                                              ; preds = %388
  %397 = load %struct.option*, %struct.option** %7, align 8
  %398 = getelementptr inbounds %struct.option, %struct.option* %397, i32 0, i32 0
  %399 = load i32, i32* %398, align 8
  %400 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %401 = and i32 %399, %400
  %402 = icmp ne i32 %401, 0
  br i1 %402, label %403, label %416

403:                                              ; preds = %396
  %404 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %405 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %404, i32 0, i32 0
  %406 = load i64, i64* %405, align 8
  %407 = icmp ne i64 %406, 0
  br i1 %407, label %416, label %408

408:                                              ; preds = %403
  %409 = load %struct.option*, %struct.option** %7, align 8
  %410 = getelementptr inbounds %struct.option, %struct.option* %409, i32 0, i32 3
  %411 = load i32, i32* %410, align 8
  %412 = load %struct.option*, %struct.option** %7, align 8
  %413 = getelementptr inbounds %struct.option, %struct.option* %412, i32 0, i32 5
  %414 = load i64, i64* %413, align 8
  %415 = inttoptr i64 %414 to i32*
  store i32 %411, i32* %415, align 4
  store i32 0, i32* %5, align 4
  br label %505

416:                                              ; preds = %403, %396
  %417 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %418 = load %struct.option*, %struct.option** %7, align 8
  %419 = load i32, i32* %9, align 4
  %420 = call i32 @get_arg(%struct.parse_opt_ctx_t* %417, %struct.option* %418, i32 %419, i8** %11)
  %421 = icmp ne i32 %420, 0
  br i1 %421, label %422, label %423

422:                                              ; preds = %416
  store i32 -1, i32* %5, align 4
  br label %505

423:                                              ; preds = %416
  %424 = load i8*, i8** %11, align 8
  %425 = load i8, i8* %424, align 1
  %426 = icmp ne i8 %425, 0
  br i1 %426, label %433, label %427

427:                                              ; preds = %423
  %428 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %429 = load %struct.option*, %struct.option** %7, align 8
  %430 = load i32, i32* %9, align 4
  %431 = call i32 @optname(%struct.option* %429, i32 %430)
  %432 = call i32 @error(i32 %428, i32 %431)
  store i32 %432, i32* %5, align 4
  br label %505

433:                                              ; preds = %423
  %434 = load i8*, i8** %11, align 8
  %435 = call i32 @strtol(i8* %434, i8** %10, i32 10)
  %436 = load %struct.option*, %struct.option** %7, align 8
  %437 = getelementptr inbounds %struct.option, %struct.option* %436, i32 0, i32 5
  %438 = load i64, i64* %437, align 8
  %439 = inttoptr i64 %438 to i32*
  store i32 %435, i32* %439, align 4
  %440 = load i8*, i8** %10, align 8
  %441 = load i8, i8* %440, align 1
  %442 = icmp ne i8 %441, 0
  br i1 %442, label %443, label %449

443:                                              ; preds = %433
  %444 = call i32 @_(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %445 = load %struct.option*, %struct.option** %7, align 8
  %446 = load i32, i32* %9, align 4
  %447 = call i32 @optname(%struct.option* %445, i32 %446)
  %448 = call i32 @error(i32 %444, i32 %447)
  store i32 %448, i32* %5, align 4
  br label %505

449:                                              ; preds = %433
  store i32 0, i32* %5, align 4
  br label %505

450:                                              ; preds = %71
  %451 = load i32, i32* %12, align 4
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %453, label %458

453:                                              ; preds = %450
  %454 = load %struct.option*, %struct.option** %7, align 8
  %455 = getelementptr inbounds %struct.option, %struct.option* %454, i32 0, i32 5
  %456 = load i64, i64* %455, align 8
  %457 = inttoptr i64 %456 to i64*
  store i64 0, i64* %457, align 8
  store i32 0, i32* %5, align 4
  br label %505

458:                                              ; preds = %450
  %459 = load %struct.option*, %struct.option** %7, align 8
  %460 = getelementptr inbounds %struct.option, %struct.option* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 8
  %462 = load i32, i32* @PARSE_OPT_OPTARG, align 4
  %463 = and i32 %461, %462
  %464 = icmp ne i32 %463, 0
  br i1 %464, label %465, label %479

465:                                              ; preds = %458
  %466 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %467 = getelementptr inbounds %struct.parse_opt_ctx_t, %struct.parse_opt_ctx_t* %466, i32 0, i32 0
  %468 = load i64, i64* %467, align 8
  %469 = icmp ne i64 %468, 0
  br i1 %469, label %479, label %470

470:                                              ; preds = %465
  %471 = load %struct.option*, %struct.option** %7, align 8
  %472 = getelementptr inbounds %struct.option, %struct.option* %471, i32 0, i32 3
  %473 = load i32, i32* %472, align 8
  %474 = sext i32 %473 to i64
  %475 = load %struct.option*, %struct.option** %7, align 8
  %476 = getelementptr inbounds %struct.option, %struct.option* %475, i32 0, i32 5
  %477 = load i64, i64* %476, align 8
  %478 = inttoptr i64 %477 to i64*
  store i64 %474, i64* %478, align 8
  store i32 0, i32* %5, align 4
  br label %505

479:                                              ; preds = %465, %458
  %480 = load %struct.parse_opt_ctx_t*, %struct.parse_opt_ctx_t** %6, align 8
  %481 = load %struct.option*, %struct.option** %7, align 8
  %482 = load i32, i32* %9, align 4
  %483 = call i32 @get_arg(%struct.parse_opt_ctx_t* %480, %struct.option* %481, i32 %482, i8** %11)
  %484 = icmp ne i32 %483, 0
  br i1 %484, label %485, label %486

485:                                              ; preds = %479
  store i32 -1, i32* %5, align 4
  br label %505

486:                                              ; preds = %479
  %487 = load i8*, i8** %11, align 8
  %488 = load %struct.option*, %struct.option** %7, align 8
  %489 = getelementptr inbounds %struct.option, %struct.option* %488, i32 0, i32 5
  %490 = load i64, i64* %489, align 8
  %491 = call i32 @git_parse_ulong(i8* %487, i64 %490)
  %492 = icmp ne i32 %491, 0
  br i1 %492, label %499, label %493

493:                                              ; preds = %486
  %494 = call i32 @_(i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.4, i64 0, i64 0))
  %495 = load %struct.option*, %struct.option** %7, align 8
  %496 = load i32, i32* %9, align 4
  %497 = call i32 @optname(%struct.option* %495, i32 %496)
  %498 = call i32 @error(i32 %494, i32 %497)
  store i32 %498, i32* %5, align 4
  br label %505

499:                                              ; preds = %486
  store i32 0, i32* %5, align 4
  br label %505

500:                                              ; preds = %71
  %501 = load %struct.option*, %struct.option** %7, align 8
  %502 = getelementptr inbounds %struct.option, %struct.option* %501, i32 0, i32 1
  %503 = load i32, i32* %502, align 4
  %504 = call i32 (i8*, ...) @BUG(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %503)
  br label %505

505:                                              ; preds = %26, %42, %65, %75, %107, %132, %138, %181, %195, %218, %223, %261, %271, %324, %357, %368, %379, %391, %408, %422, %427, %443, %449, %453, %470, %485, %493, %499, %500
  %506 = load i32, i32* %5, align 4
  ret i32 %506
}

declare dso_local i32 @error(i32, i32) #1

declare dso_local i32 @_(i8*) #1

declare dso_local i32 @optname(%struct.option*, i32) #1

declare dso_local i32 @BUG(i8*, ...) #1

declare dso_local i32 @opt_command_mode_error(%struct.option*, %struct.option*, i32) #1

declare dso_local i32 @get_arg(%struct.parse_opt_ctx_t*, %struct.option*, i32, i8**) #1

declare dso_local i32 @fix_filename(i32, i8**) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @git_parse_ulong(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
