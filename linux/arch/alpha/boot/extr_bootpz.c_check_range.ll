; ModuleID = '/home/carl/AnghaBench/linux/arch/alpha/boot/extr_bootpz.c_check_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/alpha/boot/extr_bootpz.c_check_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PAGE_OFFSET = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @check_range(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  store i64 %12, i64* %10, align 8
  br label %13

13:                                               ; preds = %31, %4
  %14 = load i64, i64* %10, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp ule i64 %14, %15
  br i1 %16, label %17, label %35

17:                                               ; preds = %13
  %18 = load i64, i64* %10, align 8
  %19 = call i64 @find_pa(i64 %18)
  %20 = load i64, i64* @PAGE_OFFSET, align 8
  %21 = or i64 %19, %20
  store i64 %21, i64* %11, align 8
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* %8, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %17
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* %9, align 8
  %28 = icmp ule i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 1, i32* %5, align 4
  br label %36

30:                                               ; preds = %25, %17
  br label %31

31:                                               ; preds = %30
  %32 = load i64, i64* @PAGE_SIZE, align 8
  %33 = load i64, i64* %10, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %10, align 8
  br label %13

35:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %36

36:                                               ; preds = %35, %29
  %37 = load i32, i32* %5, align 4
  ret i32 %37
}

declare dso_local i64 @find_pa(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
