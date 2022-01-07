; ModuleID = '/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_rate_exclusive_put.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/clk/extr_clk.c_clk_rate_exclusive_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.clk = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clk_rate_exclusive_put(%struct.clk* %0) #0 {
  %2 = alloca %struct.clk*, align 8
  store %struct.clk* %0, %struct.clk** %2, align 8
  %3 = load %struct.clk*, %struct.clk** %2, align 8
  %4 = icmp ne %struct.clk* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %27

6:                                                ; preds = %1
  %7 = call i32 (...) @clk_prepare_lock()
  %8 = load %struct.clk*, %struct.clk** %2, align 8
  %9 = getelementptr inbounds %struct.clk, %struct.clk* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i64 @WARN_ON(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %6
  br label %25

16:                                               ; preds = %6
  %17 = load %struct.clk*, %struct.clk** %2, align 8
  %18 = getelementptr inbounds %struct.clk, %struct.clk* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @clk_core_rate_unprotect(i32 %19)
  %21 = load %struct.clk*, %struct.clk** %2, align 8
  %22 = getelementptr inbounds %struct.clk, %struct.clk* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %23, -1
  store i64 %24, i64* %22, align 8
  br label %25

25:                                               ; preds = %16, %15
  %26 = call i32 (...) @clk_prepare_unlock()
  br label %27

27:                                               ; preds = %25, %5
  ret void
}

declare dso_local i32 @clk_prepare_lock(...) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @clk_core_rate_unprotect(i32) #1

declare dso_local i32 @clk_prepare_unlock(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
