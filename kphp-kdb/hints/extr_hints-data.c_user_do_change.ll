; ModuleID = '/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_do_change.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/hints/extr_hints-data.c_user_do_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i8*, i32*, i8**, i32, i32, %struct.TYPE_13__, i32, i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32, i8*, i32, i32, i64, i32, i32* }

@rating_num = common dso_local global i32 0, align 4
@verbosity = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [63 x i8] c"Incrementing object of type %d, object_id = %d, local_id = %d\0A\00", align 1
@MAX_RATING_NUM = common dso_local global i32 0, align 4
@fading = common dso_local global i64 0, align 8
@ratingT = common dso_local global i64 0, align 8
@RATING_NORM = common dso_local global float 0.000000e+00, align 4
@MAX_RATING = common dso_local global float 0.000000e+00, align 4
@.str.1 = private unnamed_addr constant [80 x i8] c"Changing type of object with type %d, object_id = %d, local_id = %d to type %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"Deleting object of type %d, object_id = %d, local_id = %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [57 x i8] c"Adding object of type %d, object_id = %d, local_id = %d\0A\00", align 1
@MAX_CNT = common dso_local global i32 0, align 4
@max_cnt_type = common dso_local global i32* null, align 8
@friend_changes = common dso_local global i32 0, align 4
@MEM_FLAG = common dso_local global i32 0, align 4
@add_on_increment = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @user_do_change(%struct.TYPE_14__* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.TYPE_14__*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca float*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_15__, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %5, align 4
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %78

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %59

28:                                               ; preds = %25
  %29 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %30 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %33 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %32, i32 0, i32 6
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = add nsw i32 %31, %35
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %55, %28
  %39 = load i32, i32* %7, align 4
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %58

41:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %42

42:                                               ; preds = %51, %41
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* @rating_num, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %54

46:                                               ; preds = %42
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %8, align 4
  %50 = call float* @user_get_object_rating(%struct.TYPE_14__* %47, i32 %48, i32 %49)
  store float 0.000000e+00, float* %50, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %8, align 4
  br label %42

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %7, align 4
  br label %38

58:                                               ; preds = %38
  br label %77

59:                                               ; preds = %25
  %60 = load i32, i32* %5, align 4
  %61 = icmp eq i32 %60, 1
  br i1 %61, label %65, label %62

62:                                               ; preds = %59
  %63 = load i32, i32* %5, align 4
  %64 = icmp eq i32 %63, 2
  br i1 %64, label %65, label %74

65:                                               ; preds = %62, %59
  %66 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %67 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* %5, align 4
  %70 = sub nsw i32 %69, 1
  %71 = call i32 @SET_USER_RATING_STATE(i32 %68, i32 %70)
  %72 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %73 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  br label %76

74:                                               ; preds = %62
  %75 = call i32 @assert(i32 0)
  br label %76

76:                                               ; preds = %74, %65
  br label %77

77:                                               ; preds = %76, %58
  br label %446

78:                                               ; preds = %2
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %187

83:                                               ; preds = %78
  %84 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %85 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %84, i32 0, i32 8
  %86 = load i32, i32* %85, align 8
  %87 = call i64 @GET_USER_RATING_STATE(i32 %86)
  %88 = icmp eq i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  br label %446

90:                                               ; preds = %83
  %91 = load i32, i32* %5, align 4
  %92 = sdiv i32 %91, 256
  store i32 %92, i32* %9, align 4
  %93 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %94 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %10, align 4
  %97 = load i32, i32* %5, align 4
  %98 = srem i32 %97, 256
  store i32 %98, i32* %5, align 4
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %10, align 4
  %102 = call i32 @user_has_object(%struct.TYPE_14__* %99, i32 %100, i32 %101)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* @verbosity, align 4
  %104 = icmp sgt i32 %103, 1
  br i1 %104, label %105, label %111

105:                                              ; preds = %90
  %106 = load i32, i32* @stderr, align 4
  %107 = load i32, i32* %5, align 4
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* %6, align 4
  %110 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %106, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i32 %107, i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %105, %90
  %112 = load i32, i32* %6, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %186

114:                                              ; preds = %111
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* @MAX_RATING_NUM, align 4
  %117 = icmp sge i32 %115, %116
  br i1 %117, label %118, label %173

118:                                              ; preds = %114
  %119 = load i64, i64* @fading, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %142

121:                                              ; preds = %118
  %122 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %123 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 5
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ratingT, align 8
  %129 = sub nsw i64 %127, %128
  %130 = sitofp i64 %129 to float
  %131 = load float, float* @RATING_NORM, align 4
  %132 = fdiv float %130, %131
  %133 = call i32 @expf(float %132)
  %134 = mul nsw i32 %124, %133
  %135 = sitofp i32 %134 to float
  %136 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @MAX_RATING_NUM, align 4
  %140 = sub nsw i32 %138, %139
  %141 = call float* @user_get_object_rating(%struct.TYPE_14__* %136, i32 %137, i32 %140)
  store float %135, float* %141, align 4
  br label %172

142:                                              ; preds = %118
  %143 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %144 = load i32, i32* %6, align 4
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @MAX_RATING_NUM, align 4
  %147 = sub nsw i32 %145, %146
  %148 = call float* @user_get_object_rating(%struct.TYPE_14__* %143, i32 %144, i32 %147)
  store float* %148, float** %11, align 8
  %149 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = sitofp i32 %151 to float
  %153 = load float*, float** %11, align 8
  store float %152, float* %153, align 4
  %154 = load float*, float** %11, align 8
  %155 = load float, float* %154, align 4
  %156 = load float, float* @MAX_RATING, align 4
  %157 = fneg float %156
  %158 = fcmp olt float %155, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %142
  %160 = load float, float* @MAX_RATING, align 4
  %161 = fneg float %160
  %162 = load float*, float** %11, align 8
  store float %161, float* %162, align 4
  br label %163

163:                                              ; preds = %159, %142
  %164 = load float*, float** %11, align 8
  %165 = load float, float* %164, align 4
  %166 = load float, float* @MAX_RATING, align 4
  %167 = fcmp ogt float %165, %166
  br i1 %167, label %168, label %171

168:                                              ; preds = %163
  %169 = load float, float* @MAX_RATING, align 4
  %170 = load float*, float** %11, align 8
  store float %169, float* %170, align 4
  br label %171

171:                                              ; preds = %168, %163
  br label %172

172:                                              ; preds = %171, %121
  br label %185

173:                                              ; preds = %114
  %174 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %175 = load i32, i32* %6, align 4
  %176 = load i32, i32* %9, align 4
  %177 = call float* @user_get_object_rating(%struct.TYPE_14__* %174, i32 %175, i32 %176)
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 4
  %180 = load i32, i32* %179, align 4
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 5
  %183 = load i64, i64* %182, align 8
  %184 = call i32 @rating_incr(float* %177, i32 %180, i64 %183)
  br label %185

185:                                              ; preds = %173, %172
  br label %186

186:                                              ; preds = %185, %111
  br label %446

187:                                              ; preds = %78
  %188 = load i32, i32* %5, align 4
  %189 = icmp sge i32 %188, 256
  br i1 %189, label %190, label %287

190:                                              ; preds = %187
  %191 = load i32, i32* %5, align 4
  %192 = sub nsw i32 %191, 256
  store i32 %192, i32* %5, align 4
  %193 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %194 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %193, i32 0, i32 4
  %195 = load i32, i32* %194, align 4
  store i32 %195, i32* %12, align 4
  %196 = load i32, i32* %5, align 4
  %197 = icmp slt i32 0, %196
  br i1 %197, label %198, label %201

198:                                              ; preds = %190
  %199 = load i32, i32* %5, align 4
  %200 = icmp slt i32 %199, 256
  br label %201

201:                                              ; preds = %198, %190
  %202 = phi i1 [ false, %190 ], [ %200, %198 ]
  %203 = zext i1 %202 to i32
  %204 = call i32 @assert(i32 %203)
  %205 = load i32, i32* %12, align 4
  %206 = icmp slt i32 0, %205
  br i1 %206, label %207, label %210

207:                                              ; preds = %201
  %208 = load i32, i32* %12, align 4
  %209 = icmp slt i32 %208, 256
  br label %210

210:                                              ; preds = %207, %201
  %211 = phi i1 [ false, %201 ], [ %209, %207 ]
  %212 = zext i1 %211 to i32
  %213 = call i32 @assert(i32 %212)
  %214 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %215 = load i32, i32* %5, align 4
  %216 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %217 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %216, i32 0, i32 1
  %218 = load i32, i32* %217, align 4
  %219 = call i32 @user_get_object_local_id(%struct.TYPE_14__* %214, i32 %215, i32 %218)
  store i32 %219, i32* %6, align 4
  %220 = load i32, i32* @verbosity, align 4
  %221 = icmp sgt i32 %220, 1
  br i1 %221, label %222, label %231

222:                                              ; preds = %210
  %223 = load i32, i32* @stderr, align 4
  %224 = load i32, i32* %5, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 4
  %228 = load i32, i32* %6, align 4
  %229 = load i32, i32* %12, align 4
  %230 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %223, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.1, i64 0, i64 0), i32 %224, i32 %227, i32 %228, i32 %229)
  br label %231

231:                                              ; preds = %222, %210
  %232 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %233 = load i32, i32* %6, align 4
  %234 = call i64 @user_has_local_object(%struct.TYPE_14__* %232, i32 %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %286

236:                                              ; preds = %231
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 7
  store i32* null, i32** %237, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 2
  store i8* null, i8** %238, align 8
  %239 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %240 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %239, i32 0, i32 1
  %241 = load i32, i32* %240, align 4
  %242 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  store i32 %241, i32* %242, align 4
  %243 = load i32, i32* %12, align 4
  %244 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %243, i32* %244, align 8
  %245 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 5
  %247 = load i64, i64* %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 5
  store i64 %247, i64* %248, align 8
  %249 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %250 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %249, i32 0, i32 6
  %251 = load i32, i32* %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 6
  store i32 %251, i32* %252, align 8
  %253 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  call void @user_do_change(%struct.TYPE_14__* %253, %struct.TYPE_15__* %13)
  %254 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %255 = load i32, i32* %12, align 4
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = call i32 @user_get_object_local_id(%struct.TYPE_14__* %254, i32 %255, i32 %258)
  store i32 %259, i32* %14, align 4
  %260 = load i32, i32* %14, align 4
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %236
  br label %446

263:                                              ; preds = %236
  store i32 0, i32* %15, align 4
  br label %264

264:                                              ; preds = %278, %263
  %265 = load i32, i32* %15, align 4
  %266 = load i32, i32* @rating_num, align 4
  %267 = icmp slt i32 %265, %266
  br i1 %267, label %268, label %281

268:                                              ; preds = %264
  %269 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %270 = load i32, i32* %6, align 4
  %271 = load i32, i32* %15, align 4
  %272 = call float* @user_get_object_rating(%struct.TYPE_14__* %269, i32 %270, i32 %271)
  %273 = load float, float* %272, align 4
  %274 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %275 = load i32, i32* %14, align 4
  %276 = load i32, i32* %15, align 4
  %277 = call float* @user_get_object_rating(%struct.TYPE_14__* %274, i32 %275, i32 %276)
  store float %273, float* %277, align 4
  br label %278

278:                                              ; preds = %268
  %279 = load i32, i32* %15, align 4
  %280 = add nsw i32 %279, 1
  store i32 %280, i32* %15, align 4
  br label %264

281:                                              ; preds = %264
  %282 = load i32, i32* %5, align 4
  %283 = sub nsw i32 0, %282
  %284 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 0
  store i32 %283, i32* %284, align 8
  %285 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  call void @user_do_change(%struct.TYPE_14__* %285, %struct.TYPE_15__* %13)
  br label %286

286:                                              ; preds = %281, %231
  br label %446

287:                                              ; preds = %187
  %288 = load i32, i32* %5, align 4
  %289 = icmp slt i32 %288, 0
  br i1 %289, label %290, label %293

290:                                              ; preds = %287
  store i32 1, i32* %16, align 4
  %291 = load i32, i32* %5, align 4
  %292 = sub nsw i32 0, %291
  store i32 %292, i32* %5, align 4
  br label %294

293:                                              ; preds = %287
  store i32 0, i32* %16, align 4
  br label %294

294:                                              ; preds = %293, %290
  %295 = load i32, i32* %16, align 4
  %296 = icmp eq i32 %295, 1
  br i1 %296, label %297, label %331

297:                                              ; preds = %294
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 2
  %300 = load i8*, i8** %299, align 8
  %301 = icmp eq i8* %300, null
  %302 = zext i1 %301 to i32
  %303 = call i32 @assert(i32 %302)
  %304 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %305 = load i32, i32* %5, align 4
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  %308 = load i32, i32* %307, align 4
  %309 = call i32 @user_has_object(%struct.TYPE_14__* %304, i32 %305, i32 %308)
  store i32 %309, i32* %6, align 4
  %310 = load i32, i32* @verbosity, align 4
  %311 = icmp sgt i32 %310, 1
  br i1 %311, label %312, label %320

312:                                              ; preds = %297
  %313 = load i32, i32* @stderr, align 4
  %314 = load i32, i32* %5, align 4
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  %317 = load i32, i32* %316, align 4
  %318 = load i32, i32* %6, align 4
  %319 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %313, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0), i32 %314, i32 %317, i32 %318)
  br label %320

320:                                              ; preds = %312, %297
  %321 = load i32, i32* %6, align 4
  %322 = icmp eq i32 %321, 0
  br i1 %322, label %323, label %324

323:                                              ; preds = %320
  br label %446

324:                                              ; preds = %320
  %325 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %326 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %325, i32 0, i32 5
  %327 = load i32, i32* %6, align 4
  %328 = mul nsw i32 %327, 2
  %329 = add nsw i32 %328, 1
  %330 = call i32 @chg_del(i32* %326, i32 %329)
  br label %446

331:                                              ; preds = %294
  %332 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %333 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %332, i32 0, i32 2
  %334 = load i8*, i8** %333, align 8
  %335 = icmp eq i8* %334, null
  %336 = zext i1 %335 to i32
  %337 = call i32 @assert(i32 %336)
  %338 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %339 = load i32, i32* %5, align 4
  %340 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %341 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %340, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = call i32 @user_get_object_local_id(%struct.TYPE_14__* %338, i32 %339, i32 %342)
  store i32 %343, i32* %6, align 4
  %344 = load i32, i32* @verbosity, align 4
  %345 = icmp sgt i32 %344, 1
  br i1 %345, label %346, label %354

346:                                              ; preds = %331
  %347 = load i32, i32* @stderr, align 4
  %348 = load i32, i32* %5, align 4
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 1
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %6, align 4
  %353 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %347, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %348, i32 %351, i32 %352)
  br label %354

354:                                              ; preds = %346, %331
  %355 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %356 = load i32, i32* %6, align 4
  %357 = call i64 @user_has_local_object(%struct.TYPE_14__* %355, i32 %356)
  %358 = icmp ne i64 %357, 0
  br i1 %358, label %359, label %360

359:                                              ; preds = %354
  br label %446

360:                                              ; preds = %354
  %361 = load i32, i32* %6, align 4
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %442

363:                                              ; preds = %360
  %364 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %365 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %364, i32 0, i32 0
  %366 = load i32, i32* %365, align 8
  %367 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %368 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %367, i32 0, i32 6
  %369 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %368, i32 0, i32 0
  %370 = load i32, i32* %369, align 8
  %371 = add nsw i32 %366, %370
  %372 = add nsw i32 %371, 1
  %373 = load i32, i32* @MAX_CNT, align 4
  %374 = load i32*, i32** @max_cnt_type, align 8
  %375 = load i32, i32* %5, align 4
  %376 = sext i32 %375 to i64
  %377 = getelementptr inbounds i32, i32* %374, i64 %376
  %378 = load i32, i32* %377, align 4
  %379 = load i32, i32* @MAX_CNT, align 4
  %380 = icmp slt i32 %378, %379
  %381 = zext i1 %380 to i32
  %382 = load i32, i32* @MAX_CNT, align 4
  %383 = mul nsw i32 %381, %382
  %384 = sdiv i32 %383, 10
  %385 = sub nsw i32 %373, %384
  %386 = icmp slt i32 %372, %385
  br i1 %386, label %387, label %429

387:                                              ; preds = %363
  %388 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %389 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %388, i32 0, i32 6
  %390 = load i32, i32* %5, align 4
  %391 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %392 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %391, i32 0, i32 1
  %393 = load i32, i32* %392, align 4
  %394 = call i32 @TYPE_ID(i32 %390, i32 %393)
  %395 = call i32 @ltbl_add(%struct.TYPE_13__* %389, i32 %394)
  %396 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %397 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %396, i32 0, i32 0
  %398 = load i32, i32* %397, align 8
  %399 = add nsw i32 %395, %398
  store i32 %399, i32* %6, align 4
  %400 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %401 = call i32 @user_upd_object_size(%struct.TYPE_14__* %400)
  %402 = load i64, i64* @fading, align 8
  %403 = icmp ne i64 %402, 0
  br i1 %403, label %404, label %422

404:                                              ; preds = %387
  store i32 0, i32* %17, align 4
  br label %405

405:                                              ; preds = %418, %404
  %406 = load i32, i32* %17, align 4
  %407 = load i32, i32* @rating_num, align 4
  %408 = icmp slt i32 %406, %407
  br i1 %408, label %409, label %421

409:                                              ; preds = %405
  %410 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %411 = load i32, i32* %6, align 4
  %412 = load i32, i32* %17, align 4
  %413 = call float* @user_get_object_rating(%struct.TYPE_14__* %410, i32 %411, i32 %412)
  %414 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %415 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %414, i32 0, i32 5
  %416 = load i64, i64* %415, align 8
  %417 = call i32 @rating_incr(float* %413, i32 1, i64 %416)
  br label %418

418:                                              ; preds = %409
  %419 = load i32, i32* %17, align 4
  %420 = add nsw i32 %419, 1
  store i32 %420, i32* %17, align 4
  br label %405

421:                                              ; preds = %405
  br label %422

422:                                              ; preds = %421, %387
  %423 = load i32, i32* %5, align 4
  %424 = icmp eq i32 %423, 10
  br i1 %424, label %425, label %428

425:                                              ; preds = %422
  %426 = load i32, i32* @friend_changes, align 4
  %427 = add nsw i32 %426, 1
  store i32 %427, i32* @friend_changes, align 4
  br label %428

428:                                              ; preds = %425, %422
  br label %430

429:                                              ; preds = %363
  br label %446

430:                                              ; preds = %428
  %431 = load i32, i32* @verbosity, align 4
  %432 = icmp sgt i32 %431, 1
  br i1 %432, label %433, label %441

433:                                              ; preds = %430
  %434 = load i32, i32* @stderr, align 4
  %435 = load i32, i32* %5, align 4
  %436 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %437 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %436, i32 0, i32 1
  %438 = load i32, i32* %437, align 4
  %439 = load i32, i32* %6, align 4
  %440 = call i32 (i32, i8*, i32, i32, i32, ...) @fprintf(i32 %434, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.3, i64 0, i64 0), i32 %435, i32 %438, i32 %439)
  br label %441

441:                                              ; preds = %433, %430
  br label %442

442:                                              ; preds = %441, %360
  br label %443

443:                                              ; preds = %442
  %444 = load %struct.TYPE_14__*, %struct.TYPE_14__** %3, align 8
  %445 = call i32 @user_upd_object_size(%struct.TYPE_14__* %444)
  br label %446

446:                                              ; preds = %77, %89, %186, %262, %286, %323, %359, %429, %443, %324
  ret void
}

declare dso_local float* @user_get_object_rating(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @SET_USER_RATING_STATE(i32, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @GET_USER_RATING_STATE(i32) #1

declare dso_local i32 @user_has_object(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32, i32, ...) #1

declare dso_local i32 @expf(float) #1

declare dso_local i32 @rating_incr(float*, i32, i64) #1

declare dso_local i32 @user_get_object_local_id(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i64 @user_has_local_object(%struct.TYPE_14__*, i32) #1

declare dso_local i32 @chg_del(i32*, i32) #1

declare dso_local i32 @ltbl_add(%struct.TYPE_13__*, i32) #1

declare dso_local i32 @TYPE_ID(i32, i32) #1

declare dso_local i32 @user_upd_object_size(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
