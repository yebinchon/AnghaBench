; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_store_interrupt_enable.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_amd.c_store_interrupt_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.threshold_block = type { i32, i32, i32 }
%struct.thresh_restart = type { %struct.threshold_block* }

@EINVAL = common dso_local global i64 0, align 8
@threshold_restart_bank = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.threshold_block*, i8*, i64)* @store_interrupt_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_interrupt_enable(%struct.threshold_block* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.threshold_block*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.thresh_restart, align 8
  %9 = alloca i64, align 8
  store %struct.threshold_block* %0, %struct.threshold_block** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %11 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @EINVAL, align 8
  %16 = sub i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %41

17:                                               ; preds = %3
  %18 = load i8*, i8** %6, align 8
  %19 = call i64 @kstrtoul(i8* %18, i32 0, i64* %9)
  %20 = icmp slt i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load i64, i64* @EINVAL, align 8
  %23 = sub i64 0, %22
  store i64 %23, i64* %4, align 8
  br label %41

24:                                               ; preds = %17
  %25 = load i64, i64* %9, align 8
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  %30 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %31 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = call i32 @memset(%struct.thresh_restart* %8, i32 0, i32 8)
  %33 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %34 = getelementptr inbounds %struct.thresh_restart, %struct.thresh_restart* %8, i32 0, i32 0
  store %struct.threshold_block* %33, %struct.threshold_block** %34, align 8
  %35 = load %struct.threshold_block*, %struct.threshold_block** %5, align 8
  %36 = getelementptr inbounds %struct.threshold_block, %struct.threshold_block* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @threshold_restart_bank, align 4
  %39 = call i32 @smp_call_function_single(i32 %37, i32 %38, %struct.thresh_restart* %8, i32 1)
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %4, align 8
  br label %41

41:                                               ; preds = %24, %21, %14
  %42 = load i64, i64* %4, align 8
  ret i64 %42
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
