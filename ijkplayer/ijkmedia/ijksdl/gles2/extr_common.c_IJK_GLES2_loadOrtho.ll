; ModuleID = '/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_common.c_IJK_GLES2_loadOrtho.c'
source_filename = "/home/carl/AnghaBench/ijkplayer/ijkmedia/ijksdl/gles2/extr_common.c_IJK_GLES2_loadOrtho.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @IJK_GLES2_loadOrtho(%struct.TYPE_3__* %0, float %1, float %2, float %3, float %4, float %5, float %6) #0 {
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  %18 = alloca float, align 4
  %19 = alloca float, align 4
  %20 = alloca float, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %8, align 8
  store float %1, float* %9, align 4
  store float %2, float* %10, align 4
  store float %3, float* %11, align 4
  store float %4, float* %12, align 4
  store float %5, float* %13, align 4
  store float %6, float* %14, align 4
  %21 = load float, float* %10, align 4
  %22 = load float, float* %9, align 4
  %23 = fsub float %21, %22
  store float %23, float* %15, align 4
  %24 = load float, float* %12, align 4
  %25 = load float, float* %11, align 4
  %26 = fsub float %24, %25
  store float %26, float* %16, align 4
  %27 = load float, float* %14, align 4
  %28 = load float, float* %13, align 4
  %29 = fsub float %27, %28
  store float %29, float* %17, align 4
  %30 = load float, float* %10, align 4
  %31 = load float, float* %9, align 4
  %32 = fadd float %30, %31
  %33 = fneg float %32
  %34 = load float, float* %10, align 4
  %35 = load float, float* %9, align 4
  %36 = fsub float %34, %35
  %37 = fdiv float %33, %36
  store float %37, float* %18, align 4
  %38 = load float, float* %12, align 4
  %39 = load float, float* %11, align 4
  %40 = fadd float %38, %39
  %41 = fneg float %40
  %42 = load float, float* %12, align 4
  %43 = load float, float* %11, align 4
  %44 = fsub float %42, %43
  %45 = fdiv float %41, %44
  store float %45, float* %19, align 4
  %46 = load float, float* %14, align 4
  %47 = load float, float* %13, align 4
  %48 = fadd float %46, %47
  %49 = fneg float %48
  %50 = load float, float* %14, align 4
  %51 = load float, float* %13, align 4
  %52 = fsub float %50, %51
  %53 = fdiv float %49, %52
  store float %53, float* %20, align 4
  %54 = load float, float* %15, align 4
  %55 = fdiv float 2.000000e+00, %54
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load float*, float** %57, align 8
  %59 = getelementptr inbounds float, float* %58, i64 0
  store float %55, float* %59, align 4
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load float*, float** %61, align 8
  %63 = getelementptr inbounds float, float* %62, i64 1
  store float 0.000000e+00, float* %63, align 4
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load float*, float** %65, align 8
  %67 = getelementptr inbounds float, float* %66, i64 2
  store float 0.000000e+00, float* %67, align 4
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 0
  %70 = load float*, float** %69, align 8
  %71 = getelementptr inbounds float, float* %70, i64 3
  store float 0.000000e+00, float* %71, align 4
  %72 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %72, i32 0, i32 0
  %74 = load float*, float** %73, align 8
  %75 = getelementptr inbounds float, float* %74, i64 4
  store float 0.000000e+00, float* %75, align 4
  %76 = load float, float* %16, align 4
  %77 = fdiv float 2.000000e+00, %76
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load float*, float** %79, align 8
  %81 = getelementptr inbounds float, float* %80, i64 5
  store float %77, float* %81, align 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  %84 = load float*, float** %83, align 8
  %85 = getelementptr inbounds float, float* %84, i64 6
  store float 0.000000e+00, float* %85, align 4
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %87 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i32 0, i32 0
  %88 = load float*, float** %87, align 8
  %89 = getelementptr inbounds float, float* %88, i64 7
  store float 0.000000e+00, float* %89, align 4
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 0
  %92 = load float*, float** %91, align 8
  %93 = getelementptr inbounds float, float* %92, i64 8
  store float 0.000000e+00, float* %93, align 4
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load float*, float** %95, align 8
  %97 = getelementptr inbounds float, float* %96, i64 9
  store float 0.000000e+00, float* %97, align 4
  %98 = load float, float* %17, align 4
  %99 = fdiv float -2.000000e+00, %98
  %100 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %100, i32 0, i32 0
  %102 = load float*, float** %101, align 8
  %103 = getelementptr inbounds float, float* %102, i64 10
  store float %99, float* %103, align 4
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %105 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i32 0, i32 0
  %106 = load float*, float** %105, align 8
  %107 = getelementptr inbounds float, float* %106, i64 11
  store float 0.000000e+00, float* %107, align 4
  %108 = load float, float* %18, align 4
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %110 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i32 0, i32 0
  %111 = load float*, float** %110, align 8
  %112 = getelementptr inbounds float, float* %111, i64 12
  store float %108, float* %112, align 4
  %113 = load float, float* %19, align 4
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load float*, float** %115, align 8
  %117 = getelementptr inbounds float, float* %116, i64 13
  store float %113, float* %117, align 4
  %118 = load float, float* %20, align 4
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load float*, float** %120, align 8
  %122 = getelementptr inbounds float, float* %121, i64 14
  store float %118, float* %122, align 4
  %123 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load float*, float** %124, align 8
  %126 = getelementptr inbounds float, float* %125, i64 15
  store float 1.000000e+00, float* %126, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
