; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_copy_thread.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/kernel/extr_process.c_copy_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.pt_regs, %struct.TYPE_3__ }
%struct.pt_regs = type { i64, i64, i64, i64, i64, i32, i32, i64* }
%struct.TYPE_3__ = type { i64 }

@PF_KTHREAD = common dso_local global i32 0, align 4
@tpidr_el0 = common dso_local global i32 0, align 4
@CLONE_SETTLS = common dso_local global i64 0, align 8
@PSR_MODE_EL1h = common dso_local global i32 0, align 4
@CONFIG_ARM64_UAO = common dso_local global i32 0, align 4
@ARM64_HAS_UAO = common dso_local global i32 0, align 4
@PSR_UAO_BIT = common dso_local global i32 0, align 4
@ARM64_SSBD_FORCE_DISABLE = common dso_local global i64 0, align 8
@GIC_PRIO_IRQON = common dso_local global i32 0, align 4
@ret_from_fork = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @copy_thread(i64 %0, i64 %1, i64 %2, %struct.task_struct* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.task_struct*, align 8
  %9 = alloca %struct.pt_regs*, align 8
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.task_struct* %3, %struct.task_struct** %8, align 8
  %10 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %11 = call %struct.pt_regs* @task_pt_regs(%struct.task_struct* %10)
  store %struct.pt_regs* %11, %struct.pt_regs** %9, align 8
  %12 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %13 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = call i32 @memset(%struct.pt_regs* %14, i32 0, i32 4)
  %16 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %17 = call i32 @fpsimd_flush_task_state(%struct.task_struct* %16)
  %18 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %19 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @PF_KTHREAD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @likely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %73

28:                                               ; preds = %4
  %29 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %30 = call %struct.pt_regs* (...) @current_pt_regs()
  %31 = bitcast %struct.pt_regs* %29 to i8*
  %32 = bitcast %struct.pt_regs* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 56, i1 false)
  %33 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %34 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %33, i32 0, i32 7
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  store i64 0, i64* %36, align 8
  %37 = load i32, i32* @tpidr_el0, align 4
  %38 = call i32 @read_sysreg(i32 %37)
  %39 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %40 = call i32* @task_user_tls(%struct.task_struct* %39)
  store i32 %38, i32* %40, align 4
  %41 = load i64, i64* %6, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %28
  %44 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %45 = call i32 @task_thread_info(%struct.task_struct* %44)
  %46 = call i64 @is_compat_thread(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i64, i64* %6, align 8
  %50 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %51 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %50, i32 0, i32 0
  store i64 %49, i64* %51, align 8
  br label %56

52:                                               ; preds = %43
  %53 = load i64, i64* %6, align 8
  %54 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %55 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %54, i32 0, i32 1
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %48
  br label %57

57:                                               ; preds = %56, %28
  %58 = load i64, i64* %5, align 8
  %59 = load i64, i64* @CLONE_SETTLS, align 8
  %60 = and i64 %58, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %72

62:                                               ; preds = %57
  %63 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %64 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %63, i32 0, i32 7
  %65 = load i64*, i64** %64, align 8
  %66 = getelementptr inbounds i64, i64* %65, i64 3
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %69 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  store i64 %67, i64* %71, align 8
  br label %72

72:                                               ; preds = %62, %57
  br label %117

73:                                               ; preds = %4
  %74 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %75 = call i32 @memset(%struct.pt_regs* %74, i32 0, i32 56)
  %76 = load i32, i32* @PSR_MODE_EL1h, align 4
  %77 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %78 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %77, i32 0, i32 6
  store i32 %76, i32* %78, align 4
  %79 = load i32, i32* @CONFIG_ARM64_UAO, align 4
  %80 = call i64 @IS_ENABLED(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %73
  %83 = load i32, i32* @ARM64_HAS_UAO, align 4
  %84 = call i64 @cpus_have_const_cap(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %82
  %87 = load i32, i32* @PSR_UAO_BIT, align 4
  %88 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %89 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %88, i32 0, i32 6
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %86, %82, %73
  %93 = call i64 (...) @arm64_get_ssbd_state()
  %94 = load i64, i64* @ARM64_SSBD_FORCE_DISABLE, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %98 = call i32 @set_ssbs_bit(%struct.pt_regs* %97)
  br label %99

99:                                               ; preds = %96, %92
  %100 = call i64 (...) @system_uses_irq_prio_masking()
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %106

102:                                              ; preds = %99
  %103 = load i32, i32* @GIC_PRIO_IRQON, align 4
  %104 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %105 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 8
  br label %106

106:                                              ; preds = %102, %99
  %107 = load i64, i64* %6, align 8
  %108 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %109 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %108, i32 0, i32 1
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %110, i32 0, i32 2
  store i64 %107, i64* %111, align 8
  %112 = load i64, i64* %7, align 8
  %113 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %114 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %115, i32 0, i32 3
  store i64 %112, i64* %116, align 8
  br label %117

117:                                              ; preds = %106, %72
  %118 = load i64, i64* @ret_from_fork, align 8
  %119 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %120 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %121, i32 0, i32 4
  store i64 %118, i64* %122, align 8
  %123 = load %struct.pt_regs*, %struct.pt_regs** %9, align 8
  %124 = ptrtoint %struct.pt_regs* %123 to i64
  %125 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %126 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  %129 = load %struct.task_struct*, %struct.task_struct** %8, align 8
  %130 = call i32 @ptrace_hw_copy_thread(%struct.task_struct* %129)
  ret i32 0
}

declare dso_local %struct.pt_regs* @task_pt_regs(%struct.task_struct*) #1

declare dso_local i32 @memset(%struct.pt_regs*, i32, i32) #1

declare dso_local i32 @fpsimd_flush_task_state(%struct.task_struct*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.pt_regs* @current_pt_regs(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @read_sysreg(i32) #1

declare dso_local i32* @task_user_tls(%struct.task_struct*) #1

declare dso_local i64 @is_compat_thread(i32) #1

declare dso_local i32 @task_thread_info(%struct.task_struct*) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @cpus_have_const_cap(i32) #1

declare dso_local i64 @arm64_get_ssbd_state(...) #1

declare dso_local i32 @set_ssbs_bit(%struct.pt_regs*) #1

declare dso_local i64 @system_uses_irq_prio_masking(...) #1

declare dso_local i32 @ptrace_hw_copy_thread(%struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
