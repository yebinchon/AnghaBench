; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_store_threshold_limit.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_store_threshold_limit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threshold_block = type { i64, i32 }
%struct.thresh_restart = type { i64, %struct.threshold_block* }

@EINVAL = common dso_local global i64 0, align 8
@THRESHOLD_MAX = common dso_local global i64 0, align 8
@threshold_restart_bank = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.threshold_block*, i8*, i64)* @store_threshold_limit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_threshold_limit(%struct.threshold_block* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.threshold_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.thresh_restart, align 8
  %9 = alloca i64, align 8
  store %struct.threshold_block* %0, %struct.threshold_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = call i64 @kstrtoul(i8* %10, i32 0, i64* %9)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i64, i64* @EINVAL, align 8
  %15 = sub i64 0, %14
  store i64 %15, i64* %4, align 8
  br label %43

16:                                               ; preds = %3
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @THRESHOLD_MAX, align 8
  %19 = icmp ugt i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = load i64, i64* @THRESHOLD_MAX, align 8
  store i64 %21, i64* %9, align 8
  br label %22

22:                                               ; preds = %20, %16
  %23 = load i64, i64* %9, align 8
  %24 = icmp ult i64 %23, 1
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i64 1, i64* %9, align 8
  br label %26

26:                                               ; preds = %25, %22
  %27 = call i32 @memset(%struct.thresh_restart* %8, i32 0, i32 16)
  %28 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %29 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %8, i32 0, i32 0
  store i64 %30, i64* %31, align 8
  %32 = load i64, i64* %9, align 8
  %33 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %34 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %33, i32 0, i32 0
  store i64 %32, i64* %34, align 8
  %35 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %36 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %8, i32 0, i32 1
  store %struct.threshold_block* %35, %struct.threshold_block** %36, align 8
  %37 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %38 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @threshold_restart_bank, align 4
  %41 = call i32 @smp_call_function_single(i32 %39, i32 %40, %struct.thresh_restart* %8, i32 1)
  %42 = load i64, i64* %7, align 8
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %26, %13
  %44 = load i64, i64* %4, align 8
  ret i64 %44
}

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @memset(%struct.thresh_restart*, i32, i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.thresh_restart*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
