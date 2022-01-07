; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c___switch_to.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_64.c___switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i16, i16, i64, %struct.fpu }
%struct.fpu = type { i32 }

@CONFIG_DEBUG_ENTRY = common dso_local global i32 0, align 4
@irq_count = common dso_local global i32 0, align 4
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4
@es = common dso_local global i32 0, align 4
@ds = common dso_local global i32 0, align 4
@current_task = common dso_local global i32 0, align 4
@cpu_current_top_of_stack = common dso_local global i32 0, align 4
@X86_BUG_SYSRET_SS_ATTRS = common dso_local global i32 0, align 4
@ss = common dso_local global i32 0, align 4
@__KERNEL_DS = common dso_local global i16 0, align 2
@X86_FEATURE_XENPV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @__switch_to(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca %struct.thread_struct*, align 8
  %7 = alloca %struct.fpu*, align 8
  %8 = alloca %struct.fpu*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  store %struct.thread_struct* %12, %struct.thread_struct** %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  store %struct.thread_struct* %14, %struct.thread_struct** %6, align 8
  %15 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %16 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %15, i32 0, i32 3
  store %struct.fpu* %16, %struct.fpu** %7, align 8
  %17 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %18 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %17, i32 0, i32 3
  store %struct.fpu* %18, %struct.fpu** %8, align 8
  %19 = call i32 (...) @smp_processor_id()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* @CONFIG_DEBUG_ENTRY, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @irq_count, align 4
  %25 = call i32 @this_cpu_read(i32 %24)
  %26 = icmp ne i32 %25, -1
  br label %27

27:                                               ; preds = %23, %2
  %28 = phi i1 [ false, %2 ], [ %26, %23 ]
  %29 = zext i1 %28 to i32
  %30 = call i32 @WARN_ON_ONCE(i32 %29)
  %31 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %32 = call i32 @test_thread_flag(i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %38, label %34

34:                                               ; preds = %27
  %35 = load %struct.fpu*, %struct.fpu** %7, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @switch_fpu_prepare(%struct.fpu* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %27
  %39 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %40 = call i32 @save_fsgs(%struct.task_struct* %39)
  %41 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @load_TLS(%struct.thread_struct* %41, i32 %42)
  %44 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %45 = call i32 @arch_end_context_switch(%struct.task_struct* %44)
  %46 = load i32, i32* @es, align 4
  %47 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %48 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %47, i32 0, i32 0
  %49 = load i16, i16* %48, align 8
  %50 = call i32 @savesegment(i32 %46, i16 zeroext %49)
  %51 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %52 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %51, i32 0, i32 0
  %53 = load i16, i16* %52, align 8
  %54 = zext i16 %53 to i32
  %55 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %56 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %55, i32 0, i32 0
  %57 = load i16, i16* %56, align 8
  %58 = zext i16 %57 to i32
  %59 = or i32 %54, %58
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %38
  %63 = load i32, i32* @es, align 4
  %64 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %65 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %64, i32 0, i32 0
  %66 = load i16, i16* %65, align 8
  %67 = call i32 @loadsegment(i32 %63, i16 zeroext %66)
  br label %68

68:                                               ; preds = %62, %38
  %69 = load i32, i32* @ds, align 4
  %70 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %71 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %70, i32 0, i32 1
  %72 = load i16, i16* %71, align 2
  %73 = call i32 @savesegment(i32 %69, i16 zeroext %72)
  %74 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %75 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %74, i32 0, i32 1
  %76 = load i16, i16* %75, align 2
  %77 = zext i16 %76 to i32
  %78 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %79 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %78, i32 0, i32 1
  %80 = load i16, i16* %79, align 2
  %81 = zext i16 %80 to i32
  %82 = or i32 %77, %81
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %68
  %86 = load i32, i32* @ds, align 4
  %87 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %88 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %87, i32 0, i32 1
  %89 = load i16, i16* %88, align 2
  %90 = call i32 @loadsegment(i32 %86, i16 zeroext %89)
  br label %91

91:                                               ; preds = %85, %68
  %92 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %93 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %94 = call i32 @x86_fsgsbase_load(%struct.thread_struct* %92, %struct.thread_struct* %93)
  %95 = load i32, i32* @current_task, align 4
  %96 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %97 = call i32 @this_cpu_write(i32 %95, %struct.task_struct* %96)
  %98 = load i32, i32* @cpu_current_top_of_stack, align 4
  %99 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %100 = call %struct.task_struct* @task_top_of_stack(%struct.task_struct* %99)
  %101 = call i32 @this_cpu_write(i32 %98, %struct.task_struct* %100)
  %102 = load %struct.fpu*, %struct.fpu** %8, align 8
  %103 = call i32 @switch_fpu_finish(%struct.fpu* %102)
  %104 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %105 = call i32 @update_task_stack(%struct.task_struct* %104)
  %106 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %107 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %108 = call i32 @switch_to_extra(%struct.task_struct* %106, %struct.task_struct* %107)
  %109 = load i32, i32* @X86_BUG_SYSRET_SS_ATTRS, align 4
  %110 = call i64 @static_cpu_has_bug(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %91
  %113 = load i32, i32* @ss, align 4
  %114 = load i16, i16* %10, align 2
  %115 = call i32 @savesegment(i32 %113, i16 zeroext %114)
  %116 = load i16, i16* %10, align 2
  %117 = zext i16 %116 to i32
  %118 = load i16, i16* @__KERNEL_DS, align 2
  %119 = zext i16 %118 to i32
  %120 = icmp ne i32 %117, %119
  br i1 %120, label %121, label %125

121:                                              ; preds = %112
  %122 = load i32, i32* @ss, align 4
  %123 = load i16, i16* @__KERNEL_DS, align 2
  %124 = call i32 @loadsegment(i32 %122, i16 zeroext %123)
  br label %125

125:                                              ; preds = %121, %112
  br label %126

126:                                              ; preds = %125, %91
  %127 = call i32 (...) @resctrl_sched_in()
  %128 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %128
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @this_cpu_read(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @switch_fpu_prepare(%struct.fpu*, i32) #1

declare dso_local i32 @save_fsgs(%struct.task_struct*) #1

declare dso_local i32 @load_TLS(%struct.thread_struct*, i32) #1

declare dso_local i32 @arch_end_context_switch(%struct.task_struct*) #1

declare dso_local i32 @savesegment(i32, i16 zeroext) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @loadsegment(i32, i16 zeroext) #1

declare dso_local i32 @x86_fsgsbase_load(%struct.thread_struct*, %struct.thread_struct*) #1

declare dso_local i32 @this_cpu_write(i32, %struct.task_struct*) #1

declare dso_local %struct.task_struct* @task_top_of_stack(%struct.task_struct*) #1

declare dso_local i32 @switch_fpu_finish(%struct.fpu*) #1

declare dso_local i32 @update_task_stack(%struct.task_struct*) #1

declare dso_local i32 @switch_to_extra(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i64 @static_cpu_has_bug(i32) #1

declare dso_local i32 @resctrl_sched_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
