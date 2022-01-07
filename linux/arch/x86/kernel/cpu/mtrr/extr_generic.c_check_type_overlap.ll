; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_check_type_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mtrr/extr_generic.c_check_type_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MTRR_TYPE_UNCACHABLE = common dso_local global i64 0, align 8
@MTRR_TYPE_WRBACK = common dso_local global i64 0, align 8
@MTRR_TYPE_WRTHROUGH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*)* @check_type_overlap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_type_overlap(i64* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  store i64* %0, i64** %4, align 8
  store i64* %1, i64** %5, align 8
  %6 = load i64*, i64** %4, align 8
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %15, label %10

10:                                               ; preds = %2
  %11 = load i64*, i64** %5, align 8
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %10, %2
  %16 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %17 = load i64*, i64** %4, align 8
  store i64 %16, i64* %17, align 8
  %18 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  store i32 1, i32* %3, align 4
  br label %57

20:                                               ; preds = %10
  %21 = load i64*, i64** %4, align 8
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @MTRR_TYPE_WRBACK, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %20
  %26 = load i64*, i64** %5, align 8
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @MTRR_TYPE_WRTHROUGH, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %25, %20
  %31 = load i64*, i64** %4, align 8
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @MTRR_TYPE_WRTHROUGH, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %45

35:                                               ; preds = %30
  %36 = load i64*, i64** %5, align 8
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MTRR_TYPE_WRBACK, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %35, %25
  %41 = load i64, i64* @MTRR_TYPE_WRTHROUGH, align 8
  %42 = load i64*, i64** %4, align 8
  store i64 %41, i64* %42, align 8
  %43 = load i64, i64* @MTRR_TYPE_WRTHROUGH, align 8
  %44 = load i64*, i64** %5, align 8
  store i64 %43, i64* %44, align 8
  br label %45

45:                                               ; preds = %40, %35, %30
  %46 = load i64*, i64** %4, align 8
  %47 = load i64, i64* %46, align 8
  %48 = load i64*, i64** %5, align 8
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %47, %49
  br i1 %50, label %51, label %56

51:                                               ; preds = %45
  %52 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %53 = load i64*, i64** %4, align 8
  store i64 %52, i64* %53, align 8
  %54 = load i64, i64* @MTRR_TYPE_UNCACHABLE, align 8
  %55 = load i64*, i64** %5, align 8
  store i64 %54, i64* %55, align 8
  store i32 1, i32* %3, align 4
  br label %57

56:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %57

57:                                               ; preds = %56, %51, %15
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
