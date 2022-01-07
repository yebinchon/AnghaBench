; ModuleID = '/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_pentium_core_get_frequency.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/cpufreq/extr_speedstep-lib.c_pentium_core_get_frequency.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSR_FSB_FREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"PCORE - MSR_FSB_FREQ undefined value\0A\00", align 1
@MSR_IA32_EBL_CR_POWERON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"PCORE - MSR_IA32_EBL_CR_POWERON: 0x%x 0x%x\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"bits 22-26 are 0x%x, speed is %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @pentium_core_get_frequency to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pentium_core_get_frequency() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %5 = load i32, i32* @MSR_FSB_FREQ, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @rdmsr(i32 %5, i32 %6, i32 %7)
  %9 = load i32, i32* %2, align 4
  %10 = and i32 %9, 7
  switch i32 %10, label %17 [
    i32 5, label %11
    i32 1, label %12
    i32 3, label %13
    i32 2, label %14
    i32 0, label %15
    i32 4, label %16
  ]

11:                                               ; preds = %0
  store i32 100000, i32* %1, align 4
  br label %19

12:                                               ; preds = %0
  store i32 133333, i32* %1, align 4
  br label %19

13:                                               ; preds = %0
  store i32 166667, i32* %1, align 4
  br label %19

14:                                               ; preds = %0
  store i32 200000, i32* %1, align 4
  br label %19

15:                                               ; preds = %0
  store i32 266667, i32* %1, align 4
  br label %19

16:                                               ; preds = %0
  store i32 333333, i32* %1, align 4
  br label %19

17:                                               ; preds = %0
  %18 = call i32 @pr_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %17, %16, %15, %14, %13, %12, %11
  %20 = load i32, i32* @MSR_IA32_EBL_CR_POWERON, align 4
  %21 = load i32, i32* %2, align 4
  %22 = load i32, i32* %3, align 4
  %23 = call i32 @rdmsr(i32 %20, i32 %21, i32 %22)
  %24 = load i32, i32* %2, align 4
  %25 = load i32, i32* %3, align 4
  %26 = call i32 @pr_debug(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* %2, align 4
  %28 = ashr i32 %27, 22
  %29 = and i32 %28, 31
  store i32 %29, i32* %3, align 4
  %30 = load i32, i32* %3, align 4
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %1, align 4
  %33 = mul nsw i32 %31, %32
  %34 = call i32 @pr_debug(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %30, i32 %33)
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %1, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %4, align 4
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i32 @rdmsr(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
