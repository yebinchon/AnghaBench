; ModuleID = '/home/carl/AnghaBench/libgit2/src/xdiff/extr_xemit.c_xdl_emit_diff.c'
source_filename = "/home/carl/AnghaBench/libgit2/src/xdiff/extr_xemit.c_xdl_emit_diff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_19__, %struct.TYPE_19__ }
%struct.TYPE_19__ = type { i64 }
%struct.TYPE_18__ = type { i64, i64, i32, i32, %struct.TYPE_18__* }
%struct.TYPE_17__ = type { i64, i32 }
%struct.func_line = type { i32, i32, i32 }

@XDL_EMIT_FUNCCONTEXT = common dso_local global i32 0, align 4
@XDL_EMIT_FUNCNAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"+\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xdl_emit_diff(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32* %2, %struct.TYPE_17__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_16__*, align 8
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_17__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_18__*, align 8
  %16 = alloca %struct.TYPE_18__*, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.func_line, align 4
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %6, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %7, align 8
  store i32* %2, i32** %8, align 8
  store %struct.TYPE_17__* %3, %struct.TYPE_17__** %9, align 8
  store i64 -1, i64* %17, align 8
  %24 = bitcast %struct.func_line* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %24, i8 0, i64 12, i1 false)
  %25 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  store %struct.TYPE_18__* %25, %struct.TYPE_18__** %15, align 8
  br label %26

26:                                               ; preds = %488, %4
  %27 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %28 = icmp ne %struct.TYPE_18__* %27, null
  br i1 %28, label %29, label %492

29:                                               ; preds = %26
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %31 = call %struct.TYPE_18__* @xdl_get_hunk(%struct.TYPE_18__** %15, %struct.TYPE_17__* %30)
  store %struct.TYPE_18__* %31, %struct.TYPE_18__** %16, align 8
  %32 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %33 = icmp ne %struct.TYPE_18__* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  br label %492

35:                                               ; preds = %29
  %36 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %40 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %38, %41
  %43 = call i64 @XDL_MAX(i64 %42, i32 0)
  store i64 %43, i64* %10, align 8
  %44 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  %51 = call i64 @XDL_MAX(i64 %50, i32 0)
  store i64 %51, i64* %11, align 8
  %52 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %53 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @XDL_EMIT_FUNCCONTEXT, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %141

58:                                               ; preds = %35
  %59 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %60 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %20, align 8
  %62 = load i64, i64* %20, align 8
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sge i64 %62, %66
  br i1 %67, label %68, label %96

68:                                               ; preds = %58
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  store i64 %71, i64* %21, align 8
  br label %72

72:                                               ; preds = %87, %68
  %73 = load i64, i64* %21, align 8
  %74 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = icmp slt i64 %73, %77
  br i1 %78, label %79, label %90

79:                                               ; preds = %72
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %83 = load i64, i64* %21, align 8
  %84 = call i64 @is_func_rec(%struct.TYPE_19__* %81, %struct.TYPE_17__* %82, i64 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %142

87:                                               ; preds = %79
  %88 = load i64, i64* %21, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %21, align 8
  br label %72

90:                                               ; preds = %72
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %92 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = sub nsw i64 %94, 1
  store i64 %95, i64* %20, align 8
  br label %96

96:                                               ; preds = %90, %58
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %98 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %99 = load i64, i64* %20, align 8
  %100 = call i64 @get_func_line(%struct.TYPE_16__* %97, %struct.TYPE_17__* %98, %struct.func_line* null, i64 %99, i64 -1)
  store i64 %100, i64* %19, align 8
  br label %101

101:                                              ; preds = %122, %96
  %102 = load i64, i64* %19, align 8
  %103 = icmp sgt i64 %102, 0
  br i1 %103, label %104, label %120

104:                                              ; preds = %101
  %105 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %105, i32 0, i32 1
  %107 = load i64, i64* %19, align 8
  %108 = sub nsw i64 %107, 1
  %109 = call i64 @is_empty_rec(%struct.TYPE_19__* %106, i64 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %120, label %111

111:                                              ; preds = %104
  %112 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %115 = load i64, i64* %19, align 8
  %116 = sub nsw i64 %115, 1
  %117 = call i64 @is_func_rec(%struct.TYPE_19__* %113, %struct.TYPE_17__* %114, i64 %116)
  %118 = icmp ne i64 %117, 0
  %119 = xor i1 %118, true
  br label %120

120:                                              ; preds = %111, %104, %101
  %121 = phi i1 [ false, %104 ], [ false, %101 ], [ %119, %111 ]
  br i1 %121, label %122, label %125

122:                                              ; preds = %120
  %123 = load i64, i64* %19, align 8
  %124 = add nsw i64 %123, -1
  store i64 %124, i64* %19, align 8
  br label %101

125:                                              ; preds = %120
  %126 = load i64, i64* %19, align 8
  %127 = icmp slt i64 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  store i64 0, i64* %19, align 8
  br label %129

129:                                              ; preds = %128, %125
  %130 = load i64, i64* %19, align 8
  %131 = load i64, i64* %10, align 8
  %132 = icmp slt i64 %130, %131
  br i1 %132, label %133, label %140

133:                                              ; preds = %129
  %134 = load i64, i64* %10, align 8
  %135 = load i64, i64* %19, align 8
  %136 = sub nsw i64 %134, %135
  %137 = load i64, i64* %11, align 8
  %138 = sub nsw i64 %137, %136
  store i64 %138, i64* %11, align 8
  %139 = load i64, i64* %19, align 8
  store i64 %139, i64* %10, align 8
  br label %140

140:                                              ; preds = %133, %129
  br label %141

141:                                              ; preds = %140, %35
  br label %142

142:                                              ; preds = %286, %141, %86
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  store i64 %145, i64* %14, align 8
  %146 = load i64, i64* %14, align 8
  %147 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %148 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 2
  %156 = load i32, i32* %155, align 8
  %157 = sext i32 %156 to i64
  %158 = add nsw i64 %153, %157
  %159 = sub nsw i64 %150, %158
  %160 = trunc i64 %159 to i32
  %161 = call i64 @XDL_MIN(i64 %146, i32 %160)
  store i64 %161, i64* %14, align 8
  %162 = load i64, i64* %14, align 8
  %163 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %168 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 3
  %172 = load i32, i32* %171, align 4
  %173 = sext i32 %172 to i64
  %174 = add nsw i64 %169, %173
  %175 = sub nsw i64 %166, %174
  %176 = trunc i64 %175 to i32
  %177 = call i64 @XDL_MIN(i64 %162, i32 %176)
  store i64 %177, i64* %14, align 8
  %178 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 0
  %180 = load i64, i64* %179, align 8
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = sext i32 %183 to i64
  %185 = add nsw i64 %180, %184
  %186 = load i64, i64* %14, align 8
  %187 = add nsw i64 %185, %186
  store i64 %187, i64* %12, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = sext i32 %193 to i64
  %195 = add nsw i64 %190, %194
  %196 = load i64, i64* %14, align 8
  %197 = add nsw i64 %195, %196
  store i64 %197, i64* %13, align 8
  %198 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @XDL_EMIT_FUNCCONTEXT, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %292

204:                                              ; preds = %142
  %205 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %206 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %207 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %208 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %207, i32 0, i32 0
  %209 = load i64, i64* %208, align 8
  %210 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %211 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %210, i32 0, i32 2
  %212 = load i32, i32* %211, align 8
  %213 = sext i32 %212 to i64
  %214 = add nsw i64 %209, %213
  %215 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %216 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = call i64 @get_func_line(%struct.TYPE_16__* %205, %struct.TYPE_17__* %206, %struct.func_line* null, i64 %214, i64 %218)
  store i64 %219, i64* %22, align 8
  br label %220

220:                                              ; preds = %232, %204
  %221 = load i64, i64* %22, align 8
  %222 = icmp sgt i64 %221, 0
  br i1 %222, label %223, label %230

223:                                              ; preds = %220
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 1
  %226 = load i64, i64* %22, align 8
  %227 = sub nsw i64 %226, 1
  %228 = call i64 @is_empty_rec(%struct.TYPE_19__* %225, i64 %227)
  %229 = icmp ne i64 %228, 0
  br label %230

230:                                              ; preds = %223, %220
  %231 = phi i1 [ false, %220 ], [ %229, %223 ]
  br i1 %231, label %232, label %235

232:                                              ; preds = %230
  %233 = load i64, i64* %22, align 8
  %234 = add nsw i64 %233, -1
  store i64 %234, i64* %22, align 8
  br label %220

235:                                              ; preds = %230
  %236 = load i64, i64* %22, align 8
  %237 = icmp slt i64 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %235
  %239 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %240 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %239, i32 0, i32 1
  %241 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %240, i32 0, i32 0
  %242 = load i64, i64* %241, align 8
  store i64 %242, i64* %22, align 8
  br label %243

243:                                              ; preds = %238, %235
  %244 = load i64, i64* %22, align 8
  %245 = load i64, i64* %12, align 8
  %246 = icmp sgt i64 %244, %245
  br i1 %246, label %247, label %254

247:                                              ; preds = %243
  %248 = load i64, i64* %22, align 8
  %249 = load i64, i64* %12, align 8
  %250 = sub nsw i64 %248, %249
  %251 = load i64, i64* %13, align 8
  %252 = add nsw i64 %251, %250
  store i64 %252, i64* %13, align 8
  %253 = load i64, i64* %22, align 8
  store i64 %253, i64* %12, align 8
  br label %254

254:                                              ; preds = %247, %243
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i32 0, i32 4
  %257 = load %struct.TYPE_18__*, %struct.TYPE_18__** %256, align 8
  %258 = icmp ne %struct.TYPE_18__* %257, null
  br i1 %258, label %259, label %291

259:                                              ; preds = %254
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 4
  %262 = load %struct.TYPE_18__*, %struct.TYPE_18__** %261, align 8
  %263 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %262, i32 0, i32 0
  %264 = load i64, i64* %263, align 8
  %265 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 0
  %268 = load i64, i64* %267, align 8
  %269 = sub nsw i64 %268, 1
  %270 = trunc i64 %269 to i32
  %271 = call i64 @XDL_MIN(i64 %264, i32 %270)
  store i64 %271, i64* %23, align 8
  %272 = load i64, i64* %23, align 8
  %273 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %274 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %273, i32 0, i32 0
  %275 = load i64, i64* %274, align 8
  %276 = sub nsw i64 %272, %275
  %277 = load i64, i64* %12, align 8
  %278 = icmp sle i64 %276, %277
  br i1 %278, label %286, label %279

279:                                              ; preds = %259
  %280 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %281 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %282 = load i64, i64* %23, align 8
  %283 = load i64, i64* %12, align 8
  %284 = call i64 @get_func_line(%struct.TYPE_16__* %280, %struct.TYPE_17__* %281, %struct.func_line* null, i64 %282, i64 %283)
  %285 = icmp slt i64 %284, 0
  br i1 %285, label %286, label %290

286:                                              ; preds = %279, %259
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %288 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %287, i32 0, i32 4
  %289 = load %struct.TYPE_18__*, %struct.TYPE_18__** %288, align 8
  store %struct.TYPE_18__* %289, %struct.TYPE_18__** %16, align 8
  br label %142

290:                                              ; preds = %279
  br label %291

291:                                              ; preds = %290, %254
  br label %292

292:                                              ; preds = %291, %142
  %293 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %294 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %293, i32 0, i32 1
  %295 = load i32, i32* %294, align 8
  %296 = load i32, i32* @XDL_EMIT_FUNCNAMES, align 4
  %297 = and i32 %295, %296
  %298 = icmp ne i32 %297, 0
  br i1 %298, label %299, label %308

299:                                              ; preds = %292
  %300 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %301 = load %struct.TYPE_17__*, %struct.TYPE_17__** %9, align 8
  %302 = load i64, i64* %10, align 8
  %303 = sub nsw i64 %302, 1
  %304 = load i64, i64* %17, align 8
  %305 = call i64 @get_func_line(%struct.TYPE_16__* %300, %struct.TYPE_17__* %301, %struct.func_line* %18, i64 %303, i64 %304)
  %306 = load i64, i64* %10, align 8
  %307 = sub nsw i64 %306, 1
  store i64 %307, i64* %17, align 8
  br label %308

308:                                              ; preds = %299, %292
  %309 = load i64, i64* %10, align 8
  %310 = add nsw i64 %309, 1
  %311 = load i64, i64* %12, align 8
  %312 = load i64, i64* %10, align 8
  %313 = sub nsw i64 %311, %312
  %314 = load i64, i64* %11, align 8
  %315 = add nsw i64 %314, 1
  %316 = load i64, i64* %13, align 8
  %317 = load i64, i64* %11, align 8
  %318 = sub nsw i64 %316, %317
  %319 = getelementptr inbounds %struct.func_line, %struct.func_line* %18, i32 0, i32 1
  %320 = load i32, i32* %319, align 4
  %321 = getelementptr inbounds %struct.func_line, %struct.func_line* %18, i32 0, i32 0
  %322 = load i32, i32* %321, align 4
  %323 = load i32*, i32** %8, align 8
  %324 = call i64 @xdl_emit_hunk_hdr(i64 %310, i64 %313, i64 %315, i64 %318, i32 %320, i32 %322, i32* %323)
  %325 = icmp slt i64 %324, 0
  br i1 %325, label %326, label %327

326:                                              ; preds = %308
  store i32 -1, i32* %5, align 4
  br label %493

327:                                              ; preds = %308
  br label %328

328:                                              ; preds = %343, %327
  %329 = load i64, i64* %11, align 8
  %330 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %331 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp slt i64 %329, %332
  br i1 %333, label %334, label %346

334:                                              ; preds = %328
  %335 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %336 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %335, i32 0, i32 0
  %337 = load i64, i64* %11, align 8
  %338 = load i32*, i32** %8, align 8
  %339 = call i64 @xdl_emit_record(%struct.TYPE_19__* %336, i64 %337, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %338)
  %340 = icmp slt i64 %339, 0
  br i1 %340, label %341, label %342

341:                                              ; preds = %334
  store i32 -1, i32* %5, align 4
  br label %493

342:                                              ; preds = %334
  br label %343

343:                                              ; preds = %342
  %344 = load i64, i64* %11, align 8
  %345 = add nsw i64 %344, 1
  store i64 %345, i64* %11, align 8
  br label %328

346:                                              ; preds = %328
  %347 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %348 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %347, i32 0, i32 0
  %349 = load i64, i64* %348, align 8
  store i64 %349, i64* %10, align 8
  %350 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %351 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %350, i32 0, i32 1
  %352 = load i64, i64* %351, align 8
  store i64 %352, i64* %11, align 8
  br label %353

353:                                              ; preds = %458, %346
  br label %354

354:                                              ; preds = %377, %353
  %355 = load i64, i64* %10, align 8
  %356 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %357 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %356, i32 0, i32 0
  %358 = load i64, i64* %357, align 8
  %359 = icmp slt i64 %355, %358
  br i1 %359, label %360, label %366

360:                                              ; preds = %354
  %361 = load i64, i64* %11, align 8
  %362 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %363 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %362, i32 0, i32 1
  %364 = load i64, i64* %363, align 8
  %365 = icmp slt i64 %361, %364
  br label %366

366:                                              ; preds = %360, %354
  %367 = phi i1 [ false, %354 ], [ %365, %360 ]
  br i1 %367, label %368, label %382

368:                                              ; preds = %366
  %369 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %370 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %369, i32 0, i32 0
  %371 = load i64, i64* %11, align 8
  %372 = load i32*, i32** %8, align 8
  %373 = call i64 @xdl_emit_record(%struct.TYPE_19__* %370, i64 %371, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %372)
  %374 = icmp slt i64 %373, 0
  br i1 %374, label %375, label %376

375:                                              ; preds = %368
  store i32 -1, i32* %5, align 4
  br label %493

376:                                              ; preds = %368
  br label %377

377:                                              ; preds = %376
  %378 = load i64, i64* %10, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %10, align 8
  %380 = load i64, i64* %11, align 8
  %381 = add nsw i64 %380, 1
  store i64 %381, i64* %11, align 8
  br label %354

382:                                              ; preds = %366
  %383 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %384 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %383, i32 0, i32 0
  %385 = load i64, i64* %384, align 8
  store i64 %385, i64* %10, align 8
  br label %386

386:                                              ; preds = %406, %382
  %387 = load i64, i64* %10, align 8
  %388 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %389 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %388, i32 0, i32 0
  %390 = load i64, i64* %389, align 8
  %391 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %392 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %391, i32 0, i32 2
  %393 = load i32, i32* %392, align 8
  %394 = sext i32 %393 to i64
  %395 = add nsw i64 %390, %394
  %396 = icmp slt i64 %387, %395
  br i1 %396, label %397, label %409

397:                                              ; preds = %386
  %398 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %399 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %398, i32 0, i32 1
  %400 = load i64, i64* %10, align 8
  %401 = load i32*, i32** %8, align 8
  %402 = call i64 @xdl_emit_record(%struct.TYPE_19__* %399, i64 %400, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32* %401)
  %403 = icmp slt i64 %402, 0
  br i1 %403, label %404, label %405

404:                                              ; preds = %397
  store i32 -1, i32* %5, align 4
  br label %493

405:                                              ; preds = %397
  br label %406

406:                                              ; preds = %405
  %407 = load i64, i64* %10, align 8
  %408 = add nsw i64 %407, 1
  store i64 %408, i64* %10, align 8
  br label %386

409:                                              ; preds = %386
  %410 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %411 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %410, i32 0, i32 1
  %412 = load i64, i64* %411, align 8
  store i64 %412, i64* %11, align 8
  br label %413

413:                                              ; preds = %433, %409
  %414 = load i64, i64* %11, align 8
  %415 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %416 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %415, i32 0, i32 1
  %417 = load i64, i64* %416, align 8
  %418 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %419 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %418, i32 0, i32 3
  %420 = load i32, i32* %419, align 4
  %421 = sext i32 %420 to i64
  %422 = add nsw i64 %417, %421
  %423 = icmp slt i64 %414, %422
  br i1 %423, label %424, label %436

424:                                              ; preds = %413
  %425 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %426 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %425, i32 0, i32 0
  %427 = load i64, i64* %11, align 8
  %428 = load i32*, i32** %8, align 8
  %429 = call i64 @xdl_emit_record(%struct.TYPE_19__* %426, i64 %427, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32* %428)
  %430 = icmp slt i64 %429, 0
  br i1 %430, label %431, label %432

431:                                              ; preds = %424
  store i32 -1, i32* %5, align 4
  br label %493

432:                                              ; preds = %424
  br label %433

433:                                              ; preds = %432
  %434 = load i64, i64* %11, align 8
  %435 = add nsw i64 %434, 1
  store i64 %435, i64* %11, align 8
  br label %413

436:                                              ; preds = %413
  %437 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %438 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %439 = icmp eq %struct.TYPE_18__* %437, %438
  br i1 %439, label %440, label %441

440:                                              ; preds = %436
  br label %462

441:                                              ; preds = %436
  %442 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %443 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %442, i32 0, i32 0
  %444 = load i64, i64* %443, align 8
  %445 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %446 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %445, i32 0, i32 2
  %447 = load i32, i32* %446, align 8
  %448 = sext i32 %447 to i64
  %449 = add nsw i64 %444, %448
  store i64 %449, i64* %10, align 8
  %450 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %451 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %450, i32 0, i32 1
  %452 = load i64, i64* %451, align 8
  %453 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %454 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %453, i32 0, i32 3
  %455 = load i32, i32* %454, align 4
  %456 = sext i32 %455 to i64
  %457 = add nsw i64 %452, %456
  store i64 %457, i64* %11, align 8
  br label %458

458:                                              ; preds = %441
  %459 = load %struct.TYPE_18__*, %struct.TYPE_18__** %15, align 8
  %460 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %459, i32 0, i32 4
  %461 = load %struct.TYPE_18__*, %struct.TYPE_18__** %460, align 8
  store %struct.TYPE_18__* %461, %struct.TYPE_18__** %15, align 8
  br label %353

462:                                              ; preds = %440
  %463 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %464 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %463, i32 0, i32 1
  %465 = load i64, i64* %464, align 8
  %466 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %467 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %466, i32 0, i32 3
  %468 = load i32, i32* %467, align 4
  %469 = sext i32 %468 to i64
  %470 = add nsw i64 %465, %469
  store i64 %470, i64* %11, align 8
  br label %471

471:                                              ; preds = %484, %462
  %472 = load i64, i64* %11, align 8
  %473 = load i64, i64* %13, align 8
  %474 = icmp slt i64 %472, %473
  br i1 %474, label %475, label %487

475:                                              ; preds = %471
  %476 = load %struct.TYPE_16__*, %struct.TYPE_16__** %6, align 8
  %477 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %476, i32 0, i32 0
  %478 = load i64, i64* %11, align 8
  %479 = load i32*, i32** %8, align 8
  %480 = call i64 @xdl_emit_record(%struct.TYPE_19__* %477, i64 %478, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i32* %479)
  %481 = icmp slt i64 %480, 0
  br i1 %481, label %482, label %483

482:                                              ; preds = %475
  store i32 -1, i32* %5, align 4
  br label %493

483:                                              ; preds = %475
  br label %484

484:                                              ; preds = %483
  %485 = load i64, i64* %11, align 8
  %486 = add nsw i64 %485, 1
  store i64 %486, i64* %11, align 8
  br label %471

487:                                              ; preds = %471
  br label %488

488:                                              ; preds = %487
  %489 = load %struct.TYPE_18__*, %struct.TYPE_18__** %16, align 8
  %490 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %489, i32 0, i32 4
  %491 = load %struct.TYPE_18__*, %struct.TYPE_18__** %490, align 8
  store %struct.TYPE_18__* %491, %struct.TYPE_18__** %15, align 8
  br label %26

492:                                              ; preds = %34, %26
  store i32 0, i32* %5, align 4
  br label %493

493:                                              ; preds = %492, %482, %431, %404, %375, %341, %326
  %494 = load i32, i32* %5, align 4
  ret i32 %494
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_18__* @xdl_get_hunk(%struct.TYPE_18__**, %struct.TYPE_17__*) #2

declare dso_local i64 @XDL_MAX(i64, i32) #2

declare dso_local i64 @is_func_rec(%struct.TYPE_19__*, %struct.TYPE_17__*, i64) #2

declare dso_local i64 @get_func_line(%struct.TYPE_16__*, %struct.TYPE_17__*, %struct.func_line*, i64, i64) #2

declare dso_local i64 @is_empty_rec(%struct.TYPE_19__*, i64) #2

declare dso_local i64 @XDL_MIN(i64, i32) #2

declare dso_local i64 @xdl_emit_hunk_hdr(i64, i64, i64, i64, i32, i32, i32*) #2

declare dso_local i64 @xdl_emit_record(%struct.TYPE_19__*, i64, i8*, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
