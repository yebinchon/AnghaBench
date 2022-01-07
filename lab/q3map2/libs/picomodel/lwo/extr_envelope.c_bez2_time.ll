; ModuleID = '/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_bez2_time.c'
source_filename = "/home/carl/AnghaBench/lab/q3map2/libs/picomodel/lwo/extr_envelope.c_bez2_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (float (float, float, float, float, float, float*, float*)* @bez2_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal float @bez2_time(float %0, float %1, float %2, float %3, float %4, float* %5, float* %6) #0 {
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  %10 = alloca float, align 4
  %11 = alloca float, align 4
  %12 = alloca float, align 4
  %13 = alloca float, align 4
  %14 = alloca float*, align 8
  %15 = alloca float*, align 8
  %16 = alloca float, align 4
  %17 = alloca float, align 4
  store float %0, float* %9, align 4
  store float %1, float* %10, align 4
  store float %2, float* %11, align 4
  store float %3, float* %12, align 4
  store float %4, float* %13, align 4
  store float* %5, float** %14, align 8
  store float* %6, float** %15, align 8
  %18 = load float*, float** %14, align 8
  %19 = load float, float* %18, align 4
  %20 = load float*, float** %15, align 8
  %21 = load float, float* %20, align 4
  %22 = load float*, float** %14, align 8
  %23 = load float, float* %22, align 4
  %24 = fsub float %21, %23
  %25 = fmul float %24, 5.000000e-01
  %26 = fadd float %19, %25
  store float %26, float* %17, align 4
  %27 = load float, float* %9, align 4
  %28 = load float, float* %10, align 4
  %29 = load float, float* %11, align 4
  %30 = load float, float* %12, align 4
  %31 = load float, float* %17, align 4
  %32 = call float @bezier(float %27, float %28, float %29, float %30, float %31)
  store float %32, float* %16, align 4
  %33 = load float, float* %13, align 4
  %34 = load float, float* %16, align 4
  %35 = fsub float %33, %34
  %36 = call float @fabs(float %35)
  %37 = fcmp ogt float %36, 0x3F1A36E2E0000000
  br i1 %37, label %38, label %57

38:                                               ; preds = %7
  %39 = load float, float* %16, align 4
  %40 = load float, float* %13, align 4
  %41 = fcmp ogt float %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %38
  %43 = load float, float* %17, align 4
  %44 = load float*, float** %15, align 8
  store float %43, float* %44, align 4
  br label %48

45:                                               ; preds = %38
  %46 = load float, float* %17, align 4
  %47 = load float*, float** %14, align 8
  store float %46, float* %47, align 4
  br label %48

48:                                               ; preds = %45, %42
  %49 = load float, float* %9, align 4
  %50 = load float, float* %10, align 4
  %51 = load float, float* %11, align 4
  %52 = load float, float* %12, align 4
  %53 = load float, float* %13, align 4
  %54 = load float*, float** %14, align 8
  %55 = load float*, float** %15, align 8
  %56 = call float @bez2_time(float %49, float %50, float %51, float %52, float %53, float* %54, float* %55)
  store float %56, float* %8, align 4
  br label %59

57:                                               ; preds = %7
  %58 = load float, float* %17, align 4
  store float %58, float* %8, align 4
  br label %59

59:                                               ; preds = %57, %48
  %60 = load float, float* %8, align 4
  ret float %60
}

declare dso_local float @bezier(float, float, float, float, float) #1

declare dso_local float @fabs(float) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
