; ModuleID = '/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_histogram_update.c'
source_filename = "/home/carl/AnghaBench/libevent/sample/extr_watch-timing.c_histogram_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.histogram = type { double, double, i32, i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { double, i32 }

@INFINITY = common dso_local global double 0.000000e+00, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.histogram*, double)* @histogram_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @histogram_update(%struct.histogram* %0, double %1) #0 {
  %3 = alloca %struct.histogram*, align 8
  %4 = alloca double, align 8
  %5 = alloca i32, align 4
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  store %struct.histogram* %0, %struct.histogram** %3, align 8
  store double %1, double* %4, align 8
  %8 = load double, double* @INFINITY, align 8
  store double %8, double* %7, align 8
  %9 = load %struct.histogram*, %struct.histogram** %3, align 8
  %10 = getelementptr inbounds %struct.histogram, %struct.histogram* %9, i32 0, i32 6
  %11 = load i32, i32* %10, align 8
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 8
  %13 = load double, double* %4, align 8
  %14 = load %struct.histogram*, %struct.histogram** %3, align 8
  %15 = getelementptr inbounds %struct.histogram, %struct.histogram* %14, i32 0, i32 0
  %16 = load double, double* %15, align 8
  %17 = fcmp olt double %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load double, double* %4, align 8
  %20 = load %struct.histogram*, %struct.histogram** %3, align 8
  %21 = getelementptr inbounds %struct.histogram, %struct.histogram* %20, i32 0, i32 0
  store double %19, double* %21, align 8
  br label %22

22:                                               ; preds = %18, %2
  %23 = load double, double* %4, align 8
  %24 = load %struct.histogram*, %struct.histogram** %3, align 8
  %25 = getelementptr inbounds %struct.histogram, %struct.histogram* %24, i32 0, i32 1
  %26 = load double, double* %25, align 8
  %27 = fcmp ogt double %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22
  %29 = load double, double* %4, align 8
  %30 = load %struct.histogram*, %struct.histogram** %3, align 8
  %31 = getelementptr inbounds %struct.histogram, %struct.histogram* %30, i32 0, i32 1
  store double %29, double* %31, align 8
  br label %32

32:                                               ; preds = %28, %22
  br label %33

33:                                               ; preds = %32, %52, %127
  %34 = load %struct.histogram*, %struct.histogram** %3, align 8
  %35 = getelementptr inbounds %struct.histogram, %struct.histogram* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 8
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %105

38:                                               ; preds = %33
  %39 = load %struct.histogram*, %struct.histogram** %3, align 8
  %40 = getelementptr inbounds %struct.histogram, %struct.histogram* %39, i32 0, i32 5
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load %struct.histogram*, %struct.histogram** %3, align 8
  %43 = getelementptr inbounds %struct.histogram, %struct.histogram* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load double, double* %48, align 8
  %50 = load double, double* %4, align 8
  %51 = fcmp ogt double %49, %50
  br i1 %51, label %52, label %76

52:                                               ; preds = %38
  %53 = load %struct.histogram*, %struct.histogram** %3, align 8
  %54 = getelementptr inbounds %struct.histogram, %struct.histogram* %53, i32 0, i32 5
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load %struct.histogram*, %struct.histogram** %3, align 8
  %57 = getelementptr inbounds %struct.histogram, %struct.histogram* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %59
  %61 = load %struct.histogram*, %struct.histogram** %3, align 8
  %62 = getelementptr inbounds %struct.histogram, %struct.histogram* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load %struct.histogram*, %struct.histogram** %3, align 8
  %65 = getelementptr inbounds %struct.histogram, %struct.histogram* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %68
  %70 = bitcast %struct.TYPE_2__* %60 to i8*
  %71 = bitcast %struct.TYPE_2__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  %72 = load %struct.histogram*, %struct.histogram** %3, align 8
  %73 = getelementptr inbounds %struct.histogram, %struct.histogram* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  br label %33

76:                                               ; preds = %38
  %77 = load %struct.histogram*, %struct.histogram** %3, align 8
  %78 = getelementptr inbounds %struct.histogram, %struct.histogram* %77, i32 0, i32 5
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.histogram*, %struct.histogram** %3, align 8
  %81 = getelementptr inbounds %struct.histogram, %struct.histogram* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = sub nsw i32 %82, 1
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 0
  %87 = load double, double* %86, align 8
  %88 = load double, double* %4, align 8
  %89 = call i64 @eq(double %87, double %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %76
  %92 = load %struct.histogram*, %struct.histogram** %3, align 8
  %93 = getelementptr inbounds %struct.histogram, %struct.histogram* %92, i32 0, i32 5
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** %93, align 8
  %95 = load %struct.histogram*, %struct.histogram** %3, align 8
  %96 = getelementptr inbounds %struct.histogram, %struct.histogram* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %101, align 8
  br label %357

104:                                              ; preds = %76
  br label %105

105:                                              ; preds = %104, %33
  %106 = load %struct.histogram*, %struct.histogram** %3, align 8
  %107 = getelementptr inbounds %struct.histogram, %struct.histogram* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.histogram*, %struct.histogram** %3, align 8
  %110 = getelementptr inbounds %struct.histogram, %struct.histogram* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %108, %111
  br i1 %112, label %113, label %180

113:                                              ; preds = %105
  %114 = load %struct.histogram*, %struct.histogram** %3, align 8
  %115 = getelementptr inbounds %struct.histogram, %struct.histogram* %114, i32 0, i32 5
  %116 = load %struct.TYPE_2__*, %struct.TYPE_2__** %115, align 8
  %117 = load %struct.histogram*, %struct.histogram** %3, align 8
  %118 = getelementptr inbounds %struct.histogram, %struct.histogram* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 0
  %124 = load double, double* %123, align 8
  %125 = load double, double* %4, align 8
  %126 = fcmp olt double %124, %125
  br i1 %126, label %127, label %151

127:                                              ; preds = %113
  %128 = load %struct.histogram*, %struct.histogram** %3, align 8
  %129 = getelementptr inbounds %struct.histogram, %struct.histogram* %128, i32 0, i32 5
  %130 = load %struct.TYPE_2__*, %struct.TYPE_2__** %129, align 8
  %131 = load %struct.histogram*, %struct.histogram** %3, align 8
  %132 = getelementptr inbounds %struct.histogram, %struct.histogram* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 8
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i64 %134
  %136 = load %struct.histogram*, %struct.histogram** %3, align 8
  %137 = getelementptr inbounds %struct.histogram, %struct.histogram* %136, i32 0, i32 5
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = load %struct.histogram*, %struct.histogram** %3, align 8
  %140 = getelementptr inbounds %struct.histogram, %struct.histogram* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = add nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i64 %143
  %145 = bitcast %struct.TYPE_2__* %135 to i8*
  %146 = bitcast %struct.TYPE_2__* %144 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %145, i8* align 8 %146, i64 16, i1 false)
  %147 = load %struct.histogram*, %struct.histogram** %3, align 8
  %148 = getelementptr inbounds %struct.histogram, %struct.histogram* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = add nsw i32 %149, 1
  store i32 %150, i32* %148, align 8
  br label %33

151:                                              ; preds = %113
  %152 = load %struct.histogram*, %struct.histogram** %3, align 8
  %153 = getelementptr inbounds %struct.histogram, %struct.histogram* %152, i32 0, i32 5
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %153, align 8
  %155 = load %struct.histogram*, %struct.histogram** %3, align 8
  %156 = getelementptr inbounds %struct.histogram, %struct.histogram* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = add nsw i32 %157, 1
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load double, double* %161, align 8
  %163 = load double, double* %4, align 8
  %164 = call i64 @eq(double %162, double %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %179

166:                                              ; preds = %151
  %167 = load %struct.histogram*, %struct.histogram** %3, align 8
  %168 = getelementptr inbounds %struct.histogram, %struct.histogram* %167, i32 0, i32 5
  %169 = load %struct.TYPE_2__*, %struct.TYPE_2__** %168, align 8
  %170 = load %struct.histogram*, %struct.histogram** %3, align 8
  %171 = getelementptr inbounds %struct.histogram, %struct.histogram* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = add nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %169, i64 %174
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 1
  %177 = load i32, i32* %176, align 8
  %178 = add nsw i32 %177, 1
  store i32 %178, i32* %176, align 8
  br label %357

179:                                              ; preds = %151
  br label %180

180:                                              ; preds = %179, %105
  br label %181

181:                                              ; preds = %180
  %182 = load double, double* %4, align 8
  %183 = load %struct.histogram*, %struct.histogram** %3, align 8
  %184 = getelementptr inbounds %struct.histogram, %struct.histogram* %183, i32 0, i32 5
  %185 = load %struct.TYPE_2__*, %struct.TYPE_2__** %184, align 8
  %186 = load %struct.histogram*, %struct.histogram** %3, align 8
  %187 = getelementptr inbounds %struct.histogram, %struct.histogram* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %185, i64 %189
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  store double %182, double* %191, align 8
  %192 = load %struct.histogram*, %struct.histogram** %3, align 8
  %193 = getelementptr inbounds %struct.histogram, %struct.histogram* %192, i32 0, i32 5
  %194 = load %struct.TYPE_2__*, %struct.TYPE_2__** %193, align 8
  %195 = load %struct.histogram*, %struct.histogram** %3, align 8
  %196 = getelementptr inbounds %struct.histogram, %struct.histogram* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %194, i64 %198
  %200 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %199, i32 0, i32 1
  store i32 1, i32* %200, align 8
  %201 = load %struct.histogram*, %struct.histogram** %3, align 8
  %202 = getelementptr inbounds %struct.histogram, %struct.histogram* %201, i32 0, i32 3
  %203 = load i32, i32* %202, align 4
  %204 = load %struct.histogram*, %struct.histogram** %3, align 8
  %205 = getelementptr inbounds %struct.histogram, %struct.histogram* %204, i32 0, i32 4
  %206 = load i32, i32* %205, align 8
  %207 = icmp ne i32 %203, %206
  br i1 %207, label %208, label %215

208:                                              ; preds = %181
  %209 = load %struct.histogram*, %struct.histogram** %3, align 8
  %210 = getelementptr inbounds %struct.histogram, %struct.histogram* %209, i32 0, i32 3
  %211 = load i32, i32* %210, align 4
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 4
  %213 = load %struct.histogram*, %struct.histogram** %3, align 8
  %214 = getelementptr inbounds %struct.histogram, %struct.histogram* %213, i32 0, i32 2
  store i32 %212, i32* %214, align 8
  br label %357

215:                                              ; preds = %181
  store i32 0, i32* %5, align 4
  br label %216

216:                                              ; preds = %250, %215
  %217 = load i32, i32* %5, align 4
  %218 = load %struct.histogram*, %struct.histogram** %3, align 8
  %219 = getelementptr inbounds %struct.histogram, %struct.histogram* %218, i32 0, i32 3
  %220 = load i32, i32* %219, align 4
  %221 = icmp ult i32 %217, %220
  br i1 %221, label %222, label %253

222:                                              ; preds = %216
  %223 = load %struct.histogram*, %struct.histogram** %3, align 8
  %224 = getelementptr inbounds %struct.histogram, %struct.histogram* %223, i32 0, i32 5
  %225 = load %struct.TYPE_2__*, %struct.TYPE_2__** %224, align 8
  %226 = load i32, i32* %5, align 4
  %227 = add i32 %226, 1
  %228 = zext i32 %227 to i64
  %229 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %225, i64 %228
  %230 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %229, i32 0, i32 0
  %231 = load double, double* %230, align 8
  %232 = load %struct.histogram*, %struct.histogram** %3, align 8
  %233 = getelementptr inbounds %struct.histogram, %struct.histogram* %232, i32 0, i32 5
  %234 = load %struct.TYPE_2__*, %struct.TYPE_2__** %233, align 8
  %235 = load i32, i32* %5, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %234, i64 %236
  %238 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %237, i32 0, i32 0
  %239 = load double, double* %238, align 8
  %240 = fsub double %231, %239
  store double %240, double* %6, align 8
  %241 = load double, double* %6, align 8
  %242 = load double, double* %7, align 8
  %243 = fcmp olt double %241, %242
  br i1 %243, label %244, label %249

244:                                              ; preds = %222
  %245 = load double, double* %6, align 8
  store double %245, double* %7, align 8
  %246 = load i32, i32* %5, align 4
  %247 = load %struct.histogram*, %struct.histogram** %3, align 8
  %248 = getelementptr inbounds %struct.histogram, %struct.histogram* %247, i32 0, i32 2
  store i32 %246, i32* %248, align 8
  br label %249

249:                                              ; preds = %244, %222
  br label %250

250:                                              ; preds = %249
  %251 = load i32, i32* %5, align 4
  %252 = add i32 %251, 1
  store i32 %252, i32* %5, align 4
  br label %216

253:                                              ; preds = %216
  %254 = load %struct.histogram*, %struct.histogram** %3, align 8
  %255 = getelementptr inbounds %struct.histogram, %struct.histogram* %254, i32 0, i32 5
  %256 = load %struct.TYPE_2__*, %struct.TYPE_2__** %255, align 8
  %257 = load %struct.histogram*, %struct.histogram** %3, align 8
  %258 = getelementptr inbounds %struct.histogram, %struct.histogram* %257, i32 0, i32 2
  %259 = load i32, i32* %258, align 8
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %256, i64 %260
  %262 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %261, i32 0, i32 0
  %263 = load double, double* %262, align 8
  %264 = load %struct.histogram*, %struct.histogram** %3, align 8
  %265 = getelementptr inbounds %struct.histogram, %struct.histogram* %264, i32 0, i32 5
  %266 = load %struct.TYPE_2__*, %struct.TYPE_2__** %265, align 8
  %267 = load %struct.histogram*, %struct.histogram** %3, align 8
  %268 = getelementptr inbounds %struct.histogram, %struct.histogram* %267, i32 0, i32 2
  %269 = load i32, i32* %268, align 8
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %266, i64 %270
  %272 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %271, i32 0, i32 1
  %273 = load i32, i32* %272, align 8
  %274 = sitofp i32 %273 to double
  %275 = fmul double %263, %274
  %276 = load %struct.histogram*, %struct.histogram** %3, align 8
  %277 = getelementptr inbounds %struct.histogram, %struct.histogram* %276, i32 0, i32 5
  %278 = load %struct.TYPE_2__*, %struct.TYPE_2__** %277, align 8
  %279 = load %struct.histogram*, %struct.histogram** %3, align 8
  %280 = getelementptr inbounds %struct.histogram, %struct.histogram* %279, i32 0, i32 2
  %281 = load i32, i32* %280, align 8
  %282 = add nsw i32 %281, 1
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %278, i64 %283
  %285 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %284, i32 0, i32 0
  %286 = load double, double* %285, align 8
  %287 = load %struct.histogram*, %struct.histogram** %3, align 8
  %288 = getelementptr inbounds %struct.histogram, %struct.histogram* %287, i32 0, i32 5
  %289 = load %struct.TYPE_2__*, %struct.TYPE_2__** %288, align 8
  %290 = load %struct.histogram*, %struct.histogram** %3, align 8
  %291 = getelementptr inbounds %struct.histogram, %struct.histogram* %290, i32 0, i32 2
  %292 = load i32, i32* %291, align 8
  %293 = add nsw i32 %292, 1
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %289, i64 %294
  %296 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %295, i32 0, i32 1
  %297 = load i32, i32* %296, align 8
  %298 = sitofp i32 %297 to double
  %299 = fmul double %286, %298
  %300 = fadd double %275, %299
  %301 = load %struct.histogram*, %struct.histogram** %3, align 8
  %302 = getelementptr inbounds %struct.histogram, %struct.histogram* %301, i32 0, i32 5
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %302, align 8
  %304 = load %struct.histogram*, %struct.histogram** %3, align 8
  %305 = getelementptr inbounds %struct.histogram, %struct.histogram* %304, i32 0, i32 2
  %306 = load i32, i32* %305, align 8
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i64 %307
  %309 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %308, i32 0, i32 1
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.histogram*, %struct.histogram** %3, align 8
  %312 = getelementptr inbounds %struct.histogram, %struct.histogram* %311, i32 0, i32 5
  %313 = load %struct.TYPE_2__*, %struct.TYPE_2__** %312, align 8
  %314 = load %struct.histogram*, %struct.histogram** %3, align 8
  %315 = getelementptr inbounds %struct.histogram, %struct.histogram* %314, i32 0, i32 2
  %316 = load i32, i32* %315, align 8
  %317 = add nsw i32 %316, 1
  %318 = sext i32 %317 to i64
  %319 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %313, i64 %318
  %320 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %319, i32 0, i32 1
  %321 = load i32, i32* %320, align 8
  %322 = add nsw i32 %310, %321
  %323 = sitofp i32 %322 to double
  %324 = fdiv double %300, %323
  %325 = load %struct.histogram*, %struct.histogram** %3, align 8
  %326 = getelementptr inbounds %struct.histogram, %struct.histogram* %325, i32 0, i32 5
  %327 = load %struct.TYPE_2__*, %struct.TYPE_2__** %326, align 8
  %328 = load %struct.histogram*, %struct.histogram** %3, align 8
  %329 = getelementptr inbounds %struct.histogram, %struct.histogram* %328, i32 0, i32 2
  %330 = load i32, i32* %329, align 8
  %331 = add nsw i32 %330, 1
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %327, i64 %332
  %334 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %333, i32 0, i32 0
  store double %324, double* %334, align 8
  %335 = load %struct.histogram*, %struct.histogram** %3, align 8
  %336 = getelementptr inbounds %struct.histogram, %struct.histogram* %335, i32 0, i32 5
  %337 = load %struct.TYPE_2__*, %struct.TYPE_2__** %336, align 8
  %338 = load %struct.histogram*, %struct.histogram** %3, align 8
  %339 = getelementptr inbounds %struct.histogram, %struct.histogram* %338, i32 0, i32 2
  %340 = load i32, i32* %339, align 8
  %341 = sext i32 %340 to i64
  %342 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %337, i64 %341
  %343 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %342, i32 0, i32 1
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.histogram*, %struct.histogram** %3, align 8
  %346 = getelementptr inbounds %struct.histogram, %struct.histogram* %345, i32 0, i32 5
  %347 = load %struct.TYPE_2__*, %struct.TYPE_2__** %346, align 8
  %348 = load %struct.histogram*, %struct.histogram** %3, align 8
  %349 = getelementptr inbounds %struct.histogram, %struct.histogram* %348, i32 0, i32 2
  %350 = load i32, i32* %349, align 8
  %351 = add nsw i32 %350, 1
  %352 = sext i32 %351 to i64
  %353 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %347, i64 %352
  %354 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %353, i32 0, i32 1
  %355 = load i32, i32* %354, align 8
  %356 = add nsw i32 %355, %344
  store i32 %356, i32* %354, align 8
  br label %357

357:                                              ; preds = %253, %208, %166, %91
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @eq(double, double) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
