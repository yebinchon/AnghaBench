; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_secondary_start_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_smp.c_secondary_start_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.TYPE_5__ = type { i32 (...)* }

@MPIDR_HWID_BITMASK = common dso_local global i32 0, align 4
@init_mm = common dso_local global %struct.mm_struct zeroinitializer, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@cpu_ops = common dso_local global %struct.TYPE_5__** null, align 8
@.str = private unnamed_addr constant [53 x i8] c"CPU%u: Booted secondary processor 0x%010lx [0x%08x]\0A\00", align 1
@CPU_BOOT_SUCCESS = common dso_local global i32 0, align 4
@cpu_running = common dso_local global i32 0, align 4
@DAIF_PROCCTX = common dso_local global i32 0, align 4
@CPUHP_AP_ONLINE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @secondary_start_kernel() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = call i32 (...) @read_cpuid_mpidr()
  %5 = load i32, i32* @MPIDR_HWID_BITMASK, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %1, align 4
  store %struct.mm_struct* @init_mm, %struct.mm_struct** %2, align 8
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %8 = call i32 @task_cpu(%struct.TYPE_4__* %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @per_cpu_offset(i32 %9)
  %11 = call i32 @set_my_cpu_offset(i32 %10)
  %12 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %13 = call i32 @mmgrab(%struct.mm_struct* %12)
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  store %struct.mm_struct* %14, %struct.mm_struct** %16, align 8
  %17 = call i32 (...) @cpu_uninstall_idmap()
  %18 = call i64 (...) @system_uses_irq_prio_masking()
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %0
  %21 = call i32 (...) @init_gic_priority_masking()
  br label %22

22:                                               ; preds = %20, %0
  %23 = call i32 (...) @preempt_disable()
  %24 = call i32 (...) @trace_hardirqs_off()
  %25 = call i32 (...) @check_local_cpu_capabilities()
  %26 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_ops, align 8
  %27 = load i32, i32* %3, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %26, i64 %28
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32 (...)*, i32 (...)** %31, align 8
  %33 = icmp ne i32 (...)* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %22
  %35 = load %struct.TYPE_5__**, %struct.TYPE_5__*** @cpu_ops, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %35, i64 %37
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32 (...)*, i32 (...)** %40, align 8
  %42 = call i32 (...) %41()
  br label %43

43:                                               ; preds = %34, %22
  %44 = call i32 (...) @cpuinfo_store_cpu()
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @notify_cpu_starting(i32 %45)
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @store_cpu_topology(i32 %47)
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @numa_add_cpu(i32 %49)
  %51 = load i32, i32* %3, align 4
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = call i32 (...) @read_cpuid_id()
  %55 = call i32 @pr_info(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %51, i64 %53, i32 %54)
  %56 = load i32, i32* @CPU_BOOT_SUCCESS, align 4
  %57 = call i32 @update_cpu_boot_status(i32 %56)
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @set_cpu_online(i32 %58, i32 1)
  %60 = call i32 @complete(i32* @cpu_running)
  %61 = load i32, i32* @DAIF_PROCCTX, align 4
  %62 = call i32 @local_daif_restore(i32 %61)
  %63 = load i32, i32* @CPUHP_AP_ONLINE_IDLE, align 4
  %64 = call i32 @cpu_startup_entry(i32 %63)
  ret void
}

declare dso_local i32 @read_cpuid_mpidr(...) #1

declare dso_local i32 @task_cpu(%struct.TYPE_4__*) #1

declare dso_local i32 @set_my_cpu_offset(i32) #1

declare dso_local i32 @per_cpu_offset(i32) #1

declare dso_local i32 @mmgrab(%struct.mm_struct*) #1

declare dso_local i32 @cpu_uninstall_idmap(...) #1

declare dso_local i64 @system_uses_irq_prio_masking(...) #1

declare dso_local i32 @init_gic_priority_masking(...) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @trace_hardirqs_off(...) #1

declare dso_local i32 @check_local_cpu_capabilities(...) #1

declare dso_local i32 @cpuinfo_store_cpu(...) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @store_cpu_topology(i32) #1

declare dso_local i32 @numa_add_cpu(i32) #1

declare dso_local i32 @pr_info(i8*, i32, i64, i32) #1

declare dso_local i32 @read_cpuid_id(...) #1

declare dso_local i32 @update_cpu_boot_status(i32) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @local_daif_restore(i32) #1

declare dso_local i32 @cpu_startup_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
