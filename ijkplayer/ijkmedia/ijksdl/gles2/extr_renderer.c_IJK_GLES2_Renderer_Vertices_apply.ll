; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_Vertices_apply.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_renderer.c_IJK_GLES2_Renderer_Vertices_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i64, i64, float, float, float, float, float* }

@.str = private unnamed_addr constant [28 x i8] c"[GLES2] unknown gravity %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"[GLES2] invalid width/height for gravity aspect\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_4__*)* @IJK_GLES2_Renderer_Vertices_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @IJK_GLES2_Renderer_Vertices_apply(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %18 [
    i32 129, label %13
    i32 128, label %14
    i32 130, label %15
  ]

13:                                               ; preds = %1
  br label %25

14:                                               ; preds = %1
  br label %25

15:                                               ; preds = %1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %17 = call i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_4__* %16)
  br label %160

18:                                               ; preds = %1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %21)
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %24 = call i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_4__* %23)
  br label %160

25:                                               ; preds = %14, %13
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %28, 0
  br i1 %29, label %45, label %30

30:                                               ; preds = %25
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp sle i64 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %30
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 3
  %38 = load float, float* %37, align 8
  %39 = fcmp ole float %38, 0.000000e+00
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 4
  %43 = load float, float* %42, align 4
  %44 = fcmp ole float %43, 0.000000e+00
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %35, %30, %25
  %46 = call i32 (i8*, ...) @ALOGE(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = call i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_4__* %47)
  br label %160

49:                                               ; preds = %40
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 3
  %52 = load float, float* %51, align 8
  store float %52, float* %3, align 4
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 4
  %55 = load float, float* %54, align 4
  store float %55, float* %4, align 4
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 5
  %58 = load float, float* %57, align 8
  %59 = fcmp ogt float %58, 0.000000e+00
  br i1 %59, label %60, label %75

60:                                               ; preds = %49
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 6
  %63 = load float, float* %62, align 4
  %64 = fcmp ogt float %63, 0.000000e+00
  br i1 %64, label %65, label %75

65:                                               ; preds = %60
  %66 = load float, float* %3, align 4
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 5
  %69 = load float, float* %68, align 8
  %70 = fmul float %66, %69
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 6
  %73 = load float, float* %72, align 4
  %74 = fdiv float %70, %73
  store float %74, float* %3, align 4
  br label %75

75:                                               ; preds = %65, %60, %49
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i64, i64* %77, align 8
  %79 = sitofp i64 %78 to float
  %80 = load float, float* %3, align 4
  %81 = fdiv float %79, %80
  store float %81, float* %5, align 4
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = sitofp i64 %84 to float
  %86 = load float, float* %4, align 4
  %87 = fdiv float %85, %86
  store float %87, float* %6, align 4
  store float 1.000000e+00, float* %7, align 4
  store float 1.000000e+00, float* %8, align 4
  store float 1.000000e+00, float* %9, align 4
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %99 [
    i32 128, label %91
    i32 129, label %95
  ]

91:                                               ; preds = %75
  %92 = load float, float* %5, align 4
  %93 = load float, float* %6, align 4
  %94 = call float @FFMAX(float %92, float %93)
  store float %94, float* %7, align 4
  br label %99

95:                                               ; preds = %75
  %96 = load float, float* %5, align 4
  %97 = load float, float* %6, align 4
  %98 = call float @FFMIN(float %96, float %97)
  store float %98, float* %7, align 4
  br label %99

99:                                               ; preds = %75, %95, %91
  %100 = load float, float* %3, align 4
  %101 = load float, float* %7, align 4
  %102 = fmul float %100, %101
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = sitofp i64 %105 to float
  %107 = fdiv float %102, %106
  store float %107, float* %8, align 4
  %108 = load float, float* %4, align 4
  %109 = load float, float* %7, align 4
  %110 = fmul float %108, %109
  %111 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %112 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %111, i32 0, i32 2
  %113 = load i64, i64* %112, align 8
  %114 = sitofp i64 %113 to float
  %115 = fdiv float %110, %114
  store float %115, float* %9, align 4
  %116 = load float, float* %8, align 4
  %117 = fneg float %116
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 7
  %120 = load float*, float** %119, align 8
  %121 = getelementptr inbounds float, float* %120, i64 0
  store float %117, float* %121, align 4
  %122 = load float, float* %9, align 4
  %123 = fneg float %122
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 7
  %126 = load float*, float** %125, align 8
  %127 = getelementptr inbounds float, float* %126, i64 1
  store float %123, float* %127, align 4
  %128 = load float, float* %8, align 4
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 7
  %131 = load float*, float** %130, align 8
  %132 = getelementptr inbounds float, float* %131, i64 2
  store float %128, float* %132, align 4
  %133 = load float, float* %9, align 4
  %134 = fneg float %133
  %135 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 7
  %137 = load float*, float** %136, align 8
  %138 = getelementptr inbounds float, float* %137, i64 3
  store float %134, float* %138, align 4
  %139 = load float, float* %8, align 4
  %140 = fneg float %139
  %141 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %141, i32 0, i32 7
  %143 = load float*, float** %142, align 8
  %144 = getelementptr inbounds float, float* %143, i64 4
  store float %140, float* %144, align 4
  %145 = load float, float* %9, align 4
  %146 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 7
  %148 = load float*, float** %147, align 8
  %149 = getelementptr inbounds float, float* %148, i64 5
  store float %145, float* %149, align 4
  %150 = load float, float* %8, align 4
  %151 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 7
  %153 = load float*, float** %152, align 8
  %154 = getelementptr inbounds float, float* %153, i64 6
  store float %150, float* %154, align 4
  %155 = load float, float* %9, align 4
  %156 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %157 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %156, i32 0, i32 7
  %158 = load float*, float** %157, align 8
  %159 = getelementptr inbounds float, float* %158, i64 7
  store float %155, float* %159, align 4
  br label %160

160:                                              ; preds = %99, %45, %18, %15
  ret void
}

declare dso_local i32 @IJK_GLES2_Renderer_Vertices_reset(%struct.TYPE_4__*) #1

declare dso_local i32 @ALOGE(i8*, ...) #1

declare dso_local float @FFMAX(float, float) #1

declare dso_local float @FFMIN(float, float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
