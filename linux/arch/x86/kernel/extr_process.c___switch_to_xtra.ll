; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c___switch_to_xtra.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_process.c___switch_to_xtra.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.thread_struct }
%struct.thread_struct = type { i32 }
%struct.TYPE_2__ = type { i32 }

@_TIF_BLOCKSTEP = common dso_local global i64 0, align 8
@MSR_IA32_DEBUGCTLMSR = common dso_local global i32 0, align 4
@DEBUGCTLMSR_BTF = common dso_local global i64 0, align 8
@TIF_BLOCKSTEP = common dso_local global i64 0, align 8
@DEBUGCTLMSR_BTF_SHIFT = common dso_local global i64 0, align 8
@_TIF_NOTSC = common dso_local global i64 0, align 8
@X86_CR4_TSD = common dso_local global i32 0, align 4
@_TIF_NOCPUID = common dso_local global i64 0, align 8
@_TIF_SPEC_FORCE_UPDATE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__switch_to_xtra(%struct.task_struct* %0, %struct.task_struct* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca %struct.task_struct*, align 8
  %5 = alloca %struct.thread_struct*, align 8
  %6 = alloca %struct.thread_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store %struct.task_struct* %1, %struct.task_struct** %4, align 8
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %11, i32 0, i32 0
  store %struct.thread_struct* %12, %struct.thread_struct** %5, align 8
  %13 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %14 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %13, i32 0, i32 0
  store %struct.thread_struct* %14, %struct.thread_struct** %6, align 8
  %15 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %16 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @READ_ONCE(i32 %18)
  store i64 %19, i64* %8, align 8
  %20 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %21 = call %struct.TYPE_2__* @task_thread_info(%struct.task_struct* %20)
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @READ_ONCE(i32 %23)
  store i64 %24, i64* %7, align 8
  %25 = load %struct.thread_struct*, %struct.thread_struct** %5, align 8
  %26 = load %struct.thread_struct*, %struct.thread_struct** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = load i64, i64* %8, align 8
  %29 = call i32 @switch_to_bitmap(%struct.thread_struct* %25, %struct.thread_struct* %26, i64 %27, i64 %28)
  %30 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %31 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %32 = call i32 @propagate_user_return_notify(%struct.task_struct* %30, %struct.task_struct* %31)
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* @_TIF_BLOCKSTEP, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %2
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @_TIF_BLOCKSTEP, align 8
  %40 = and i64 %38, %39
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %66

42:                                               ; preds = %37, %2
  %43 = call i64 (...) @arch_has_block_step()
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %66

45:                                               ; preds = %42
  %46 = load i32, i32* @MSR_IA32_DEBUGCTLMSR, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @rdmsrl(i32 %46, i64 %47)
  %49 = load i64, i64* @DEBUGCTLMSR_BTF, align 8
  %50 = xor i64 %49, -1
  %51 = load i64, i64* %9, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %9, align 8
  %53 = load i64, i64* %8, align 8
  %54 = load i64, i64* @_TIF_BLOCKSTEP, align 8
  %55 = and i64 %53, %54
  store i64 %55, i64* %10, align 8
  %56 = load i64, i64* %10, align 8
  %57 = load i64, i64* @TIF_BLOCKSTEP, align 8
  %58 = lshr i64 %56, %57
  %59 = load i64, i64* @DEBUGCTLMSR_BTF_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = load i64, i64* %9, align 8
  %62 = or i64 %61, %60
  store i64 %62, i64* %9, align 8
  %63 = load i32, i32* @MSR_IA32_DEBUGCTLMSR, align 4
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @wrmsrl(i32 %63, i64 %64)
  br label %66

66:                                               ; preds = %45, %42, %37
  %67 = load i64, i64* %7, align 8
  %68 = load i64, i64* %8, align 8
  %69 = xor i64 %67, %68
  %70 = load i64, i64* @_TIF_NOTSC, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* @X86_CR4_TSD, align 4
  %75 = call i32 @cr4_toggle_bits_irqsoff(i32 %74)
  br label %76

76:                                               ; preds = %73, %66
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = xor i64 %77, %78
  %80 = load i64, i64* @_TIF_NOCPUID, align 8
  %81 = and i64 %79, %80
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %92

83:                                               ; preds = %76
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* @_TIF_NOCPUID, align 8
  %86 = and i64 %84, %85
  %87 = icmp ne i64 %86, 0
  %88 = xor i1 %87, true
  %89 = xor i1 %88, true
  %90 = zext i1 %89 to i32
  %91 = call i32 @set_cpuid_faulting(i32 %90)
  br label %92

92:                                               ; preds = %83, %76
  %93 = load i64, i64* %7, align 8
  %94 = load i64, i64* %8, align 8
  %95 = or i64 %93, %94
  %96 = load i64, i64* @_TIF_SPEC_FORCE_UPDATE, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  %99 = xor i1 %98, true
  %100 = zext i1 %99 to i32
  %101 = call i64 @likely(i32 %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %92
  %104 = load i64, i64* %7, align 8
  %105 = load i64, i64* %8, align 8
  %106 = call i32 @__speculation_ctrl_update(i64 %104, i64 %105)
  br label %116

107:                                              ; preds = %92
  %108 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %109 = call i64 @speculation_ctrl_update_tif(%struct.task_struct* %108)
  %110 = load %struct.task_struct*, %struct.task_struct** %4, align 8
  %111 = call i64 @speculation_ctrl_update_tif(%struct.task_struct* %110)
  store i64 %111, i64* %8, align 8
  %112 = load i64, i64* %8, align 8
  %113 = xor i64 %112, -1
  %114 = load i64, i64* %8, align 8
  %115 = call i32 @__speculation_ctrl_update(i64 %113, i64 %114)
  br label %116

116:                                              ; preds = %107, %103
  ret void
}

declare dso_local i64 @READ_ONCE(i32) #1

declare dso_local %struct.TYPE_2__* @task_thread_info(%struct.task_struct*) #1

declare dso_local i32 @switch_to_bitmap(%struct.thread_struct*, %struct.thread_struct*, i64, i64) #1

declare dso_local i32 @propagate_user_return_notify(%struct.task_struct*, %struct.task_struct*) #1

declare dso_local i64 @arch_has_block_step(...) #1

declare dso_local i32 @rdmsrl(i32, i64) #1

declare dso_local i32 @wrmsrl(i32, i64) #1

declare dso_local i32 @cr4_toggle_bits_irqsoff(i32) #1

declare dso_local i32 @set_cpuid_faulting(i32) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @__speculation_ctrl_update(i64, i64) #1

declare dso_local i64 @speculation_ctrl_update_tif(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
