; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_flush_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/kernel/cpu/sh4/extr_sq.c_sq_flush_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sq_flush_range(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to i64*
  store i64* %7, i64** %5, align 8
  %8 = load i32, i32* %4, align 4
  %9 = lshr i32 %8, 5
  store i32 %9, i32* %4, align 4
  br label %10

10:                                               ; preds = %17, %2
  %11 = load i32, i32* %4, align 4
  %12 = add i32 %11, -1
  store i32 %12, i32* %4, align 4
  %13 = icmp ne i32 %11, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i64*, i64** %5, align 8
  %16 = call i32 (i64*, ...) bitcast (i32 (...)* @prefetchw to i32 (i64*, ...)*)(i64* %15)
  br label %17

17:                                               ; preds = %14
  %18 = load i64*, i64** %5, align 8
  %19 = getelementptr inbounds i64, i64* %18, i64 8
  store i64* %19, i64** %5, align 8
  br label %10

20:                                               ; preds = %10
  %21 = call i32 (...) @store_queue_barrier()
  ret void
}

declare dso_local i32 @prefetchw(...) #1

declare dso_local i32 @store_queue_barrier(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
