; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_timer_fn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/mce/extr_core.c_mce_timer_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timer_list = type { i32 }

@mce_timer = common dso_local global i32 0, align 4
@mce_next_interval = common dso_local global i32 0, align 4
@cpu_info = common dso_local global i32 0, align 4
@mce_poll_banks = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@check_interval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @mce_timer_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mce_timer_fn(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.timer_list*, align 8
  %4 = alloca i64, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = call %struct.timer_list* @this_cpu_ptr(i32* @mce_timer)
  store %struct.timer_list* %5, %struct.timer_list** %3, align 8
  %6 = load %struct.timer_list*, %struct.timer_list** %3, align 8
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = icmp ne %struct.timer_list* %6, %7
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load i32, i32* @mce_next_interval, align 4
  %12 = call i64 @__this_cpu_read(i32 %11)
  store i64 %12, i64* %4, align 8
  %13 = call %struct.timer_list* @this_cpu_ptr(i32* @cpu_info)
  %14 = call i64 @mce_available(%struct.timer_list* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %1
  %17 = call %struct.timer_list* @this_cpu_ptr(i32* @mce_poll_banks)
  %18 = call i32 @machine_check_poll(i32 0, %struct.timer_list* %17)
  %19 = call i64 (...) @mce_intel_cmci_poll()
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load i64, i64* %4, align 8
  %23 = call i64 @mce_adjust_timer(i64 %22)
  store i64 %23, i64* %4, align 8
  br label %44

24:                                               ; preds = %16
  br label %25

25:                                               ; preds = %24, %1
  %26 = call i64 (...) @mce_notify_irq()
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %25
  %29 = load i64, i64* %4, align 8
  %30 = udiv i64 %29, 2
  %31 = load i32, i32* @HZ, align 4
  %32 = sext i32 %31 to i64
  %33 = udiv i64 %32, 100
  %34 = call i64 @max(i64 %30, i64 %33)
  store i64 %34, i64* %4, align 8
  br label %43

35:                                               ; preds = %25
  %36 = load i64, i64* %4, align 8
  %37 = mul i64 %36, 2
  %38 = load i32, i32* @check_interval, align 4
  %39 = load i32, i32* @HZ, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @round_jiffies_relative(i32 %40)
  %42 = call i64 @min(i64 %37, i32 %41)
  store i64 %42, i64* %4, align 8
  br label %43

43:                                               ; preds = %35, %28
  br label %44

44:                                               ; preds = %43, %21
  %45 = load i32, i32* @mce_next_interval, align 4
  %46 = load i64, i64* %4, align 8
  %47 = call i32 @__this_cpu_write(i32 %45, i64 %46)
  %48 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %49 = load i64, i64* %4, align 8
  %50 = call i32 @__start_timer(%struct.timer_list* %48, i64 %49)
  ret void
}

declare dso_local %struct.timer_list* @this_cpu_ptr(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i64 @__this_cpu_read(i32) #1

declare dso_local i64 @mce_available(%struct.timer_list*) #1

declare dso_local i32 @machine_check_poll(i32, %struct.timer_list*) #1

declare dso_local i64 @mce_intel_cmci_poll(...) #1

declare dso_local i64 @mce_adjust_timer(i64) #1

declare dso_local i64 @mce_notify_irq(...) #1

declare dso_local i64 @max(i64, i64) #1

declare dso_local i64 @min(i64, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @__this_cpu_write(i32, i64) #1

declare dso_local i32 @__start_timer(%struct.timer_list*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
