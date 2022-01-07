; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_SetupProjectionZ.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl1/extr_tr_main.c_R_SetupProjectionZ.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { float }
%struct.TYPE_4__ = type { float, float* }

@r_znear = common dso_local global %struct.TYPE_5__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @R_SetupProjectionZ(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca float, align 4
  %4 = alloca float, align 4
  %5 = alloca float, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %6 = load %struct.TYPE_5__*, %struct.TYPE_5__** @r_znear, align 8
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load float, float* %7, align 4
  store float %8, float* %3, align 4
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load float, float* %10, align 8
  store float %11, float* %4, align 4
  %12 = load float, float* %4, align 4
  %13 = load float, float* %3, align 4
  %14 = fsub float %12, %13
  store float %14, float* %5, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load float*, float** %16, align 8
  %18 = getelementptr inbounds float, float* %17, i64 2
  store float 0.000000e+00, float* %18, align 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load float*, float** %20, align 8
  %22 = getelementptr inbounds float, float* %21, i64 6
  store float 0.000000e+00, float* %22, align 4
  %23 = load float, float* %4, align 4
  %24 = load float, float* %3, align 4
  %25 = fadd float %23, %24
  %26 = fneg float %25
  %27 = load float, float* %5, align 4
  %28 = fdiv float %26, %27
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load float*, float** %30, align 8
  %32 = getelementptr inbounds float, float* %31, i64 10
  store float %28, float* %32, align 4
  %33 = load float, float* %4, align 4
  %34 = fmul float -2.000000e+00, %33
  %35 = load float, float* %3, align 4
  %36 = fmul float %34, %35
  %37 = load float, float* %5, align 4
  %38 = fdiv float %36, %37
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 1
  %41 = load float*, float** %40, align 8
  %42 = getelementptr inbounds float, float* %41, i64 14
  store float %38, float* %42, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
