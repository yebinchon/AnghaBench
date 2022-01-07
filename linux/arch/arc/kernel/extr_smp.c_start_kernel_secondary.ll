; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c_start_kernel_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/kernel/extr_smp.c_start_kernel_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_6__ = type { %struct.mm_struct* }
%struct.TYPE_4__ = type { i32 (i32)* }
%struct.TYPE_5__ = type { i32 (i32)* }

@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@plat_smp_ops = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@machine_desc = common dso_local global %struct.TYPE_5__* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"## CPU%u LIVE ##: Executing Code...\0A\00", align 1
@CPUHP_AP_ONLINE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_kernel_secondary() #0 {
  %1 = alloca %struct.mm_struct*, align 8
  %2 = alloca i32, align 4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %1, align 8
  %3 = call i32 (...) @smp_processor_id()
  store i32 %3, i32* %2, align 4
  %4 = call i32 (...) @setup_processor()
  %5 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %6 = call i32 @mmget(%struct.mm_struct* %5)
  %7 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %8 = call i32 @mmgrab(%struct.mm_struct* %7)
  %9 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  store %struct.mm_struct* %9, %struct.mm_struct** %11, align 8
  %12 = load i32, i32* %2, align 4
  %13 = load %struct.mm_struct*, %struct.mm_struct** %1, align 8
  %14 = call i32 @mm_cpumask(%struct.mm_struct* %13)
  %15 = call i32 @cpumask_set_cpu(i32 %12, i32 %14)
  %16 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @plat_smp_ops, i32 0, i32 0), align 8
  %17 = icmp ne i32 (i32)* %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %0
  %19 = load i32 (i32)*, i32 (i32)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @plat_smp_ops, i32 0, i32 0), align 8
  %20 = load i32, i32* %2, align 4
  %21 = call i32 %19(i32 %20)
  br label %22

22:                                               ; preds = %18, %0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @machine_desc, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = icmp ne i32 (i32)* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %22
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @machine_desc, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (i32)*, i32 (i32)** %29, align 8
  %31 = load i32, i32* %2, align 4
  %32 = call i32 %30(i32 %31)
  br label %33

33:                                               ; preds = %27, %22
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @notify_cpu_starting(i32 %34)
  %36 = load i32, i32* %2, align 4
  %37 = call i32 @set_cpu_online(i32 %36, i32 1)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = call i32 (...) @local_irq_enable()
  %41 = call i32 (...) @preempt_disable()
  %42 = load i32, i32* @CPUHP_AP_ONLINE_IDLE, align 4
  %43 = call i32 @cpu_startup_entry(i32 %42)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @setup_processor(...) #1

declare dso_local i32 @mmget(%struct.mm_struct*) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @cpu_startup_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
