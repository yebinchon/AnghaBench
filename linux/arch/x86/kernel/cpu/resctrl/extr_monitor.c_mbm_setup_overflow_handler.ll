; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_setup_overflow_handler.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/cpu/resctrl/extr_monitor.c_mbm_setup_overflow_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rdt_domain = type { i32, i32, i32 }

@rdt_enable_key = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mbm_setup_overflow_handler(%struct.rdt_domain* %0, i64 %1) #0 {
  %3 = alloca %struct.rdt_domain*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.rdt_domain* %0, %struct.rdt_domain** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @msecs_to_jiffies(i64 %7)
  store i64 %8, i64* %5, align 8
  %9 = call i32 @static_branch_likely(i32* @rdt_enable_key)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  br label %24

12:                                               ; preds = %2
  %13 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %14 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %13, i32 0, i32 2
  %15 = call i32 @cpumask_any(i32* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %18 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.rdt_domain*, %struct.rdt_domain** %3, align 8
  %21 = getelementptr inbounds %struct.rdt_domain, %struct.rdt_domain* %20, i32 0, i32 1
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @schedule_delayed_work_on(i32 %19, i32* %21, i64 %22)
  br label %24

24:                                               ; preds = %12, %11
  ret void
}

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i32 @static_branch_likely(i32*) #1

declare dso_local i32 @cpumask_any(i32*) #1

declare dso_local i32 @schedule_delayed_work_on(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
