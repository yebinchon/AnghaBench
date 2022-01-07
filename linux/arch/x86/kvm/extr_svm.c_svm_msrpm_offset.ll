; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_msrpm_offset.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_msrpm_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NUM_MSR_MAPS = common dso_local global i32 0, align 4
@msrpm_ranges = common dso_local global i64* null, align 8
@MSRS_IN_RANGE = common dso_local global i64 0, align 8
@MSRS_RANGE_SIZE = common dso_local global i32 0, align 4
@MSR_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64)* @svm_msrpm_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @svm_msrpm_offset(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %46, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_MSR_MAPS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %49

10:                                               ; preds = %6
  %11 = load i64, i64* %3, align 8
  %12 = load i64*, i64** @msrpm_ranges, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = icmp slt i64 %11, %16
  br i1 %17, label %28, label %18

18:                                               ; preds = %10
  %19 = load i64, i64* %3, align 8
  %20 = load i64*, i64** @msrpm_ranges, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @MSRS_IN_RANGE, align 8
  %26 = add nsw i64 %24, %25
  %27 = icmp sge i64 %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %18, %10
  br label %46

29:                                               ; preds = %18
  %30 = load i64, i64* %3, align 8
  %31 = load i64*, i64** @msrpm_ranges, align 8
  %32 = load i32, i32* %5, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i64, i64* %31, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %30, %35
  %37 = sdiv i64 %36, 4
  store i64 %37, i64* %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @MSRS_RANGE_SIZE, align 4
  %40 = mul nsw i32 %38, %39
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %4, align 8
  %43 = add nsw i64 %42, %41
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = sdiv i64 %44, 4
  store i64 %45, i64* %2, align 8
  br label %51

46:                                               ; preds = %28
  %47 = load i32, i32* %5, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %5, align 4
  br label %6

49:                                               ; preds = %6
  %50 = load i64, i64* @MSR_INVALID, align 8
  store i64 %50, i64* %2, align 8
  br label %51

51:                                               ; preds = %49, %29
  %52 = load i64, i64* %2, align 8
  ret i64 %52
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
