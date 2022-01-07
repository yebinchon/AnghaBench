; ModuleID = '/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_load_model.c_LatLongToNormal.c'
source_filename = "/home/carl/AnghaBench/lab/engine/code/deepmind/extr_dmlab_load_model.c_LatLongToNormal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kPi = common dso_local global float 0.000000e+00, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float*, i32*)* @LatLongToNormal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @LatLongToNormal(float* %0, i32* %1) #0 {
  %3 = alloca float*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca float, align 4
  %6 = alloca float, align 4
  store float* %0, float** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load float*, float** %3, align 8
  %8 = getelementptr inbounds float, float* %7, i64 0
  %9 = load float, float* %8, align 4
  %10 = fmul float %9, 2.000000e+00
  %11 = load float, float* @kPi, align 4
  %12 = fmul float %10, %11
  %13 = fdiv float %12, 2.550000e+02
  store float %13, float* %5, align 4
  %14 = load float*, float** %3, align 8
  %15 = getelementptr inbounds float, float* %14, i64 1
  %16 = load float, float* %15, align 4
  %17 = fmul float %16, 2.000000e+00
  %18 = load float, float* @kPi, align 4
  %19 = fmul float %17, %18
  %20 = fdiv float %19, 2.550000e+02
  store float %20, float* %6, align 4
  %21 = load float, float* %6, align 4
  %22 = call i32 @cosf(float %21)
  %23 = load float, float* %5, align 4
  %24 = call i32 @sinf(float %23)
  %25 = mul nsw i32 %22, %24
  %26 = load i32*, i32** %4, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load float, float* %6, align 4
  %29 = call i32 @sinf(float %28)
  %30 = load float, float* %5, align 4
  %31 = call i32 @sinf(float %30)
  %32 = mul nsw i32 %29, %31
  %33 = load i32*, i32** %4, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  store i32 %32, i32* %34, align 4
  %35 = load float, float* %5, align 4
  %36 = call i32 @cosf(float %35)
  %37 = load i32*, i32** %4, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 %36, i32* %38, align 4
  ret void
}

declare dso_local i32 @cosf(float) #1

declare dso_local i32 @sinf(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
