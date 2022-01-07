; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_DoRailDiscs.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_surface.c_DoRailDiscs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, i32**, i32**, i32*, i32, i32*, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32* }

@r_railWidth = common dso_local global %struct.TYPE_9__* null, align 8
@tess = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@backEnd = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, float*, float*, float*, float*)* @DoRailDiscs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DoRailDiscs(i32 %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca i32, align 4
  %12 = alloca [4 x float*], align 16
  %13 = alloca float*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** @r_railWidth, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp sgt i32 %22, 1
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %6, align 4
  br label %27

27:                                               ; preds = %24, %5
  %28 = load i32, i32* %6, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  br label %276

31:                                               ; preds = %27
  store float 2.500000e-01, float* %17, align 4
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %121, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 4
  br i1 %34, label %35, label %124

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = mul nsw i32 %36, 90
  %38 = add nsw i32 45, %37
  %39 = call i32 @DEG2RAD(i32 %38)
  %40 = call float @cos(i32 %39)
  store float %40, float* %15, align 4
  %41 = load i32, i32* %11, align 4
  %42 = mul nsw i32 %41, 90
  %43 = add nsw i32 45, %42
  %44 = call i32 @DEG2RAD(i32 %43)
  %45 = call float @sin(i32 %44)
  store float %45, float* %16, align 4
  %46 = load float*, float** %9, align 8
  %47 = getelementptr inbounds float, float* %46, i64 0
  %48 = load float, float* %47, align 4
  %49 = load float, float* %15, align 4
  %50 = fmul float %48, %49
  %51 = load float*, float** %10, align 8
  %52 = getelementptr inbounds float, float* %51, i64 0
  %53 = load float, float* %52, align 4
  %54 = load float, float* %16, align 4
  %55 = fmul float %53, %54
  %56 = fadd float %50, %55
  %57 = load float, float* %17, align 4
  %58 = fmul float %56, %57
  %59 = load i32, i32* %14, align 4
  %60 = sitofp i32 %59 to float
  %61 = fmul float %58, %60
  %62 = load float*, float** %13, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  store float %61, float* %63, align 4
  %64 = load float*, float** %9, align 8
  %65 = getelementptr inbounds float, float* %64, i64 1
  %66 = load float, float* %65, align 4
  %67 = load float, float* %15, align 4
  %68 = fmul float %66, %67
  %69 = load float*, float** %10, align 8
  %70 = getelementptr inbounds float, float* %69, i64 1
  %71 = load float, float* %70, align 4
  %72 = load float, float* %16, align 4
  %73 = fmul float %71, %72
  %74 = fadd float %68, %73
  %75 = load float, float* %17, align 4
  %76 = fmul float %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = sitofp i32 %77 to float
  %79 = fmul float %76, %78
  %80 = load float*, float** %13, align 8
  %81 = getelementptr inbounds float, float* %80, i64 1
  store float %79, float* %81, align 4
  %82 = load float*, float** %9, align 8
  %83 = getelementptr inbounds float, float* %82, i64 2
  %84 = load float, float* %83, align 4
  %85 = load float, float* %15, align 4
  %86 = fmul float %84, %85
  %87 = load float*, float** %10, align 8
  %88 = getelementptr inbounds float, float* %87, i64 2
  %89 = load float, float* %88, align 4
  %90 = load float, float* %16, align 4
  %91 = fmul float %89, %90
  %92 = fadd float %86, %91
  %93 = load float, float* %17, align 4
  %94 = fmul float %92, %93
  %95 = load i32, i32* %14, align 4
  %96 = sitofp i32 %95 to float
  %97 = fmul float %94, %96
  %98 = load float*, float** %13, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float %97, float* %99, align 4
  %100 = load float*, float** %7, align 8
  %101 = load float*, float** %13, align 8
  %102 = load i32, i32* %11, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %103
  %105 = load float*, float** %104, align 8
  %106 = call i32 @VectorAdd(float* %100, float* %101, float* %105)
  %107 = load i32, i32* %6, align 4
  %108 = icmp sgt i32 %107, 1
  br i1 %108, label %109, label %120

109:                                              ; preds = %35
  %110 = load i32, i32* %11, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %111
  %113 = load float*, float** %112, align 8
  %114 = load float*, float** %8, align 8
  %115 = load i32, i32* %11, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %116
  %118 = load float*, float** %117, align 8
  %119 = call i32 @VectorAdd(float* %113, float* %114, float* %118)
  br label %120

120:                                              ; preds = %109, %35
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %11, align 4
  br label %32

124:                                              ; preds = %32
  %125 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 6), align 8
  %126 = call i32 @RB_CheckVao(i32 %125)
  store i32 0, i32* %11, align 4
  br label %127

127:                                              ; preds = %273, %124
  %128 = load i32, i32* %11, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %276

131:                                              ; preds = %127
  %132 = call i32 @RB_CHECKOVERFLOW(i32 4, i32 6)
  store i32 0, i32* %18, align 4
  br label %133

133:                                              ; preds = %215, %131
  %134 = load i32, i32* %18, align 4
  %135 = icmp slt i32 %134, 4
  br i1 %135, label %136, label %218

136:                                              ; preds = %133
  %137 = load i32, i32* %18, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %138
  %140 = load float*, float** %139, align 8
  %141 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 5), align 8
  %142 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %143 = getelementptr inbounds i32, i32* %141, i64 %142
  %144 = load i32, i32* %143, align 4
  %145 = call i32 @VectorCopy(float* %140, i32 %144)
  %146 = load i32, i32* %18, align 4
  %147 = icmp slt i32 %146, 2
  %148 = zext i1 %147 to i32
  %149 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %150 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %151 = getelementptr inbounds i32*, i32** %149, i64 %150
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 %148, i32* %153, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %159

156:                                              ; preds = %136
  %157 = load i32, i32* %18, align 4
  %158 = icmp ne i32 %157, 3
  br label %159

159:                                              ; preds = %156, %136
  %160 = phi i1 [ false, %136 ], [ %158, %156 ]
  %161 = zext i1 %160 to i32
  %162 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 1), align 8
  %163 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %164 = getelementptr inbounds i32*, i32** %162, i64 %163
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  store i32 %161, i32* %166, align 4
  %167 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = getelementptr inbounds i32, i32* %170, i64 0
  %172 = load i32, i32* %171, align 4
  %173 = mul nsw i32 %172, 257
  %174 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %176 = getelementptr inbounds i32*, i32** %174, i64 %175
  %177 = load i32*, i32** %176, align 8
  %178 = getelementptr inbounds i32, i32* %177, i64 0
  store i32 %173, i32* %178, align 4
  %179 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = getelementptr inbounds i32, i32* %182, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = mul nsw i32 %184, 257
  %186 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %187 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  store i32 %185, i32* %190, align 4
  %191 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @backEnd, i32 0, i32 0), align 8
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 0
  %193 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %192, i32 0, i32 0
  %194 = load i32*, i32** %193, align 8
  %195 = getelementptr inbounds i32, i32* %194, i64 2
  %196 = load i32, i32* %195, align 4
  %197 = mul nsw i32 %196, 257
  %198 = load i32**, i32*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 2), align 8
  %199 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %200 = getelementptr inbounds i32*, i32** %198, i64 %199
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 2
  store i32 %197, i32* %202, align 4
  %203 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %204 = add i64 %203, 1
  store i64 %204, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %205 = load i32, i32* %18, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %206
  %208 = load float*, float** %207, align 8
  %209 = load float*, float** %8, align 8
  %210 = load i32, i32* %18, align 4
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [4 x float*], [4 x float*]* %12, i64 0, i64 %211
  %213 = load float*, float** %212, align 8
  %214 = call i32 @VectorAdd(float* %208, float* %209, float* %213)
  br label %215

215:                                              ; preds = %159
  %216 = load i32, i32* %18, align 4
  %217 = add nsw i32 %216, 1
  store i32 %217, i32* %18, align 4
  br label %133

218:                                              ; preds = %133
  %219 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %220 = sub i64 %219, 4
  %221 = add i64 %220, 0
  %222 = trunc i64 %221 to i32
  %223 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %224 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %226 = sext i32 %224 to i64
  %227 = getelementptr inbounds i32, i32* %223, i64 %226
  store i32 %222, i32* %227, align 4
  %228 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %229 = sub i64 %228, 4
  %230 = add i64 %229, 1
  %231 = trunc i64 %230 to i32
  %232 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %233 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %234 = add nsw i32 %233, 1
  store i32 %234, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %235 = sext i32 %233 to i64
  %236 = getelementptr inbounds i32, i32* %232, i64 %235
  store i32 %231, i32* %236, align 4
  %237 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %238 = sub i64 %237, 4
  %239 = add i64 %238, 3
  %240 = trunc i64 %239 to i32
  %241 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %242 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %243 = add nsw i32 %242, 1
  store i32 %243, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %244 = sext i32 %242 to i64
  %245 = getelementptr inbounds i32, i32* %241, i64 %244
  store i32 %240, i32* %245, align 4
  %246 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %247 = sub i64 %246, 4
  %248 = add i64 %247, 3
  %249 = trunc i64 %248 to i32
  %250 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %251 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %253 = sext i32 %251 to i64
  %254 = getelementptr inbounds i32, i32* %250, i64 %253
  store i32 %249, i32* %254, align 4
  %255 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %256 = sub i64 %255, 4
  %257 = add i64 %256, 1
  %258 = trunc i64 %257 to i32
  %259 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %260 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %262 = sext i32 %260 to i64
  %263 = getelementptr inbounds i32, i32* %259, i64 %262
  store i32 %258, i32* %263, align 4
  %264 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 0), align 8
  %265 = sub i64 %264, 4
  %266 = add i64 %265, 2
  %267 = trunc i64 %266 to i32
  %268 = load i32*, i32** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 3), align 8
  %269 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %270 = add nsw i32 %269, 1
  store i32 %270, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @tess, i32 0, i32 4), align 8
  %271 = sext i32 %269 to i64
  %272 = getelementptr inbounds i32, i32* %268, i64 %271
  store i32 %267, i32* %272, align 4
  br label %273

273:                                              ; preds = %218
  %274 = load i32, i32* %11, align 4
  %275 = add nsw i32 %274, 1
  store i32 %275, i32* %11, align 4
  br label %127

276:                                              ; preds = %30, %127
  ret void
}

declare dso_local float @cos(i32) #1

declare dso_local i32 @DEG2RAD(i32) #1

declare dso_local float @sin(i32) #1

declare dso_local i32 @VectorAdd(float*, float*, float*) #1

declare dso_local i32 @RB_CheckVao(i32) #1

declare dso_local i32 @RB_CHECKOVERFLOW(i32, i32) #1

declare dso_local i32 @VectorCopy(float*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
