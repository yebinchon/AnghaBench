; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_phase.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_set_phase.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clk_set_phase(%struct.clk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.clk* %0, %struct.clk** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.clk*, %struct.clk** %4, align 8
  %8 = icmp ne %struct.clk* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  store i32 0, i32* %3, align 4
  br label %47

10:                                               ; preds = %2
  %11 = load i32, i32* %5, align 4
  %12 = srem i32 %11, 360
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %16, 360
  store i32 %17, i32* %5, align 4
  br label %18

18:                                               ; preds = %15, %10
  %19 = call i32 (...) @clk_prepare_lock()
  %20 = load %struct.clk*, %struct.clk** %4, align 8
  %21 = getelementptr inbounds %struct.clk, %struct.clk* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %18
  %25 = load %struct.clk*, %struct.clk** %4, align 8
  %26 = getelementptr inbounds %struct.clk, %struct.clk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @clk_core_rate_unprotect(i32 %27)
  br label %29

29:                                               ; preds = %24, %18
  %30 = load %struct.clk*, %struct.clk** %4, align 8
  %31 = getelementptr inbounds %struct.clk, %struct.clk* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @clk_core_set_phase_nolock(i32 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load %struct.clk*, %struct.clk** %4, align 8
  %36 = getelementptr inbounds %struct.clk, %struct.clk* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %29
  %40 = load %struct.clk*, %struct.clk** %4, align 8
  %41 = getelementptr inbounds %struct.clk, %struct.clk* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @clk_core_rate_protect(i32 %42)
  br label %44

44:                                               ; preds = %39, %29
  %45 = call i32 (...) @clk_prepare_unlock()
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %44, %9
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i32 @clk_core_rate_unprotect(i32) #1

declare dso_local i32 @clk_core_set_phase_nolock(i32, i32) #1

declare dso_local i32 @clk_core_rate_protect(i32) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
