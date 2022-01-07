; ModuleID = '/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c_secondary_start_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/openrisc/kernel/extr_smp.c_secondary_start_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_2__ = type { %struct.mm_struct* }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_2__* null, align 8
@.str = private unnamed_addr constant [35 x i8] c"CPU%u: Booted secondary processor\0A\00", align 1
@cpu_running = common dso_local global i32 0, align 4
@CPUHP_AP_ONLINE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @secondary_start_kernel() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca i32, align 4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %1, align 8
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %5 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %4, i32 0, i32 0
  %6 = call i32 @atomic_inc(i32* %5)
  %7 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  store %struct.mm_struct* %7, %struct.mm_struct** %9, align 8
  %10 = load i32, i32* %2, align 4
  %11 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %12 = call i32 @mm_cpumask(%struct.mm_struct* %11)
  %13 = call i32 @cpumask_set_cpu(i32 %10, i32 %12)
  %14 = load i32, i32* %2, align 4
  %15 = call i32 @pr_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %14)
  %16 = call i32 (...) @setup_cpuinfo()
  %17 = call i32 (...) @openrisc_clockevent_init()
  %18 = load i32, i32* %2, align 4
  %19 = call i32 @notify_cpu_starting(i32 %18)
  %20 = call i32 @complete(i32* @cpu_running)
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @synchronise_count_slave(i32 %21)
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @set_cpu_online(i32 %23, i32 1)
  %25 = call i32 (...) @local_irq_enable()
  %26 = call i32 (...) @preempt_disable()
  %27 = load i32, i32* @CPUHP_AP_ONLINE_IDLE, align 4
  %28 = call i32 @cpu_startup_entry(i32 %27)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @setup_cpuinfo(...) #1

declare dso_local i32 @openrisc_clockevent_init(...) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @synchronise_count_slave(i32) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_startup_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
