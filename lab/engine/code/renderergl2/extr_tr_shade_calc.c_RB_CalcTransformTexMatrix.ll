; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcTransformTexMatrix.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade_calc.c_RB_CalcTransformTexMatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { float**, float* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RB_CalcTransformTexMatrix(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load float**, float*** %6, align 8
  %8 = getelementptr inbounds float*, float** %7, i64 0
  %9 = load float*, float** %8, align 8
  %10 = getelementptr inbounds float, float* %9, i64 0
  %11 = load float, float* %10, align 4
  %12 = load float*, float** %4, align 8
  %13 = getelementptr inbounds float, float* %12, i64 0
  store float %11, float* %13, align 4
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load float**, float*** %15, align 8
  %17 = getelementptr inbounds float*, float** %16, i64 1
  %18 = load float*, float** %17, align 8
  %19 = getelementptr inbounds float, float* %18, i64 0
  %20 = load float, float* %19, align 4
  %21 = load float*, float** %4, align 8
  %22 = getelementptr inbounds float, float* %21, i64 2
  store float %20, float* %22, align 4
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load float*, float** %24, align 8
  %26 = getelementptr inbounds float, float* %25, i64 0
  %27 = load float, float* %26, align 4
  %28 = load float*, float** %4, align 8
  %29 = getelementptr inbounds float, float* %28, i64 4
  store float %27, float* %29, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load float**, float*** %31, align 8
  %33 = getelementptr inbounds float*, float** %32, i64 0
  %34 = load float*, float** %33, align 8
  %35 = getelementptr inbounds float, float* %34, i64 1
  %36 = load float, float* %35, align 4
  %37 = load float*, float** %4, align 8
  %38 = getelementptr inbounds float, float* %37, i64 1
  store float %36, float* %38, align 4
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load float**, float*** %40, align 8
  %42 = getelementptr inbounds float*, float** %41, i64 1
  %43 = load float*, float** %42, align 8
  %44 = getelementptr inbounds float, float* %43, i64 1
  %45 = load float, float* %44, align 4
  %46 = load float*, float** %4, align 8
  %47 = getelementptr inbounds float, float* %46, i64 3
  store float %45, float* %47, align 4
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 1
  %50 = load float*, float** %49, align 8
  %51 = getelementptr inbounds float, float* %50, i64 1
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %4, align 8
  %54 = getelementptr inbounds float, float* %53, i64 5
  store float %52, float* %54, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
