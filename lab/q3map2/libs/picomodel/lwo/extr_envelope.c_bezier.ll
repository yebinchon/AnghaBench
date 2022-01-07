; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_bezier.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_bezier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float, float)* @bezier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @bezier(float %0, float %1, float %2, float %3, float %4) #0 {
  %6 = alloca float, align 4
  %7 = alloca float, align 4
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float, align 4
  %15 = alloca float, align 4
  store float %0, float* %6, align 4
  store float %1, float* %7, align 4
  store float %2, float* %8, align 4
  store float %3, float* %9, align 4
  store float %4, float* %10, align 4
  %16 = load float, float* %10, align 4
  %17 = load float, float* %10, align 4
  %18 = fmul float %16, %17
  store float %18, float* %14, align 4
  %19 = load float, float* %14, align 4
  %20 = load float, float* %10, align 4
  %21 = fmul float %19, %20
  store float %21, float* %15, align 4
  %22 = load float, float* %7, align 4
  %23 = load float, float* %6, align 4
  %24 = fsub float %22, %23
  %25 = fmul float 3.000000e+00, %24
  store float %25, float* %13, align 4
  %26 = load float, float* %8, align 4
  %27 = load float, float* %7, align 4
  %28 = fsub float %26, %27
  %29 = fmul float 3.000000e+00, %28
  %30 = load float, float* %13, align 4
  %31 = fsub float %29, %30
  store float %31, float* %12, align 4
  %32 = load float, float* %9, align 4
  %33 = load float, float* %6, align 4
  %34 = fsub float %32, %33
  %35 = load float, float* %13, align 4
  %36 = fsub float %34, %35
  %37 = load float, float* %12, align 4
  %38 = fsub float %36, %37
  store float %38, float* %11, align 4
  %39 = load float, float* %11, align 4
  %40 = load float, float* %15, align 4
  %41 = fmul float %39, %40
  %42 = load float, float* %12, align 4
  %43 = load float, float* %14, align 4
  %44 = fmul float %42, %43
  %45 = fadd float %41, %44
  %46 = load float, float* %13, align 4
  %47 = load float, float* %10, align 4
  %48 = fmul float %46, %47
  %49 = fadd float %45, %48
  %50 = load float, float* %6, align 4
  %51 = fadd float %49, %50
  ret float %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
