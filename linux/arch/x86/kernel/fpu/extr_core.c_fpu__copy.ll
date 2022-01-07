; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__copy.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/fpu/extr_core.c_fpu__copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.fpu }
%struct.fpu = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.task_struct = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.fpu }

@X86_FEATURE_FPU = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_10__* null, align 8
@fpu_kernel_xstate_size = common dso_local global i32 0, align 4
@TIF_NEED_FPU_LOAD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fpu__copy(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.task_struct*, align 8
  %6 = alloca %struct.fpu*, align 8
  %7 = alloca %struct.fpu*, align 8
  store %struct.task_struct* %0, %struct.task_struct** %4, align 8
  store %struct.task_struct* %1, %struct.task_struct** %5, align 8
  %8 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %9 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 0
  store %struct.fpu* %10, %struct.fpu** %6, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %5, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.fpu* %13, %struct.fpu** %7, align 8
  %14 = load %struct.fpu*, %struct.fpu** %6, align 8
  %15 = getelementptr inbounds %struct.fpu, %struct.fpu* %14, i32 0, i32 0
  store i32 -1, i32* %15, align 4
  %16 = load i32, i32* @X86_FEATURE_FPU, align 4
  %17 = call i32 @static_cpu_has(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %62

20:                                               ; preds = %2
  %21 = load %struct.fpu*, %struct.fpu** %7, align 8
  %22 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = icmp ne %struct.fpu* %21, %24
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ON_FPU(i32 %26)
  %28 = load %struct.fpu*, %struct.fpu** %6, align 8
  %29 = getelementptr inbounds %struct.fpu, %struct.fpu* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 0
  %31 = load i32, i32* @fpu_kernel_xstate_size, align 4
  %32 = call i32 @memset(i32* %30, i32 0, i32 %31)
  %33 = call i32 (...) @fpregs_lock()
  %34 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %35 = call i64 @test_thread_flag(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %20
  %38 = load %struct.fpu*, %struct.fpu** %6, align 8
  %39 = getelementptr inbounds %struct.fpu, %struct.fpu* %38, i32 0, i32 1
  %40 = load %struct.fpu*, %struct.fpu** %7, align 8
  %41 = getelementptr inbounds %struct.fpu, %struct.fpu* %40, i32 0, i32 1
  %42 = load i32, i32* @fpu_kernel_xstate_size, align 4
  %43 = call i32 @memcpy(%struct.TYPE_9__* %39, %struct.TYPE_9__* %41, i32 %42)
  br label %53

44:                                               ; preds = %20
  %45 = load %struct.fpu*, %struct.fpu** %6, align 8
  %46 = call i32 @copy_fpregs_to_fpstate(%struct.fpu* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %52, label %48

48:                                               ; preds = %44
  %49 = load %struct.fpu*, %struct.fpu** %6, align 8
  %50 = getelementptr inbounds %struct.fpu, %struct.fpu* %49, i32 0, i32 1
  %51 = call i32 @copy_kernel_to_fpregs(%struct.TYPE_9__* %50)
  br label %52

52:                                               ; preds = %48, %44
  br label %53

53:                                               ; preds = %52, %37
  %54 = call i32 (...) @fpregs_unlock()
  %55 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %56 = load i32, i32* @TIF_NEED_FPU_LOAD, align 4
  %57 = call i32 @set_tsk_thread_flag(%struct.task_struct* %55, i32 %56)
  %58 = load %struct.fpu*, %struct.fpu** %7, align 8
  %59 = call i32 @trace_x86_fpu_copy_src(%struct.fpu* %58)
  %60 = load %struct.fpu*, %struct.fpu** %6, align 8
  %61 = call i32 @trace_x86_fpu_copy_dst(%struct.fpu* %60)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %53, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @WARN_ON_FPU(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fpregs_lock(...) #1

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_9__*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @copy_fpregs_to_fpstate(%struct.fpu*) #1

declare dso_local i32 @copy_kernel_to_fpregs(%struct.TYPE_9__*) #1

declare dso_local i32 @fpregs_unlock(...) #1

declare dso_local i32 @set_tsk_thread_flag(%struct.task_struct*, i32) #1

declare dso_local i32 @trace_x86_fpu_copy_src(%struct.fpu*) #1

declare dso_local i32 @trace_x86_fpu_copy_dst(%struct.fpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
