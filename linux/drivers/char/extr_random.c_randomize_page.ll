; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_random.c_randomize_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_random.c_randomize_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ULONG_MAX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @randomize_page(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %6 = load i64, i64* %4, align 8
  %7 = call i32 @PAGE_ALIGNED(i64 %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %18, label %9

9:                                                ; preds = %2
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @PAGE_ALIGN(i64 %10)
  %12 = load i64, i64* %4, align 8
  %13 = sub i64 %11, %12
  %14 = load i64, i64* %5, align 8
  %15 = sub i64 %14, %13
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @PAGE_ALIGN(i64 %16)
  store i64 %17, i64* %4, align 8
  br label %18

18:                                               ; preds = %9, %2
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* @ULONG_MAX, align 8
  %21 = load i64, i64* %5, align 8
  %22 = sub i64 %20, %21
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load i64, i64* @ULONG_MAX, align 8
  %26 = load i64, i64* %4, align 8
  %27 = sub i64 %25, %26
  store i64 %27, i64* %5, align 8
  br label %28

28:                                               ; preds = %24, %18
  %29 = load i64, i64* @PAGE_SHIFT, align 8
  %30 = load i64, i64* %5, align 8
  %31 = lshr i64 %30, %29
  store i64 %31, i64* %5, align 8
  %32 = load i64, i64* %5, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %28
  %35 = load i64, i64* %4, align 8
  store i64 %35, i64* %3, align 8
  br label %44

36:                                               ; preds = %28
  %37 = load i64, i64* %4, align 8
  %38 = call i64 (...) @get_random_long()
  %39 = load i64, i64* %5, align 8
  %40 = urem i64 %38, %39
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = add i64 %37, %42
  store i64 %43, i64* %3, align 8
  br label %44

44:                                               ; preds = %36, %34
  %45 = load i64, i64* %3, align 8
  ret i64 %45
}

declare dso_local i32 @PAGE_ALIGNED(i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local i64 @get_random_long(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
