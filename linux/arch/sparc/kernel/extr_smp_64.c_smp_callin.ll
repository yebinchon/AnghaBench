; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_callin.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_smp_64.c_smp_callin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i64 }

@__local_per_cpu_offset = common dso_local global i32 0, align 4
@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8
@cheetah_pcache_forced_on = common dso_local global i64 0, align 8
@callin_flag = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@smp_commenced_mask = common dso_local global i32 0, align 4
@CPUHP_AP_ONLINE_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_callin() #0 {
  %1 = alloca i32, align 4
  %2 = call i32 (...) @hard_smp_processor_id()
  store i32 %2, i32* %1, align 4
  %3 = load i32, i32* %1, align 4
  %4 = call i32 @__per_cpu_offset(i32 %3)
  store i32 %4, i32* @__local_per_cpu_offset, align 4
  %5 = load i64, i64* @tlb_type, align 8
  %6 = load i64, i64* @hypervisor, align 8
  %7 = icmp eq i64 %5, %6
  br i1 %7, label %8, label %10

8:                                                ; preds = %0
  %9 = call i32 (...) @sun4v_ktsb_register()
  br label %10

10:                                               ; preds = %8, %0
  %11 = call i32 (...) @__flush_tlb_all()
  %12 = call i32 (...) @setup_sparc64_timer()
  %13 = load i64, i64* @cheetah_pcache_forced_on, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = call i32 (...) @cheetah_enable_pcache()
  br label %17

17:                                               ; preds = %15, %10
  store i32 1, i32* @callin_flag, align 4
  call void asm sideeffect "membar #Sync\0A\09flush  %g6", "~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  %18 = call %struct.TYPE_3__* (...) @current_thread_info()
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  store i64 0, i64* %19, align 8
  %20 = call i32 @mmgrab(i32* @init_mm)
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  store i32* @init_mm, i32** %22, align 8
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @notify_cpu_starting(i32 %23)
  br label %25

25:                                               ; preds = %30, %17
  %26 = load i32, i32* %1, align 4
  %27 = call i32 @cpumask_test_cpu(i32 %26, i32* @smp_commenced_mask)
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @rmb()
  br label %25

32:                                               ; preds = %25
  %33 = load i32, i32* %1, align 4
  %34 = call i32 @set_cpu_online(i32 %33, i32 1)
  %35 = call i32 (...) @preempt_disable()
  %36 = call i32 (...) @local_irq_enable()
  %37 = load i32, i32* @CPUHP_AP_ONLINE_IDLE, align 4
  %38 = call i32 @cpu_startup_entry(i32 %37)
  ret void
}

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @__per_cpu_offset(i32) #1

declare dso_local i32 @sun4v_ktsb_register(...) #1

declare dso_local i32 @__flush_tlb_all(...) #1

declare dso_local i32 @setup_sparc64_timer(...) #1

declare dso_local i32 @cheetah_enable_pcache(...) #1

declare dso_local %struct.TYPE_3__* @current_thread_info(...) #1

declare dso_local i32 @mmgrab(i32*) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @rmb(...) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @cpu_startup_entry(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1272, i32 1287}
