; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_SetupProjection.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_SetupProjection.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { float }
%struct.TYPE_9__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_8__ = type { i64, float, float, i32*, i64 }

@r_stereoSeparation = common dso_local global %struct.TYPE_10__* null, align 8
@STEREO_LEFT = common dso_local global i64 0, align 8
@STEREO_RIGHT = common dso_local global i64 0, align 8
@M_PI = common dso_local global float 0.000000e+00, align 4
@tr = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupProjection(%struct.TYPE_8__* %0, float %1, i64 %2) #0 {
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca float, align 4
  %6 = alloca i64, align 8
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store float %1, float* %5, align 4
  store i64 %2, i64* %6, align 8
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** @r_stereoSeparation, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = load float, float* %15, align 4
  store float %16, float* %13, align 4
  %17 = load float, float* %13, align 4
  %18 = fcmp une float %17, 0.000000e+00
  br i1 %18, label %19, label %43

19:                                               ; preds = %3
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @STEREO_LEFT, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %19
  %26 = load float, float* %5, align 4
  %27 = load float, float* %13, align 4
  %28 = fdiv float %26, %27
  store float %28, float* %13, align 4
  br label %42

29:                                               ; preds = %19
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @STEREO_RIGHT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %29
  %36 = load float, float* %5, align 4
  %37 = load float, float* %13, align 4
  %38 = fneg float %37
  %39 = fdiv float %36, %38
  store float %39, float* %13, align 4
  br label %41

40:                                               ; preds = %29
  store float 0.000000e+00, float* %13, align 4
  br label %41

41:                                               ; preds = %40, %35
  br label %42

42:                                               ; preds = %41, %25
  br label %43

43:                                               ; preds = %42, %3
  %44 = load float, float* %5, align 4
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load float, float* %46, align 8
  %48 = load float, float* @M_PI, align 4
  %49 = fmul float %47, %48
  %50 = fdiv float %49, 3.600000e+02
  %51 = call float @tan(float %50)
  %52 = fmul float %44, %51
  store float %52, float* %10, align 4
  %53 = load float, float* %10, align 4
  %54 = fneg float %53
  store float %54, float* %9, align 4
  %55 = load float, float* %5, align 4
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 2
  %58 = load float, float* %57, align 4
  %59 = load float, float* @M_PI, align 4
  %60 = fmul float %58, %59
  %61 = fdiv float %60, 3.600000e+02
  %62 = call float @tan(float %61)
  %63 = fmul float %55, %62
  store float %63, float* %8, align 4
  %64 = load float, float* %8, align 4
  %65 = fneg float %64
  store float %65, float* %7, align 4
  %66 = load float, float* %8, align 4
  %67 = load float, float* %7, align 4
  %68 = fsub float %66, %67
  store float %68, float* %11, align 4
  %69 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0, i32 0), align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %43
  %72 = load float, float* %9, align 4
  %73 = load float, float* %10, align 4
  %74 = fsub float %72, %73
  br label %79

75:                                               ; preds = %43
  %76 = load float, float* %10, align 4
  %77 = load float, float* %9, align 4
  %78 = fsub float %76, %77
  br label %79

79:                                               ; preds = %75, %71
  %80 = phi float [ %74, %71 ], [ %78, %75 ]
  store float %80, float* %12, align 4
  %81 = load float, float* %5, align 4
  %82 = fmul float 2.000000e+00, %81
  %83 = load float, float* %11, align 4
  %84 = fdiv float %82, %83
  %85 = fptosi float %84 to i32
  %86 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %87 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %85, i32* %89, align 4
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %91 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %90, i32 0, i32 3
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 4
  store i32 0, i32* %93, align 4
  %94 = load float, float* %8, align 4
  %95 = load float, float* %7, align 4
  %96 = fadd float %94, %95
  %97 = load float, float* %13, align 4
  %98 = fmul float 2.000000e+00, %97
  %99 = fadd float %96, %98
  %100 = load float, float* %11, align 4
  %101 = fdiv float %99, %100
  %102 = fptosi float %101 to i32
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 3
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 8
  store i32 %102, i32* %106, align 4
  %107 = load float, float* %5, align 4
  %108 = fmul float 2.000000e+00, %107
  %109 = load float, float* %13, align 4
  %110 = fmul float %108, %109
  %111 = load float, float* %11, align 4
  %112 = fdiv float %110, %111
  %113 = fptosi float %112 to i32
  %114 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 3
  %116 = load i32*, i32** %115, align 8
  %117 = getelementptr inbounds i32, i32* %116, i64 12
  store i32 %113, i32* %117, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 0, i32* %121, align 4
  %122 = load float, float* %5, align 4
  %123 = fmul float 2.000000e+00, %122
  %124 = load float, float* %12, align 4
  %125 = fdiv float %123, %124
  %126 = fptosi float %125 to i32
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 3
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 5
  store i32 %126, i32* %130, align 4
  %131 = load float, float* %10, align 4
  %132 = load float, float* %9, align 4
  %133 = fadd float %131, %132
  %134 = load float, float* %12, align 4
  %135 = fdiv float %133, %134
  %136 = fptosi float %135 to i32
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 3
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 9
  store i32 %136, i32* %140, align 4
  %141 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 3
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 13
  store i32 0, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 3
  %147 = load i32*, i32** %146, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 3
  store i32 0, i32* %148, align 4
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 7
  store i32 0, i32* %152, align 4
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %154 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %153, i32 0, i32 3
  %155 = load i32*, i32** %154, align 8
  %156 = getelementptr inbounds i32, i32* %155, i64 11
  store i32 -1, i32* %156, align 4
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 3
  %159 = load i32*, i32** %158, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 15
  store i32 0, i32* %160, align 4
  %161 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @tr, i32 0, i32 0, i32 0), align 8
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 4
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %6, align 8
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %174

166:                                              ; preds = %79
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %168 = load float, float* %7, align 4
  %169 = load float, float* %8, align 4
  %170 = load float, float* %10, align 4
  %171 = load float, float* %5, align 4
  %172 = load float, float* %13, align 4
  %173 = call i32 @R_SetupFrustum(%struct.TYPE_8__* %167, float %168, float %169, float %170, float %171, float %172)
  br label %174

174:                                              ; preds = %166, %79
  ret void
}

declare dso_local float @tan(float) #1

declare dso_local i32 @R_SetupFrustum(%struct.TYPE_8__*, float, float, float, float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
