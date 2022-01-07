; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_storm_detect.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_intel.c_cmci_storm_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmci_storm_cnt = common dso_local global i32 0, align 4
@cmci_time_stamp = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@cmci_storm_state = common dso_local global i32 0, align 4
@CMCI_STORM_NONE = common dso_local global i8* null, align 8
@CMCI_STORM_INTERVAL = common dso_local global i64 0, align 8
@CMCI_STORM_THRESHOLD = common dso_local global i32 0, align 4
@CMCI_STORM_ACTIVE = common dso_local global i32 0, align 4
@cmci_storm_on_cpus = common dso_local global i32 0, align 4
@cmci_backoff_cnt = common dso_local global i32 0, align 4
@INITIAL_CHECK_INTERVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"CMCI storm detected: switching to poll mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @cmci_storm_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmci_storm_detect() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = load i32, i32* @cmci_storm_cnt, align 4
  %7 = call i8* @__this_cpu_read(i32 %6)
  %8 = ptrtoint i8* %7 to i32
  store i32 %8, i32* %2, align 4
  %9 = load i32, i32* @cmci_time_stamp, align 4
  %10 = call i8* @__this_cpu_read(i32 %9)
  %11 = ptrtoint i8* %10 to i64
  store i64 %11, i64* %3, align 8
  %12 = load i64, i64* @jiffies, align 8
  store i64 %12, i64* %4, align 8
  %13 = load i32, i32* @cmci_storm_state, align 4
  %14 = call i8* @__this_cpu_read(i32 %13)
  %15 = load i8*, i8** @CMCI_STORM_NONE, align 8
  %16 = icmp ne i8* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %0
  store i32 1, i32* %1, align 4
  br label %57

18:                                               ; preds = %0
  %19 = load i64, i64* %4, align 8
  %20 = load i64, i64* %3, align 8
  %21 = load i64, i64* @CMCI_STORM_INTERVAL, align 8
  %22 = add i64 %20, %21
  %23 = call i64 @time_before_eq(i64 %19, i64 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %2, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %2, align 4
  br label %33

28:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  %29 = load i32, i32* @cmci_time_stamp, align 4
  %30 = load i64, i64* %4, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i32 @__this_cpu_write(i32 %29, i32 %31)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load i32, i32* @cmci_storm_cnt, align 4
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @__this_cpu_write(i32 %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @CMCI_STORM_THRESHOLD, align 4
  %39 = icmp ule i32 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  store i32 0, i32* %1, align 4
  br label %57

41:                                               ; preds = %33
  %42 = call i32 @cmci_toggle_interrupt_mode(i32 0)
  %43 = load i32, i32* @cmci_storm_state, align 4
  %44 = load i32, i32* @CMCI_STORM_ACTIVE, align 4
  %45 = call i32 @__this_cpu_write(i32 %43, i32 %44)
  %46 = call i32 @atomic_add_return(i32 1, i32* @cmci_storm_on_cpus)
  store i32 %46, i32* %5, align 4
  %47 = load i64, i64* @CMCI_STORM_INTERVAL, align 8
  %48 = call i32 @mce_timer_kick(i64 %47)
  %49 = load i32, i32* @cmci_backoff_cnt, align 4
  %50 = load i32, i32* @INITIAL_CHECK_INTERVAL, align 4
  %51 = call i32 @this_cpu_write(i32 %49, i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %41
  %55 = call i32 @pr_notice(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  br label %56

56:                                               ; preds = %54, %41
  store i32 1, i32* %1, align 4
  br label %57

57:                                               ; preds = %56, %40, %17
  %58 = load i32, i32* %1, align 4
  ret i32 %58
}

declare dso_local i8* @__this_cpu_read(i32) #1

declare dso_local i64 @time_before_eq(i64, i64) #1

declare dso_local i32 @__this_cpu_write(i32, i32) #1

declare dso_local i32 @cmci_toggle_interrupt_mode(i32) #1

declare dso_local i32 @atomic_add_return(i32, i32*) #1

declare dso_local i32 @mce_timer_kick(i64) #1

declare dso_local i32 @this_cpu_write(i32, i32) #1

declare dso_local i32 @pr_notice(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
