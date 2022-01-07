; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_mach_cpu_die.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/pseries/extr_hotplug-cpu.c_pseries_mach_cpu_die.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 (...)* }
%struct.TYPE_5__ = type { i32, i32 }

@CPU_STATE_INACTIVE = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@CPU_STATE_ONLINE = common dso_local global i64 0, align 8
@CPU_STATE_OFFLINE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @pseries_mach_cpu_die to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pseries_mach_cpu_die() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = call i32 (...) @smp_processor_id()
  store i32 %4, i32* %1, align 4
  %5 = call i32 (...) @hard_smp_processor_id()
  store i32 %5, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %6 = call i32 (...) @local_irq_disable()
  %7 = call i32 (...) @idle_task_exit()
  %8 = call i64 (...) @xive_enabled()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %0
  %11 = call i32 (...) @xive_teardown_cpu()
  br label %14

12:                                               ; preds = %0
  %13 = call i32 (...) @xics_teardown_cpu()
  br label %14

14:                                               ; preds = %12, %10
  %15 = load i32, i32* %1, align 4
  %16 = call i64 @get_preferred_offline_state(i32 %15)
  %17 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %75

19:                                               ; preds = %14
  %20 = load i32, i32* %1, align 4
  %21 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %22 = call i32 @set_cpu_current_state(i32 %20, i64 %21)
  %23 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %24 = icmp ne i32 (...)* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ppc_md, i32 0, i32 0), align 8
  %27 = call i32 (...) %26()
  br label %28

28:                                               ; preds = %25, %19
  store i32 2, i32* %3, align 4
  %29 = call %struct.TYPE_5__* (...) @get_lppaca()
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 1, i32* %30, align 4
  %31 = call %struct.TYPE_5__* (...) @get_lppaca()
  %32 = call i32 @lppaca_shared_proc(%struct.TYPE_5__* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %28
  %35 = call %struct.TYPE_5__* (...) @get_lppaca()
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 1
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %34, %28
  br label %38

38:                                               ; preds = %51, %37
  %39 = load i32, i32* %1, align 4
  %40 = call i64 @get_preferred_offline_state(i32 %39)
  %41 = load i64, i64* @CPU_STATE_INACTIVE, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %54

43:                                               ; preds = %38
  br label %44

44:                                               ; preds = %48, %43
  %45 = call i32 (...) @prep_irq_for_idle()
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %48, label %51

48:                                               ; preds = %44
  %49 = call i32 (...) @local_irq_enable()
  %50 = call i32 (...) @local_irq_disable()
  br label %44

51:                                               ; preds = %44
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @extended_cede_processor(i32 %52)
  br label %38

54:                                               ; preds = %38
  %55 = call i32 (...) @local_irq_disable()
  %56 = call %struct.TYPE_5__* (...) @get_lppaca()
  %57 = call i32 @lppaca_shared_proc(%struct.TYPE_5__* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %62, label %59

59:                                               ; preds = %54
  %60 = call %struct.TYPE_5__* (...) @get_lppaca()
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  store i32 0, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  %63 = call %struct.TYPE_5__* (...) @get_lppaca()
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  %65 = load i32, i32* %1, align 4
  %66 = call i64 @get_preferred_offline_state(i32 %65)
  %67 = load i64, i64* @CPU_STATE_ONLINE, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* %2, align 4
  %71 = call i32 @unregister_slb_shadow(i32 %70)
  %72 = call i32 (...) @hard_irq_disable()
  %73 = call i32 (...) @start_secondary_resume()
  br label %74

74:                                               ; preds = %69, %62
  br label %75

75:                                               ; preds = %74, %14
  %76 = load i32, i32* %1, align 4
  %77 = call i64 @get_preferred_offline_state(i32 %76)
  %78 = load i64, i64* @CPU_STATE_OFFLINE, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @WARN_ON(i32 %80)
  %82 = load i32, i32* %1, align 4
  %83 = load i64, i64* @CPU_STATE_OFFLINE, align 8
  %84 = call i32 @set_cpu_current_state(i32 %82, i64 %83)
  %85 = load i32, i32* %2, align 4
  %86 = call i32 @unregister_slb_shadow(i32 %85)
  %87 = call i32 (...) @rtas_stop_self()
  %88 = call i32 (...) @BUG()
  br label %89

89:                                               ; preds = %89, %75
  br label %89
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @hard_smp_processor_id(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @idle_task_exit(...) #1

declare dso_local i64 @xive_enabled(...) #1

declare dso_local i32 @xive_teardown_cpu(...) #1

declare dso_local i32 @xics_teardown_cpu(...) #1

declare dso_local i64 @get_preferred_offline_state(i32) #1

declare dso_local i32 @set_cpu_current_state(i32, i64) #1

declare dso_local %struct.TYPE_5__* @get_lppaca(...) #1

declare dso_local i32 @lppaca_shared_proc(%struct.TYPE_5__*) #1

declare dso_local i32 @prep_irq_for_idle(...) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i32 @extended_cede_processor(i32) #1

declare dso_local i32 @unregister_slb_shadow(i32) #1

declare dso_local i32 @hard_irq_disable(...) #1

declare dso_local i32 @start_secondary_resume(...) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @rtas_stop_self(...) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
