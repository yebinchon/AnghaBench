; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_get_free_region.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_cyrix.c_cyrix_get_free_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @cyrix_get_free_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cyrix_get_free_region(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  switch i32 %12, label %22 [
    i32 7, label %13
    i32 6, label %18
    i32 5, label %18
    i32 4, label %18
    i32 3, label %20
    i32 2, label %20
    i32 1, label %20
    i32 0, label %20
  ]

13:                                               ; preds = %3
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 64
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  br label %22

17:                                               ; preds = %13
  br label %18

18:                                               ; preds = %3, %3, %3, %17
  %19 = load i32, i32* %7, align 4
  store i32 %19, i32* %4, align 4
  br label %60

20:                                               ; preds = %3, %3, %3, %3
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %4, align 4
  br label %60

22:                                               ; preds = %3, %16
  %23 = load i64, i64* %6, align 8
  %24 = icmp ugt i64 %23, 8192
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call i32 @cyrix_get_arr(i32 7, i64* %8, i64* %9, i32* %10)
  %27 = load i64, i64* %9, align 8
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  store i32 7, i32* %4, align 4
  br label %60

30:                                               ; preds = %25
  br label %57

31:                                               ; preds = %22
  store i32 0, i32* %11, align 4
  br label %32

32:                                               ; preds = %43, %31
  %33 = load i32, i32* %11, align 4
  %34 = icmp slt i32 %33, 7
  br i1 %34, label %35, label %46

35:                                               ; preds = %32
  %36 = load i32, i32* %11, align 4
  %37 = call i32 @cyrix_get_arr(i32 %36, i64* %8, i64* %9, i32* %10)
  %38 = load i64, i64* %9, align 8
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %60

42:                                               ; preds = %35
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load i32, i32* %11, align 4
  %48 = call i32 @cyrix_get_arr(i32 %47, i64* %8, i64* %9, i32* %10)
  %49 = load i64, i64* %9, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load i64, i64* %6, align 8
  %53 = icmp uge i64 %52, 64
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %60

56:                                               ; preds = %51, %46
  br label %57

57:                                               ; preds = %56, %30
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %54, %40, %29, %20, %18
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local i32 @cyrix_get_arr(i32, i64*, i64*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
