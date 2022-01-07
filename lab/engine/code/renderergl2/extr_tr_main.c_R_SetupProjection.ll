; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_SetupProjection.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_main.c_R_SetupProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { float }
%struct.TYPE_5__ = type { i64, float, float, i32* }

@r_stereoSeparation = common dso_local global %struct.TYPE_6__* null, align 8
@STEREO_LEFT = common dso_local global i64 0, align 8
@STEREO_RIGHT = common dso_local global i64 0, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupProjection(%struct.TYPE_5__* %0, float %1, float %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca i64, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store i64 %3, i64* %8, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @r_stereoSeparation, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load float, float* %17, align 4
  store float %18, float* %15, align 4
  %19 = load float, float* %15, align 4
  %20 = fcmp une float %19, 0.000000e+00
  br i1 %20, label %21, label %45

21:                                               ; preds = %4
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @STEREO_LEFT, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %31

27:                                               ; preds = %21
  %28 = load float, float* %6, align 4
  %29 = load float, float* %15, align 4
  %30 = fdiv float %28, %29
  store float %30, float* %15, align 4
  br label %44

31:                                               ; preds = %21
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @STEREO_RIGHT, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %31
  %38 = load float, float* %6, align 4
  %39 = load float, float* %15, align 4
  %40 = fneg float %39
  %41 = fdiv float %38, %40
  store float %41, float* %15, align 4
  br label %43

42:                                               ; preds = %31
  store float 0.000000e+00, float* %15, align 4
  br label %43

43:                                               ; preds = %42, %37
  br label %44

44:                                               ; preds = %43, %27
  br label %45

45:                                               ; preds = %44, %4
  %46 = load float, float* %6, align 4
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  %49 = load float, float* %48, align 8
  %50 = load float, float* @M_PI, align 4
  %51 = fmul float %49, %50
  %52 = fdiv float %51, 3.600000e+02
  %53 = call float @tan(float %52)
  %54 = fmul float %46, %53
  store float %54, float* %12, align 4
  %55 = load float, float* %12, align 4
  %56 = fneg float %55
  store float %56, float* %11, align 4
  %57 = load float, float* %6, align 4
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load float, float* %59, align 4
  %61 = load float, float* @M_PI, align 4
  %62 = fmul float %60, %61
  %63 = fdiv float %62, 3.600000e+02
  %64 = call float @tan(float %63)
  %65 = fmul float %57, %64
  store float %65, float* %10, align 4
  %66 = load float, float* %10, align 4
  %67 = fneg float %66
  store float %67, float* %9, align 4
  %68 = load float, float* %10, align 4
  %69 = load float, float* %9, align 4
  %70 = fsub float %68, %69
  store float %70, float* %13, align 4
  %71 = load float, float* %12, align 4
  %72 = load float, float* %11, align 4
  %73 = fsub float %71, %72
  store float %73, float* %14, align 4
  %74 = load float, float* %6, align 4
  %75 = fmul float 2.000000e+00, %74
  %76 = load float, float* %13, align 4
  %77 = fdiv float %75, %76
  %78 = fptosi float %77 to i32
  %79 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 3
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 4
  store i32 0, i32* %86, align 4
  %87 = load float, float* %10, align 4
  %88 = load float, float* %9, align 4
  %89 = fadd float %87, %88
  %90 = load float, float* %15, align 4
  %91 = fmul float 2.000000e+00, %90
  %92 = fadd float %89, %91
  %93 = load float, float* %13, align 4
  %94 = fdiv float %92, %93
  %95 = fptosi float %94 to i32
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 3
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 8
  store i32 %95, i32* %99, align 4
  %100 = load float, float* %6, align 4
  %101 = fmul float 2.000000e+00, %100
  %102 = load float, float* %15, align 4
  %103 = fmul float %101, %102
  %104 = load float, float* %13, align 4
  %105 = fdiv float %103, %104
  %106 = fptosi float %105 to i32
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i32 0, i32 3
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 12
  store i32 %106, i32* %110, align 4
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i32 0, i32 3
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 0, i32* %114, align 4
  %115 = load float, float* %6, align 4
  %116 = fmul float 2.000000e+00, %115
  %117 = load float, float* %14, align 4
  %118 = fdiv float %116, %117
  %119 = fptosi float %118 to i32
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = getelementptr inbounds i32, i32* %122, i64 5
  store i32 %119, i32* %123, align 4
  %124 = load float, float* %12, align 4
  %125 = load float, float* %11, align 4
  %126 = fadd float %124, %125
  %127 = load float, float* %14, align 4
  %128 = fdiv float %126, %127
  %129 = fptosi float %128 to i32
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 3
  %132 = load i32*, i32** %131, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 9
  store i32 %129, i32* %133, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 3
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 13
  store i32 0, i32* %137, align 4
  %138 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 3
  %140 = load i32*, i32** %139, align 8
  %141 = getelementptr inbounds i32, i32* %140, i64 3
  store i32 0, i32* %141, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %142, i32 0, i32 3
  %144 = load i32*, i32** %143, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 7
  store i32 0, i32* %145, align 4
  %146 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %147 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %146, i32 0, i32 3
  %148 = load i32*, i32** %147, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 11
  store i32 -1, i32* %149, align 4
  %150 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 3
  %152 = load i32*, i32** %151, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 15
  store i32 0, i32* %153, align 4
  %154 = load i64, i64* %8, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %165

156:                                              ; preds = %45
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = load float, float* %9, align 4
  %159 = load float, float* %10, align 4
  %160 = load float, float* %12, align 4
  %161 = load float, float* %6, align 4
  %162 = load float, float* %7, align 4
  %163 = load float, float* %15, align 4
  %164 = call i32 @R_SetupFrustum(%struct.TYPE_5__* %157, float %158, float %159, float %160, float %161, float %162, float %163)
  br label %165

165:                                              ; preds = %156, %45
  ret void
}

declare dso_local float @tan(float) #1

declare dso_local i32 @R_SetupFrustum(%struct.TYPE_5__*, float, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
