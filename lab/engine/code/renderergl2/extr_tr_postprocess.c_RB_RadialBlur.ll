; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_RadialBlur.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_postprocess.c_RB_RadialBlur.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }

@glConfig = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@GLS_SRCBLEND_ONE = common dso_local global i32 0, align 4
@GLS_DSTBLEND_ONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.TYPE_7__*, i32, float, float, float, float, float, float, float, float)* @RB_RadialBlur to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @RB_RadialBlur(%struct.TYPE_7__* %0, %struct.TYPE_7__* %1, i32 %2, float %3, float %4, float %5, float %6, float %7, float %8, float %9, float %10) #0 {
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  %14 = alloca i32, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  %21 = alloca float, align 4
  %22 = alloca float, align 4
  %23 = alloca float*, align 8
  %24 = alloca float*, align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca float*, align 8
  %28 = alloca float, align 4
  %29 = alloca float, align 4
  %30 = alloca float, align 4
  %31 = alloca float, align 4
  %32 = alloca float, align 4
  %33 = alloca float, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %13, align 8
  store i32 %2, i32* %14, align 4
  store float %3, float* %15, align 4
  store float %4, float* %16, align 4
  store float %5, float* %17, align 4
  store float %6, float* %18, align 4
  store float %7, float* %19, align 4
  store float %8, float* %20, align 4
  store float %9, float* %21, align 4
  store float %10, float* %22, align 4
  %34 = load i32, i32* %14, align 4
  %35 = sitofp i32 %34 to float
  %36 = fdiv float 1.000000e+00, %35
  store float %36, float* %28, align 4
  %37 = load float, float* %15, align 4
  %38 = load float, float* %28, align 4
  %39 = call float @powf(float %37, float %38) #3
  store float %39, float* %29, align 4
  %40 = load float, float* %28, align 4
  %41 = load float, float* %22, align 4
  %42 = fmul float %41, %40
  store float %42, float* %22, align 4
  %43 = load float*, float** %27, align 8
  %44 = load float, float* %22, align 4
  %45 = load float, float* %22, align 4
  %46 = load float, float* %22, align 4
  %47 = call i32 @VectorSet4(float* %43, float %44, float %45, float %46, float 1.000000e+00)
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %49 = icmp ne %struct.TYPE_7__* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %11
  %51 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  br label %56

54:                                               ; preds = %11
  %55 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 0), align 4
  br label %56

56:                                               ; preds = %54, %50
  %57 = phi i32 [ %53, %50 ], [ %55, %54 ]
  store i32 %57, i32* %25, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %59 = icmp ne %struct.TYPE_7__* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  br label %66

64:                                               ; preds = %56
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @glConfig, i32 0, i32 1), align 4
  br label %66

66:                                               ; preds = %64, %60
  %67 = phi i32 [ %63, %60 ], [ %65, %64 ]
  store i32 %67, i32* %26, align 4
  %68 = load float*, float** %23, align 8
  %69 = load i32, i32* %25, align 4
  %70 = sitofp i32 %69 to float
  %71 = load i32, i32* %26, align 4
  %72 = sitofp i32 %71 to float
  %73 = call i32 @VectorSet4(float* %68, float 0.000000e+00, float 0.000000e+00, float %70, float %72)
  %74 = load float*, float** %24, align 8
  %75 = load float, float* %16, align 4
  %76 = load float, float* %17, align 4
  %77 = load float, float* %18, align 4
  %78 = load float, float* %19, align 4
  %79 = call i32 @VectorSet4(float* %74, float %75, float %76, float %77, float %78)
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %81 = load float*, float** %23, align 8
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %83 = load float*, float** %24, align 8
  %84 = load float*, float** %27, align 8
  %85 = call i32 @FBO_Blit(%struct.TYPE_7__* %80, float* %81, i32* null, %struct.TYPE_7__* %82, float* %83, i32* null, float* %84, i32 0)
  %86 = load i32, i32* %14, align 4
  %87 = add nsw i32 %86, -1
  store i32 %87, i32* %14, align 4
  %88 = load float, float* %29, align 4
  store float %88, float* %30, align 4
  br label %89

89:                                               ; preds = %92, %66
  %90 = load i32, i32* %14, align 4
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %142

92:                                               ; preds = %89
  %93 = load float, float* %30, align 4
  %94 = fdiv float 1.000000e+00, %93
  store float %94, float* %31, align 4
  %95 = load float, float* %20, align 4
  %96 = load float, float* %31, align 4
  %97 = fsub float 1.000000e+00, %96
  %98 = fmul float %95, %97
  store float %98, float* %32, align 4
  %99 = load float, float* %21, align 4
  %100 = fsub float 1.000000e+00, %99
  %101 = load float, float* %31, align 4
  %102 = fsub float 1.000000e+00, %101
  %103 = fmul float %100, %102
  store float %103, float* %33, align 4
  %104 = load float, float* %32, align 4
  %105 = load i32, i32* %25, align 4
  %106 = sitofp i32 %105 to float
  %107 = fmul float %104, %106
  %108 = load float*, float** %23, align 8
  %109 = getelementptr inbounds float, float* %108, i64 0
  store float %107, float* %109, align 4
  %110 = load float, float* %33, align 4
  %111 = load i32, i32* %26, align 4
  %112 = sitofp i32 %111 to float
  %113 = fmul float %110, %112
  %114 = load float*, float** %23, align 8
  %115 = getelementptr inbounds float, float* %114, i64 1
  store float %113, float* %115, align 4
  %116 = load float, float* %31, align 4
  %117 = load i32, i32* %25, align 4
  %118 = sitofp i32 %117 to float
  %119 = fmul float %116, %118
  %120 = load float*, float** %23, align 8
  %121 = getelementptr inbounds float, float* %120, i64 2
  store float %119, float* %121, align 4
  %122 = load float, float* %31, align 4
  %123 = load i32, i32* %26, align 4
  %124 = sitofp i32 %123 to float
  %125 = fmul float %122, %124
  %126 = load float*, float** %23, align 8
  %127 = getelementptr inbounds float, float* %126, i64 3
  store float %125, float* %127, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %129 = load float*, float** %23, align 8
  %130 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %131 = load float*, float** %24, align 8
  %132 = load float*, float** %27, align 8
  %133 = load i32, i32* @GLS_SRCBLEND_ONE, align 4
  %134 = load i32, i32* @GLS_DSTBLEND_ONE, align 4
  %135 = or i32 %133, %134
  %136 = call i32 @FBO_Blit(%struct.TYPE_7__* %128, float* %129, i32* null, %struct.TYPE_7__* %130, float* %131, i32* null, float* %132, i32 %135)
  %137 = load float, float* %29, align 4
  %138 = load float, float* %30, align 4
  %139 = fmul float %138, %137
  store float %139, float* %30, align 4
  %140 = load i32, i32* %14, align 4
  %141 = add nsw i32 %140, -1
  store i32 %141, i32* %14, align 4
  br label %89

142:                                              ; preds = %89
  ret void
}

; Function Attrs: nounwind
declare dso_local float @powf(float, float) #1

declare dso_local i32 @VectorSet4(float*, float, float, float, float) #2

declare dso_local i32 @FBO_Blit(%struct.TYPE_7__*, float*, i32*, %struct.TYPE_7__*, float*, i32*, float*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
