; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_LoadLightmaps.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_bsp.c_R_LoadLightmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32* }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_10__ = type { i32 (i32, i8*, i32)*, i32* (i32, i32)* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_8__ = type { i32, i32 }

@LIGHTMAP_SIZE = common dso_local global i32 0, align 4
@fileBase = common dso_local global float* null, align 8
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@r_vertexLight = common dso_local global %struct.TYPE_11__* null, align 8
@glConfig = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@GLHW_PERMEDIA2 = common dso_local global i64 0, align 8
@ri = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@h_low = common dso_local global i32 0, align 4
@r_lightmap = common dso_local global %struct.TYPE_12__* null, align 8
@.str = private unnamed_addr constant [12 x i8] c"*lightmap%d\00", align 1
@IMGTYPE_COLORALPHA = common dso_local global i32 0, align 4
@IMGFLAG_NOLIGHTSCALE = common dso_local global i32 0, align 4
@IMGFLAG_NO_COMPRESSION = common dso_local global i32 0, align 4
@IMGFLAG_CLAMPTOEDGE = common dso_local global i32 0, align 4
@PRINT_ALL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Brightest lightmap value: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @R_LoadLightmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_LoadLightmaps(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca float*, align 8
  %4 = alloca float*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca double, align 8
  %12 = alloca i32, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca [3 x float], align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %18 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %19 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %20 = mul nsw i32 %18, %19
  %21 = mul nsw i32 %20, 4
  %22 = zext i32 %21 to i64
  %23 = call i8* @llvm.stacksave()
  store i8* %23, i8** %6, align 8
  %24 = alloca float, i64 %22, align 16
  store i64 %22, i64* %7, align 8
  store float 0.000000e+00, float* %10, align 4
  store double 0.000000e+00, double* %11, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %1
  store i32 1, i32* %12, align 4
  br label %236

31:                                               ; preds = %1
  %32 = load float*, float** @fileBase, align 8
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds float, float* %32, i64 %36
  store float* %37, float** %3, align 8
  %38 = call i32 (...) @R_IssuePendingRenderCommands()
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %41 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %42 = mul nsw i32 %40, %41
  %43 = mul nsw i32 %42, 3
  %44 = sdiv i32 %39, %43
  store i32 %44, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %45 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  br label %50

50:                                               ; preds = %47, %31
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** @r_vertexLight, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @glConfig, i32 0, i32 0), align 8
  %57 = load i64, i64* @GLHW_PERMEDIA2, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %55, %50
  store i32 1, i32* %12, align 4
  br label %236

60:                                               ; preds = %55
  %61 = load i32* (i32, i32)*, i32* (i32, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 1), align 8
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %63 = sext i32 %62 to i64
  %64 = mul i64 %63, 8
  %65 = trunc i64 %64 to i32
  %66 = load i32, i32* @h_low, align 4
  %67 = call i32* %61(i32 %65, i32 %66)
  store i32* %67, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  store i32 0, i32* %8, align 4
  br label %68

68:                                               ; preds = %220, %60
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0), align 8
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %223

72:                                               ; preds = %68
  %73 = load float*, float** %3, align 8
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %76 = mul nsw i32 %74, %75
  %77 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %78 = mul nsw i32 %76, %77
  %79 = mul nsw i32 %78, 3
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds float, float* %73, i64 %80
  store float* %81, float** %4, align 8
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_lightmap, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 2
  br i1 %85, label %86, label %177

86:                                               ; preds = %72
  store i32 0, i32* %9, align 4
  br label %87

87:                                               ; preds = %173, %86
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %90 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %91 = mul nsw i32 %89, %90
  %92 = icmp slt i32 %88, %91
  br i1 %92, label %93, label %176

93:                                               ; preds = %87
  %94 = load float*, float** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = mul nsw i32 %95, 3
  %97 = add nsw i32 %96, 0
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds float, float* %94, i64 %98
  %100 = load float, float* %99, align 4
  store float %100, float* %13, align 4
  %101 = load float*, float** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = mul nsw i32 %102, 3
  %104 = add nsw i32 %103, 1
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds float, float* %101, i64 %105
  %107 = load float, float* %106, align 4
  store float %107, float* %14, align 4
  %108 = load float*, float** %4, align 8
  %109 = load i32, i32* %9, align 4
  %110 = mul nsw i32 %109, 3
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds float, float* %108, i64 %112
  %114 = load float, float* %113, align 4
  store float %114, float* %15, align 4
  %115 = bitcast [3 x float]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %115, i8 0, i64 12, i1 false)
  %116 = load float, float* %13, align 4
  %117 = fmul float 0x3FD51EB860000000, %116
  %118 = load float, float* %14, align 4
  %119 = fmul float 0x3FE5EB8520000000, %118
  %120 = fadd float %117, %119
  %121 = load float, float* %15, align 4
  %122 = fmul float 0x3FB020C4A0000000, %121
  %123 = fadd float %120, %122
  store float %123, float* %16, align 4
  %124 = load float, float* %16, align 4
  %125 = fcmp ogt float %124, 2.550000e+02
  br i1 %125, label %126, label %127

126:                                              ; preds = %93
  store float 1.000000e+00, float* %16, align 4
  br label %130

127:                                              ; preds = %93
  %128 = load float, float* %16, align 4
  %129 = fdiv float %128, 2.550000e+02
  store float %129, float* %16, align 4
  br label %130

130:                                              ; preds = %127, %126
  %131 = load float, float* %16, align 4
  %132 = load float, float* %10, align 4
  %133 = fcmp ogt float %131, %132
  br i1 %133, label %134, label %136

134:                                              ; preds = %130
  %135 = load float, float* %16, align 4
  store float %135, float* %10, align 4
  br label %136

136:                                              ; preds = %134, %130
  %137 = load float, float* %16, align 4
  %138 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %139 = call i32 @HSVtoRGB(float %137, double 1.000000e+00, double 5.000000e-01, float* %138)
  %140 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 0
  %141 = load float, float* %140, align 4
  %142 = fmul float %141, 2.550000e+02
  %143 = load i32, i32* %9, align 4
  %144 = mul nsw i32 %143, 4
  %145 = add nsw i32 %144, 0
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds float, float* %24, i64 %146
  store float %142, float* %147, align 4
  %148 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 1
  %149 = load float, float* %148, align 4
  %150 = fmul float %149, 2.550000e+02
  %151 = load i32, i32* %9, align 4
  %152 = mul nsw i32 %151, 4
  %153 = add nsw i32 %152, 1
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds float, float* %24, i64 %154
  store float %150, float* %155, align 4
  %156 = getelementptr inbounds [3 x float], [3 x float]* %17, i64 0, i64 2
  %157 = load float, float* %156, align 4
  %158 = fmul float %157, 2.550000e+02
  %159 = load i32, i32* %9, align 4
  %160 = mul nsw i32 %159, 4
  %161 = add nsw i32 %160, 2
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds float, float* %24, i64 %162
  store float %158, float* %163, align 4
  %164 = load i32, i32* %9, align 4
  %165 = mul nsw i32 %164, 4
  %166 = add nsw i32 %165, 3
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds float, float* %24, i64 %167
  store float 2.550000e+02, float* %168, align 4
  %169 = load float, float* %16, align 4
  %170 = fpext float %169 to double
  %171 = load double, double* %11, align 8
  %172 = fadd double %171, %170
  store double %172, double* %11, align 8
  br label %173

173:                                              ; preds = %136
  %174 = load i32, i32* %9, align 4
  %175 = add nsw i32 %174, 1
  store i32 %175, i32* %9, align 4
  br label %87

176:                                              ; preds = %87
  br label %204

177:                                              ; preds = %72
  store i32 0, i32* %9, align 4
  br label %178

178:                                              ; preds = %200, %177
  %179 = load i32, i32* %9, align 4
  %180 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %181 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %182 = mul nsw i32 %180, %181
  %183 = icmp slt i32 %179, %182
  br i1 %183, label %184, label %203

184:                                              ; preds = %178
  %185 = load float*, float** %4, align 8
  %186 = load i32, i32* %9, align 4
  %187 = mul nsw i32 %186, 3
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds float, float* %185, i64 %188
  %190 = load i32, i32* %9, align 4
  %191 = mul nsw i32 %190, 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds float, float* %24, i64 %192
  %194 = call i32 @R_ColorShiftLightingBytes(float* %189, float* %193)
  %195 = load i32, i32* %9, align 4
  %196 = mul nsw i32 %195, 4
  %197 = add nsw i32 %196, 3
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds float, float* %24, i64 %198
  store float 2.550000e+02, float* %199, align 4
  br label %200

200:                                              ; preds = %184
  %201 = load i32, i32* %9, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %9, align 4
  br label %178

203:                                              ; preds = %178
  br label %204

204:                                              ; preds = %203, %176
  %205 = load i32, i32* %8, align 4
  %206 = call i32 @va(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %208 = load i32, i32* @LIGHTMAP_SIZE, align 4
  %209 = load i32, i32* @IMGTYPE_COLORALPHA, align 4
  %210 = load i32, i32* @IMGFLAG_NOLIGHTSCALE, align 4
  %211 = load i32, i32* @IMGFLAG_NO_COMPRESSION, align 4
  %212 = or i32 %210, %211
  %213 = load i32, i32* @IMGFLAG_CLAMPTOEDGE, align 4
  %214 = or i32 %212, %213
  %215 = call i32 @R_CreateImage(i32 %206, float* %24, i32 %207, i32 %208, i32 %209, i32 %214, i32 0)
  %216 = load i32*, i32** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 1), align 8
  %217 = load i32, i32* %8, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds i32, i32* %216, i64 %218
  store i32 %215, i32* %219, align 4
  br label %220

220:                                              ; preds = %204
  %221 = load i32, i32* %8, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %8, align 4
  br label %68

223:                                              ; preds = %68
  %224 = load %struct.TYPE_12__*, %struct.TYPE_12__** @r_lightmap, align 8
  %225 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 4
  %227 = icmp eq i32 %226, 2
  br i1 %227, label %228, label %235

228:                                              ; preds = %223
  %229 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @ri, i32 0, i32 0), align 8
  %230 = load i32, i32* @PRINT_ALL, align 4
  %231 = load float, float* %10, align 4
  %232 = fmul float %231, 2.550000e+02
  %233 = fptosi float %232 to i32
  %234 = call i32 %229(i32 %230, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %233)
  br label %235

235:                                              ; preds = %228, %223
  store i32 0, i32* %12, align 4
  br label %236

236:                                              ; preds = %235, %59, %30
  %237 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %237)
  %238 = load i32, i32* %12, align 4
  switch i32 %238, label %240 [
    i32 0, label %239
    i32 1, label %239
  ]

239:                                              ; preds = %236, %236
  ret void

240:                                              ; preds = %236
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @R_IssuePendingRenderCommands(...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

declare dso_local i32 @HSVtoRGB(float, double, double, float*) #2

declare dso_local i32 @R_ColorShiftLightingBytes(float*, float*) #2

declare dso_local i32 @R_CreateImage(i32, float*, i32, i32, i32, i32, i32) #2

declare dso_local i32 @va(i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
