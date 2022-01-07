; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_pm_power_notifier.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_pm-cps.c_cps_pm_power_notifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.notifier_block = type { i32 }

@CPC_Cx_STAT_CONF_EJTAG_PROBE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"JTAG probe is connected - abort suspend\0A\00", align 1
@NOTIFY_BAD = common dso_local global i32 0, align 4
@NOTIFY_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.notifier_block*, i64, i8*)* @cps_pm_power_notifier to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cps_pm_power_notifier(%struct.notifier_block* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.notifier_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.notifier_block* %0, %struct.notifier_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  %9 = load i64, i64* %6, align 8
  switch i64 %9, label %21 [
    i64 128, label %10
  ]

10:                                               ; preds = %3
  %11 = call i32 (...) @read_cpc_cl_stat_conf()
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @CPC_Cx_STAT_CONF_EJTAG_PROBE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = call i32 @pr_warn(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @NOTIFY_BAD, align 4
  store i32 %18, i32* %4, align 4
  br label %23

19:                                               ; preds = %10
  %20 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %20, i32* %4, align 4
  br label %23

21:                                               ; preds = %3
  %22 = load i32, i32* @NOTIFY_DONE, align 4
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %21, %19, %16
  %24 = load i32, i32* %4, align 4
  ret i32 %24
}

declare dso_local i32 @read_cpc_cl_stat_conf(...) #1

declare dso_local i32 @pr_warn(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
