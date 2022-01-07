; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_rtas_event_scan.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_rtasd.c_rtas_event_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }

@cpu_online_mask = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@first_pass = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@rtas_event_scan_rate = common dso_local global i32 0, align 4
@event_scan_delay = common dso_local global i32 0, align 4
@surveillance_timeout = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"rtasd: enabling surveillance\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"rtasd: surveillance enabled\0A\00", align 1
@event_scan_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @rtas_event_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtas_event_scan(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %4 = call i32 (...) @do_event_scan()
  %5 = call i32 (...) @get_online_cpus()
  %6 = call i32 (...) @raw_smp_processor_id()
  %7 = load i32, i32* @cpu_online_mask, align 4
  %8 = call i32 @cpumask_next(i32 %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = load i32, i32* @nr_cpu_ids, align 4
  %11 = icmp uge i32 %9, %10
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load i32, i32* @cpu_online_mask, align 4
  %14 = call i32 @cpumask_first(i32 %13)
  store i32 %14, i32* %3, align 4
  %15 = load i64, i64* @first_pass, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %30

17:                                               ; preds = %12
  store i64 0, i64* @first_pass, align 8
  %18 = load i32, i32* @HZ, align 4
  %19 = mul nsw i32 30, %18
  %20 = load i32, i32* @rtas_event_scan_rate, align 4
  %21 = sdiv i32 %19, %20
  store i32 %21, i32* @event_scan_delay, align 4
  %22 = load i32, i32* @surveillance_timeout, align 4
  %23 = icmp ne i32 %22, -1
  br i1 %23, label %24, label %29

24:                                               ; preds = %17
  %25 = call i32 @pr_debug(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @surveillance_timeout, align 4
  %27 = call i32 @enable_surveillance(i32 %26)
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %24, %17
  br label %30

30:                                               ; preds = %29, %12
  br label %31

31:                                               ; preds = %30, %1
  %32 = load i32, i32* %3, align 4
  %33 = load i32, i32* @event_scan_delay, align 4
  %34 = load i32, i32* %3, align 4
  %35 = call i32 @__round_jiffies_relative(i32 %33, i32 %34)
  %36 = call i32 @schedule_delayed_work_on(i32 %32, i32* @event_scan_work, i32 %35)
  %37 = call i32 (...) @put_online_cpus()
  ret void
}

declare dso_local i32 @do_event_scan(...) #1

declare dso_local i32 @get_online_cpus(...) #1

declare dso_local i32 @cpumask_next(i32, i32) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpumask_first(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @enable_surveillance(i32) #1

declare dso_local i32 @schedule_delayed_work_on(i32, i32*, i32) #1

declare dso_local i32 @__round_jiffies_relative(i32, i32) #1

declare dso_local i32 @put_online_cpus(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
