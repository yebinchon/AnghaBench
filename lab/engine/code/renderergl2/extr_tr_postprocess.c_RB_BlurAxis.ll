; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_BlurAxis.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_BlurAxis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float, float }

@__const.RB_BlurAxis.weights = private unnamed_addr constant [3 x float] [float 0x3FCD0F38C0000000, float 0x3FD43CE300000000, float 0x3FB1FD3B80000000], align 4
@__const.RB_BlurAxis.offsets = private unnamed_addr constant [3 x float] [float 0.000000e+00, float 0x3FF6276280000000, float 0x4009D89D80000000], align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, %struct.TYPE_6__*, float, float)* @RB_BlurAxis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_BlurAxis(%struct.TYPE_6__* %0, %struct.TYPE_6__* %1, float %2, float %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca [3 x float], align 4
  %14 = alloca [3 x float], align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %6, align 8
  store float %2, float* %7, align 4
  store float %3, float* %8, align 4
  %18 = bitcast [3 x float]* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 4 bitcast ([3 x float]* @__const.RB_BlurAxis.weights to i8*), i64 12, i1 false)
  %19 = bitcast [3 x float]* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %19, i8* align 4 bitcast ([3 x float]* @__const.RB_BlurAxis.offsets to i8*), i64 12, i1 false)
  %20 = load float, float* %8, align 4
  store float %20, float* %11, align 4
  %21 = load float, float* %11, align 4
  %22 = fsub float 1.000000e+00, %21
  store float %22, float* %12, align 4
  %23 = load float, float* %7, align 4
  %24 = load float, float* %11, align 4
  %25 = fmul float %24, %23
  store float %25, float* %11, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* %12, align 4
  %28 = fmul float %27, %26
  store float %28, float* %12, align 4
  %29 = load i32, i32* %17, align 4
  %30 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %31 = load float, float* %30, align 4
  %32 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %33 = load float, float* %32, align 4
  %34 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 0
  %35 = load float, float* %34, align 4
  %36 = call i32 @VectorSet4(i32 %29, float %31, float %33, float %35, float 1.000000e+00)
  %37 = load i32, i32* %15, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load float, float* %39, align 4
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 1
  %43 = load float, float* %42, align 4
  %44 = call i32 @VectorSet4(i32 %37, float 0.000000e+00, float 0.000000e+00, float %40, float %43)
  %45 = load i32, i32* %16, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load float, float* %47, align 4
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load float, float* %50, align 4
  %52 = call i32 @VectorSet4(i32 %45, float 0.000000e+00, float 0.000000e+00, float %48, float %51)
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %54 = load i32, i32* %15, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = load i32, i32* %16, align 4
  %57 = load i32, i32* %17, align 4
  %58 = call i32 @FBO_Blit(%struct.TYPE_6__* %53, i32 %54, i32* null, %struct.TYPE_6__* %55, i32 %56, i32* null, i32 %57, i32 0)
  %59 = load i32, i32* %17, align 4
  %60 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %61 = load float, float* %60, align 4
  %62 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %63 = load float, float* %62, align 4
  %64 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 1
  %65 = load float, float* %64, align 4
  %66 = call i32 @VectorSet4(i32 %59, float %61, float %63, float %65, float 1.000000e+00)
  %67 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 1
  %68 = load float, float* %67, align 4
  %69 = load float, float* %11, align 4
  %70 = fmul float %68, %69
  store float %70, float* %9, align 4
  %71 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 1
  %72 = load float, float* %71, align 4
  %73 = load float, float* %12, align 4
  %74 = fmul float %72, %73
  store float %74, float* %10, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load float, float* %9, align 4
  %77 = load float, float* %10, align 4
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load float, float* %79, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  %83 = load float, float* %82, align 4
  %84 = call i32 @VectorSet4(i32 %75, float %76, float %77, float %80, float %83)
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %91 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %92 = or i32 %90, %91
  %93 = call i32 @FBO_Blit(%struct.TYPE_6__* %85, i32 %86, i32* null, %struct.TYPE_6__* %87, i32 %88, i32* null, i32 %89, i32 %92)
  %94 = load i32, i32* %15, align 4
  %95 = load float, float* %9, align 4
  %96 = fneg float %95
  %97 = load float, float* %10, align 4
  %98 = fneg float %97
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = load float, float* %100, align 4
  %102 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %102, i32 0, i32 1
  %104 = load float, float* %103, align 4
  %105 = call i32 @VectorSet4(i32 %94, float %96, float %98, float %101, float %104)
  %106 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %107 = load i32, i32* %15, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %109 = load i32, i32* %16, align 4
  %110 = load i32, i32* %17, align 4
  %111 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %112 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %113 = or i32 %111, %112
  %114 = call i32 @FBO_Blit(%struct.TYPE_6__* %106, i32 %107, i32* null, %struct.TYPE_6__* %108, i32 %109, i32* null, i32 %110, i32 %113)
  %115 = load i32, i32* %17, align 4
  %116 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %117 = load float, float* %116, align 4
  %118 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %119 = load float, float* %118, align 4
  %120 = getelementptr inbounds [3 x float], [3 x float]* %13, i64 0, i64 2
  %121 = load float, float* %120, align 4
  %122 = call i32 @VectorSet4(i32 %115, float %117, float %119, float %121, float 1.000000e+00)
  %123 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 2
  %124 = load float, float* %123, align 4
  %125 = load float, float* %11, align 4
  %126 = fmul float %124, %125
  store float %126, float* %9, align 4
  %127 = getelementptr inbounds [3 x float], [3 x float]* %14, i64 0, i64 2
  %128 = load float, float* %127, align 4
  %129 = load float, float* %12, align 4
  %130 = fmul float %128, %129
  store float %130, float* %10, align 4
  %131 = load i32, i32* %15, align 4
  %132 = load float, float* %9, align 4
  %133 = load float, float* %10, align 4
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i32 0, i32 0
  %136 = load float, float* %135, align 4
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 1
  %139 = load float, float* %138, align 4
  %140 = call i32 @VectorSet4(i32 %131, float %132, float %133, float %136, float %139)
  %141 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %142 = load i32, i32* %15, align 4
  %143 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %144 = load i32, i32* %16, align 4
  %145 = load i32, i32* %17, align 4
  %146 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %147 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @FBO_Blit(%struct.TYPE_6__* %141, i32 %142, i32* null, %struct.TYPE_6__* %143, i32 %144, i32* null, i32 %145, i32 %148)
  %150 = load i32, i32* %15, align 4
  %151 = load float, float* %9, align 4
  %152 = fneg float %151
  %153 = load float, float* %10, align 4
  %154 = fneg float %153
  %155 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %156 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %155, i32 0, i32 0
  %157 = load float, float* %156, align 4
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %158, i32 0, i32 1
  %160 = load float, float* %159, align 4
  %161 = call i32 @VectorSet4(i32 %150, float %152, float %154, float %157, float %160)
  %162 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %165 = load i32, i32* %16, align 4
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %168 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %169 = or i32 %167, %168
  %170 = call i32 @FBO_Blit(%struct.TYPE_6__* %162, i32 %163, i32* null, %struct.TYPE_6__* %164, i32 %165, i32* null, i32 %166, i32 %169)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @VectorSet4(i32, float, float, float, float) #2

declare dso_local i32 @FBO_Blit(%struct.TYPE_6__*, i32, i32*, %struct.TYPE_6__*, i32, i32*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
