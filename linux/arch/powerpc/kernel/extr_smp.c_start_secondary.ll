; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_start_secondary.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kernel/extr_smp.c_start_secondary.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32 (...)*, i32 (i32)* }
%struct.TYPE_4__ = type { i32 }
%struct.cpumask = type opaque

@init_mm = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_6__* null, align 8
@tb_ticks_per_jiffy = common dso_local global i32 0, align 4
@cpu_callin_map = common dso_local global i32* null, align 8
@smp_ops = common dso_local global %struct.TYPE_5__* null, align 8
@has_big_cores = common dso_local global i64 0, align 8
@shared_caches = common dso_local global i32 0, align 4
@numa_cpu_lookup_table = common dso_local global i32* null, align 8
@CPUHP_AP_ONLINE_IDLE = common dso_local global i32 0, align 4
@SYSTEM_RUNNING = common dso_local global i64 0, align 8
@system_state = common dso_local global i64 0, align 8
@vdso_data = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @start_secondary(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpumask* (i32)*, align 8
  store i8* %0, i8** %2, align 8
  %5 = call i32 (...) @smp_processor_id()
  store i32 %5, i32* %3, align 4
  store %struct.cpumask* (i32)* @cpu_sibling_mask, %struct.cpumask* (i32)** %4, align 8
  %6 = call i32 @mmgrab(i32* @init_mm)
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** @current, align 8
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  store i32* @init_mm, i32** %8, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @smp_store_cpu_info(i32 %9)
  %11 = load i32, i32* @tb_ticks_per_jiffy, align 4
  %12 = call i32 @set_dec(i32 %11)
  %13 = call i32 (...) @preempt_disable()
  %14 = load i32*, i32** @cpu_callin_map, align 8
  %15 = load i32, i32* %3, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds i32, i32* %14, i64 %16
  store i32 1, i32* %17, align 4
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_ops, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 1
  %20 = load i32 (i32)*, i32 (i32)** %19, align 8
  %21 = icmp ne i32 (i32)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_ops, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32 (i32)*, i32 (i32)** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = call i32 %25(i32 %26)
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_ops, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i32 (...)*, i32 (...)** %30, align 8
  %32 = icmp ne i32 (...)* %31, null
  br i1 %32, label %33, label %38

33:                                               ; preds = %28
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** @smp_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32 (...)*, i32 (...)** %35, align 8
  %37 = call i32 (...) %36()
  br label %38

38:                                               ; preds = %33, %28
  %39 = call i32 (...) @secondary_cpu_time_init()
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @add_cpu_to_masks(i32 %40)
  %42 = load i64, i64* @has_big_cores, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  store %struct.cpumask* (i32)* @cpu_smallcore_mask, %struct.cpumask* (i32)** %4, align 8
  br label %45

45:                                               ; preds = %44, %38
  %46 = load i32, i32* %3, align 4
  %47 = call i32 @cpu_l2_cache_mask(i32 %46)
  %48 = load %struct.cpumask* (i32)*, %struct.cpumask* (i32)** %4, align 8
  %49 = load i32, i32* %3, align 4
  %50 = call %struct.cpumask* %48(i32 %49)
  %51 = call i32 @cpumask_equal(i32 %47, %struct.cpumask* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45
  store i32 1, i32* @shared_caches, align 4
  br label %54

54:                                               ; preds = %53, %45
  %55 = load i32*, i32** @numa_cpu_lookup_table, align 8
  %56 = load i32, i32* %3, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @set_numa_node(i32 %59)
  %61 = load i32*, i32** @numa_cpu_lookup_table, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @local_memory_node(i32 %65)
  %67 = call i32 @set_numa_mem(i32 %66)
  %68 = call i32 (...) @smp_wmb()
  %69 = load i32, i32* %3, align 4
  %70 = call i32 @notify_cpu_starting(i32 %69)
  %71 = load i32, i32* %3, align 4
  %72 = call i32 @set_cpu_online(i32 %71, i32 1)
  %73 = call i32 (...) @boot_init_stack_canary()
  %74 = call i32 (...) @local_irq_enable()
  %75 = call i32 (...) @this_cpu_enable_ftrace()
  %76 = load i32, i32* @CPUHP_AP_ONLINE_IDLE, align 4
  %77 = call i32 @cpu_startup_entry(i32 %76)
  %78 = call i32 (...) @BUG()
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local %struct.cpumask* @cpu_sibling_mask(i32) #1

declare dso_local i32 @mmgrab(i32*) #1

declare dso_local i32 @smp_store_cpu_info(i32) #1

declare dso_local i32 @set_dec(i32) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @secondary_cpu_time_init(...) #1

declare dso_local i32 @add_cpu_to_masks(i32) #1

declare dso_local %struct.cpumask* @cpu_smallcore_mask(i32) #1

declare dso_local i32 @cpumask_equal(i32, %struct.cpumask*) #1

declare dso_local i32 @cpu_l2_cache_mask(i32) #1

declare dso_local i32 @set_numa_node(i32) #1

declare dso_local i32 @set_numa_mem(i32) #1

declare dso_local i32 @local_memory_node(i32) #1

declare dso_local i32 @smp_wmb(...) #1

declare dso_local i32 @notify_cpu_starting(i32) #1

declare dso_local i32 @set_cpu_online(i32, i32) #1

declare dso_local i32 @boot_init_stack_canary(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @this_cpu_enable_ftrace(...) #1

declare dso_local i32 @cpu_startup_entry(i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
