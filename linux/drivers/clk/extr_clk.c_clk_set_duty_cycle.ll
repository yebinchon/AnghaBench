; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_duty_cycle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_duty_cycle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64 }
%struct.clk_duty = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_duty_cycle(%struct.clk* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.clk*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.clk_duty, align 4
  store %struct.clk* %0, %struct.clk** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.clk*, %struct.clk** %5, align 8
  %11 = icmp ne %struct.clk* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %55

13:                                               ; preds = %3
  %14 = load i32, i32* %7, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp ugt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %13
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %4, align 4
  br label %55

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %9, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load i32, i32* %7, align 4
  %27 = getelementptr inbounds %struct.clk_duty, %struct.clk_duty* %9, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = call i32 (...) @clk_prepare_lock()
  %29 = load %struct.clk*, %struct.clk** %5, align 8
  %30 = getelementptr inbounds %struct.clk, %struct.clk* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %23
  %34 = load %struct.clk*, %struct.clk** %5, align 8
  %35 = getelementptr inbounds %struct.clk, %struct.clk* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @clk_core_rate_unprotect(i32 %36)
  br label %38

38:                                               ; preds = %33, %23
  %39 = load %struct.clk*, %struct.clk** %5, align 8
  %40 = getelementptr inbounds %struct.clk, %struct.clk* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @clk_core_set_duty_cycle_nolock(i32 %41, %struct.clk_duty* %9)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.clk*, %struct.clk** %5, align 8
  %44 = getelementptr inbounds %struct.clk, %struct.clk* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %38
  %48 = load %struct.clk*, %struct.clk** %5, align 8
  %49 = getelementptr inbounds %struct.clk, %struct.clk* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @clk_core_rate_protect(i32 %50)
  br label %52

52:                                               ; preds = %47, %38
  %53 = call i32 (...) @clk_prepare_unlock()
  %54 = load i32, i32* %8, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %52, %20, %12
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @clk_core_rate_unprotect(i32) #1

declare dso_local i32 @clk_core_set_duty_cycle_nolock(i32, %struct.clk_duty*) #1

declare dso_local i32 @clk_core_rate_protect(i32) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
