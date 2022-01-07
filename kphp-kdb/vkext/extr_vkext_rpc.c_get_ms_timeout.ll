; ModuleID = '/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_get_ms_timeout.c'
source_filename = "/home/carl/AnghaBench/kphp-kdb/vkext/extr_vkext_rpc.c_get_ms_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@precise_now = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (double)* @get_ms_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ms_timeout(double %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  store double %0, double* %3, align 8
  %4 = load double, double* %3, align 8
  %5 = fcmp oeq double %4, 0.000000e+00
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

7:                                                ; preds = %1
  %8 = load double, double* %3, align 8
  %9 = fcmp olt double %8, 0.000000e+00
  br i1 %9, label %13, label %10

10:                                               ; preds = %7
  %11 = load double, double* %3, align 8
  %12 = fcmp oge double %11, 1.000000e+100
  br i1 %12, label %13, label %14

13:                                               ; preds = %10, %7
  store i32 -1, i32* %2, align 4
  br label %27

14:                                               ; preds = %10
  %15 = call i32 (...) @update_precise_now()
  %16 = load i64, i64* @precise_now, align 8
  %17 = sitofp i64 %16 to double
  %18 = load double, double* %3, align 8
  %19 = fsub double %18, %17
  store double %19, double* %3, align 8
  %20 = load double, double* %3, align 8
  %21 = fcmp olt double %20, 0.000000e+00
  br i1 %21, label %22, label %23

22:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %27

23:                                               ; preds = %14
  %24 = load double, double* %3, align 8
  %25 = fmul double %24, 1.000000e+03
  %26 = fptosi double %25 to i32
  store i32 %26, i32* %2, align 4
  br label %27

27:                                               ; preds = %23, %22, %13, %6
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @update_precise_now(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
