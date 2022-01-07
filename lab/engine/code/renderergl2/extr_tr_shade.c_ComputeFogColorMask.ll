; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ComputeFogColorMask.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_shade.c_ComputeFogColorMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, float*)* @ComputeFogColorMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ComputeFogColorMask(%struct.TYPE_3__* %0, float* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca float*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store float* %1, float** %4, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %35 [
    i32 129, label %8
    i32 130, label %17
    i32 128, label %26
  ]

8:                                                ; preds = %2
  %9 = load float*, float** %4, align 8
  %10 = getelementptr inbounds float, float* %9, i64 2
  store float 1.000000e+00, float* %10, align 4
  %11 = load float*, float** %4, align 8
  %12 = getelementptr inbounds float, float* %11, i64 1
  store float 1.000000e+00, float* %12, align 4
  %13 = load float*, float** %4, align 8
  %14 = getelementptr inbounds float, float* %13, i64 0
  store float 1.000000e+00, float* %14, align 4
  %15 = load float*, float** %4, align 8
  %16 = getelementptr inbounds float, float* %15, i64 3
  store float 0.000000e+00, float* %16, align 4
  br label %44

17:                                               ; preds = %2
  %18 = load float*, float** %4, align 8
  %19 = getelementptr inbounds float, float* %18, i64 2
  store float 0.000000e+00, float* %19, align 4
  %20 = load float*, float** %4, align 8
  %21 = getelementptr inbounds float, float* %20, i64 1
  store float 0.000000e+00, float* %21, align 4
  %22 = load float*, float** %4, align 8
  %23 = getelementptr inbounds float, float* %22, i64 0
  store float 0.000000e+00, float* %23, align 4
  %24 = load float*, float** %4, align 8
  %25 = getelementptr inbounds float, float* %24, i64 3
  store float 1.000000e+00, float* %25, align 4
  br label %44

26:                                               ; preds = %2
  %27 = load float*, float** %4, align 8
  %28 = getelementptr inbounds float, float* %27, i64 3
  store float 1.000000e+00, float* %28, align 4
  %29 = load float*, float** %4, align 8
  %30 = getelementptr inbounds float, float* %29, i64 2
  store float 1.000000e+00, float* %30, align 4
  %31 = load float*, float** %4, align 8
  %32 = getelementptr inbounds float, float* %31, i64 1
  store float 1.000000e+00, float* %32, align 4
  %33 = load float*, float** %4, align 8
  %34 = getelementptr inbounds float, float* %33, i64 0
  store float 1.000000e+00, float* %34, align 4
  br label %44

35:                                               ; preds = %2
  %36 = load float*, float** %4, align 8
  %37 = getelementptr inbounds float, float* %36, i64 3
  store float 0.000000e+00, float* %37, align 4
  %38 = load float*, float** %4, align 8
  %39 = getelementptr inbounds float, float* %38, i64 2
  store float 0.000000e+00, float* %39, align 4
  %40 = load float*, float** %4, align 8
  %41 = getelementptr inbounds float, float* %40, i64 1
  store float 0.000000e+00, float* %41, align 4
  %42 = load float*, float** %4, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  store float 0.000000e+00, float* %43, align 4
  br label %44

44:                                               ; preds = %35, %26, %17, %8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
