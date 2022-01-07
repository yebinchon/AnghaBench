; ModuleID = '/home/carl/AnghaBench/jerryscript/targets/mbedos5/source/extr_jerry_port_mbed.c_jerry_port_get_current_time.c'
source_filename = "/home/carl/AnghaBench/jerryscript/targets/mbedos5/source/extr_jerry_port_mbed.c_jerry_port_get_current_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@jerry_port_get_current_time.last_tick = internal global i32 0, align 4
@jerry_port_get_current_time.last_time = internal global i32 0, align 4
@jerry_port_get_current_time.skew = internal global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local double @jerry_port_get_current_time() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca double, align 8
  %4 = call i32 (...) @us_ticker_read()
  store i32 %4, i32* %1, align 4
  %5 = call i32 @time(i32* null)
  store i32 %5, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = mul nsw i32 %6, 1000
  %8 = sitofp i32 %7 to double
  store double %8, double* %3, align 8
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @jerry_port_get_current_time.last_time, align 4
  %11 = sub nsw i32 %9, %10
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %0
  store i32 0, i32* @jerry_port_get_current_time.skew, align 4
  br label %23

14:                                               ; preds = %0
  %15 = load i32, i32* @jerry_port_get_current_time.last_tick, align 4
  %16 = load i32, i32* %1, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* @jerry_port_get_current_time.skew, align 4
  %20 = add nsw i32 %19, 33
  %21 = srem i32 %20, 1000
  store i32 %21, i32* @jerry_port_get_current_time.skew, align 4
  br label %22

22:                                               ; preds = %18, %14
  br label %23

23:                                               ; preds = %22, %13
  %24 = load i32, i32* %1, align 4
  %25 = sdiv i32 %24, 1000
  %26 = load i32, i32* @jerry_port_get_current_time.skew, align 4
  %27 = sub nsw i32 %25, %26
  %28 = srem i32 %27, 1000
  %29 = sitofp i32 %28 to double
  %30 = load double, double* %3, align 8
  %31 = fadd double %30, %29
  store double %31, double* %3, align 8
  %32 = load i32, i32* %1, align 4
  store i32 %32, i32* @jerry_port_get_current_time.last_tick, align 4
  %33 = load i32, i32* %2, align 4
  store i32 %33, i32* @jerry_port_get_current_time.last_time, align 4
  %34 = load double, double* %3, align 8
  ret double %34
}

declare dso_local i32 @us_ticker_read(...) #1

declare dso_local i32 @time(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
