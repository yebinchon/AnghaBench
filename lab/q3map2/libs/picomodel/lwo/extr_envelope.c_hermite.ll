; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_hermite.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_hermite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (float, float*, float*, float*, float*)* @hermite to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hermite(float %0, float* %1, float* %2, float* %3, float* %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float*, align 8
  %8 = alloca float*, align 8
  %9 = alloca float*, align 8
  %10 = alloca float*, align 8
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  store float %0, float* %6, align 4
  store float* %1, float** %7, align 8
  store float* %2, float** %8, align 8
  store float* %3, float** %9, align 8
  store float* %4, float** %10, align 8
  %13 = load float, float* %6, align 4
  %14 = load float, float* %6, align 4
  %15 = fmul float %13, %14
  store float %15, float* %11, align 4
  %16 = load float, float* %6, align 4
  %17 = load float, float* %11, align 4
  %18 = fmul float %16, %17
  store float %18, float* %12, align 4
  %19 = load float, float* %11, align 4
  %20 = fmul float 3.000000e+00, %19
  %21 = load float, float* %12, align 4
  %22 = fsub float %20, %21
  %23 = load float, float* %12, align 4
  %24 = fsub float %22, %23
  %25 = load float*, float** %8, align 8
  store float %24, float* %25, align 4
  %26 = load float*, float** %8, align 8
  %27 = load float, float* %26, align 4
  %28 = fsub float 1.000000e+00, %27
  %29 = load float*, float** %7, align 8
  store float %28, float* %29, align 4
  %30 = load float, float* %12, align 4
  %31 = load float, float* %11, align 4
  %32 = fsub float %30, %31
  %33 = load float*, float** %10, align 8
  store float %32, float* %33, align 4
  %34 = load float*, float** %10, align 8
  %35 = load float, float* %34, align 4
  %36 = load float, float* %11, align 4
  %37 = fsub float %35, %36
  %38 = load float, float* %6, align 4
  %39 = fadd float %37, %38
  %40 = load float*, float** %9, align 8
  store float %39, float* %40, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
