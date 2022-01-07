; ModuleID = '/home/carl/AnghaBench/i3/libi3/extr_dpi.c_logical_px.c'
source_filename = "/home/carl/AnghaBench/i3/libi3/extr_dpi.c_logical_px.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@root_screen = common dso_local global i32* null, align 8
@dpi = common dso_local global double 0.000000e+00, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @logical_px(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32*, i32** @root_screen, align 8
  %5 = icmp eq i32* %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %2, align 4
  br label %21

8:                                                ; preds = %1
  %9 = load double, double* @dpi, align 8
  %10 = fdiv double %9, 9.600000e+01
  %11 = fcmp olt double %10, 1.250000e+00
  br i1 %11, label %12, label %14

12:                                               ; preds = %8
  %13 = load i32, i32* %3, align 4
  store i32 %13, i32* %2, align 4
  br label %21

14:                                               ; preds = %8
  %15 = load double, double* @dpi, align 8
  %16 = fdiv double %15, 9.600000e+01
  %17 = load i32, i32* %3, align 4
  %18 = sitofp i32 %17 to double
  %19 = fmul double %16, %18
  %20 = call i32 @ceil(double %19)
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %14, %12, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @ceil(double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
