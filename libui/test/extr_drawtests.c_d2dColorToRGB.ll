; ModuleID = '/home/carl/AnghaBench/libui/test/extr_drawtests.c_d2dColorToRGB.c'
source_filename = "/home/carl/AnghaBench/libui/test/extr_drawtests.c_d2dColorToRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, double*, double*, double*)* @d2dColorToRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @d2dColorToRGB(i32 %0, double* %1, double* %2, double* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca double*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store double* %1, double** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 16711680
  %14 = ashr i32 %13, 16
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %5, align 4
  %16 = and i32 %15, 65280
  %17 = ashr i32 %16, 8
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 255
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %9, align 4
  %21 = sitofp i32 %20 to double
  %22 = fdiv double %21, 2.550000e+02
  %23 = load double*, double** %6, align 8
  store double %22, double* %23, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sitofp i32 %24 to double
  %26 = fdiv double %25, 2.550000e+02
  %27 = load double*, double** %7, align 8
  store double %26, double* %27, align 8
  %28 = load i32, i32* %11, align 4
  %29 = sitofp i32 %28 to double
  %30 = fdiv double %29, 2.550000e+02
  %31 = load double*, double** %8, align 8
  store double %30, double* %31, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
