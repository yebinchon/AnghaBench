; ModuleID = '/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_HSVtoRGB.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/renderergl2/extr_tr_bsp.c_HSVtoRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float, float, float*)* @HSVtoRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HSVtoRGB(float %0, float %1, float %2, float* %3) #0 {
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float*, align 8
  %9 = alloca i32, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  store float %0, float* %5, align 4
  store float %1, float* %6, align 4
  store float %2, float* %7, align 4
  store float* %3, float** %8, align 8
  %14 = load float, float* %5, align 4
  %15 = fmul float %14, 5.000000e+00
  store float %15, float* %5, align 4
  %16 = load float, float* %5, align 4
  %17 = call i32 @floor(float %16)
  store i32 %17, i32* %9, align 4
  %18 = load float, float* %5, align 4
  %19 = load i32, i32* %9, align 4
  %20 = sitofp i32 %19 to float
  %21 = fsub float %18, %20
  store float %21, float* %10, align 4
  %22 = load float, float* %7, align 4
  %23 = load float, float* %6, align 4
  %24 = fsub float 1.000000e+00, %23
  %25 = fmul float %22, %24
  store float %25, float* %11, align 4
  %26 = load float, float* %7, align 4
  %27 = load float, float* %6, align 4
  %28 = load float, float* %10, align 4
  %29 = fmul float %27, %28
  %30 = fsub float 1.000000e+00, %29
  %31 = fmul float %26, %30
  store float %31, float* %12, align 4
  %32 = load float, float* %7, align 4
  %33 = load float, float* %6, align 4
  %34 = load float, float* %10, align 4
  %35 = fsub float 1.000000e+00, %34
  %36 = fmul float %33, %35
  %37 = fsub float 1.000000e+00, %36
  %38 = fmul float %32, %37
  store float %38, float* %13, align 4
  %39 = load i32, i32* %9, align 4
  switch i32 %39, label %100 [
    i32 0, label %40
    i32 1, label %50
    i32 2, label %60
    i32 3, label %70
    i32 4, label %80
    i32 5, label %90
  ]

40:                                               ; preds = %4
  %41 = load float, float* %7, align 4
  %42 = load float*, float** %8, align 8
  %43 = getelementptr inbounds float, float* %42, i64 0
  store float %41, float* %43, align 4
  %44 = load float, float* %13, align 4
  %45 = load float*, float** %8, align 8
  %46 = getelementptr inbounds float, float* %45, i64 1
  store float %44, float* %46, align 4
  %47 = load float, float* %11, align 4
  %48 = load float*, float** %8, align 8
  %49 = getelementptr inbounds float, float* %48, i64 2
  store float %47, float* %49, align 4
  br label %100

50:                                               ; preds = %4
  %51 = load float, float* %12, align 4
  %52 = load float*, float** %8, align 8
  %53 = getelementptr inbounds float, float* %52, i64 0
  store float %51, float* %53, align 4
  %54 = load float, float* %7, align 4
  %55 = load float*, float** %8, align 8
  %56 = getelementptr inbounds float, float* %55, i64 1
  store float %54, float* %56, align 4
  %57 = load float, float* %11, align 4
  %58 = load float*, float** %8, align 8
  %59 = getelementptr inbounds float, float* %58, i64 2
  store float %57, float* %59, align 4
  br label %100

60:                                               ; preds = %4
  %61 = load float, float* %11, align 4
  %62 = load float*, float** %8, align 8
  %63 = getelementptr inbounds float, float* %62, i64 0
  store float %61, float* %63, align 4
  %64 = load float, float* %7, align 4
  %65 = load float*, float** %8, align 8
  %66 = getelementptr inbounds float, float* %65, i64 1
  store float %64, float* %66, align 4
  %67 = load float, float* %13, align 4
  %68 = load float*, float** %8, align 8
  %69 = getelementptr inbounds float, float* %68, i64 2
  store float %67, float* %69, align 4
  br label %100

70:                                               ; preds = %4
  %71 = load float, float* %11, align 4
  %72 = load float*, float** %8, align 8
  %73 = getelementptr inbounds float, float* %72, i64 0
  store float %71, float* %73, align 4
  %74 = load float, float* %12, align 4
  %75 = load float*, float** %8, align 8
  %76 = getelementptr inbounds float, float* %75, i64 1
  store float %74, float* %76, align 4
  %77 = load float, float* %7, align 4
  %78 = load float*, float** %8, align 8
  %79 = getelementptr inbounds float, float* %78, i64 2
  store float %77, float* %79, align 4
  br label %100

80:                                               ; preds = %4
  %81 = load float, float* %13, align 4
  %82 = load float*, float** %8, align 8
  %83 = getelementptr inbounds float, float* %82, i64 0
  store float %81, float* %83, align 4
  %84 = load float, float* %11, align 4
  %85 = load float*, float** %8, align 8
  %86 = getelementptr inbounds float, float* %85, i64 1
  store float %84, float* %86, align 4
  %87 = load float, float* %7, align 4
  %88 = load float*, float** %8, align 8
  %89 = getelementptr inbounds float, float* %88, i64 2
  store float %87, float* %89, align 4
  br label %100

90:                                               ; preds = %4
  %91 = load float, float* %7, align 4
  %92 = load float*, float** %8, align 8
  %93 = getelementptr inbounds float, float* %92, i64 0
  store float %91, float* %93, align 4
  %94 = load float, float* %11, align 4
  %95 = load float*, float** %8, align 8
  %96 = getelementptr inbounds float, float* %95, i64 1
  store float %94, float* %96, align 4
  %97 = load float, float* %12, align 4
  %98 = load float*, float** %8, align 8
  %99 = getelementptr inbounds float, float* %98, i64 2
  store float %97, float* %99, align 4
  br label %100

100:                                              ; preds = %4, %90, %80, %70, %60, %50, %40
  ret void
}

declare dso_local i32 @floor(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
