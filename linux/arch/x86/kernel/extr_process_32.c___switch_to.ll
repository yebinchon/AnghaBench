; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_32.c___switch_to.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process_32.c___switch_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i32, i64, %struct.fpu }
%struct.fpu = type { i32 }

@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4
@cpu_current_top_of_stack = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global %struct.task_struct* null, align 8
@current_task = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.task_struct* @__switch_to(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca %struct.thread_struct*, align 8
  %7 = alloca %struct.fpu*, align 8
  %8 = alloca %struct.fpu*, align 8
  %9 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %11 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %10, i32 0, i32 0
  store %struct.thread_struct* %11, %struct.thread_struct** %5, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 0
  store %struct.thread_struct* %13, %struct.thread_struct** %6, align 8
  %14 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %15 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %14, i32 0, i32 2
  store %struct.fpu* %15, %struct.fpu** %7, align 8
  %16 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %17 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %16, i32 0, i32 2
  store %struct.fpu* %17, %struct.fpu** %8, align 8
  %18 = call i32 (...) @smp_processor_id()
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %20 = call i32 @test_thread_flag(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %2
  %23 = load %struct.fpu*, %struct.fpu** %7, align 8
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @switch_fpu_prepare(%struct.fpu* %23, i32 %24)
  br label %26

26:                                               ; preds = %22, %2
  %27 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %28 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @lazy_save_gs(i32 %29)
  %31 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @load_TLS(%struct.thread_struct* %31, i32 %32)
  %34 = call i64 (...) @get_kernel_rpl()
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %52

36:                                               ; preds = %26
  %37 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %38 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %41 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %39, %42
  %44 = zext i1 %43 to i32
  %45 = call i64 @unlikely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %36
  %48 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %49 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = call i32 @set_iopl_mask(i64 %50)
  br label %52

52:                                               ; preds = %47, %36, %26
  %53 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %54 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %55 = call i32 @switch_to_extra(%struct.task_struct* %53, %struct.task_struct* %54)
  %56 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %57 = call i32 @arch_end_context_switch(%struct.task_struct* %56)
  %58 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %59 = call i32 @update_task_stack(%struct.task_struct* %58)
  %60 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %61 = call i32 @refresh_sysenter_cs(%struct.thread_struct* %60)
  %62 = load i32, i32* @cpu_current_top_of_stack, align 4
  %63 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %64 = call i64 @task_stack_page(%struct.task_struct* %63)
  %65 = load %struct.task_struct*, %struct.task_struct** @THREAD_SIZE, align 8
  %66 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %65, i64 %64
  %67 = call i32 @this_cpu_write(i32 %62, %struct.task_struct* %66)
  %68 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %69 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %72 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = or i32 %70, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %52
  %77 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %78 = getelementptr inbounds %struct.thread_struct, %struct.thread_struct* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @lazy_load_gs(i32 %79)
  br label %81

81:                                               ; preds = %76, %52
  %82 = load i32, i32* @current_task, align 4
  %83 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %84 = call i32 @this_cpu_write(i32 %82, %struct.task_struct* %83)
  %85 = load %struct.fpu*, %struct.fpu** %8, align 8
  %86 = call i32 @switch_fpu_finish(%struct.fpu* %85)
  %87 = call i32 (...) @resctrl_sched_in()
  %88 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  ret %struct.task_struct* %88
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i32 @switch_fpu_prepare(%struct.fpu*, i32) #1

declare dso_local i32 @lazy_save_gs(i32) #1

declare dso_local i32 @load_TLS(%struct.thread_struct*, i32) #1

declare dso_local i64 @get_kernel_rpl(...) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @set_iopl_mask(i64) #1

declare dso_local i32 @switch_to_extra(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i32 @arch_end_context_switch(%struct.task_struct*) #1

declare dso_local i32 @update_task_stack(%struct.task_struct*) #1

declare dso_local i32 @refresh_sysenter_cs(%struct.thread_struct*) #1

declare dso_local i32 @this_cpu_write(i32, %struct.task_struct*) #1

declare dso_local i64 @task_stack_page(%struct.task_struct*) #1

declare dso_local i32 @lazy_load_gs(i32) #1

declare dso_local i32 @switch_fpu_finish(%struct.fpu*) #1

declare dso_local i32 @resctrl_sched_in(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
