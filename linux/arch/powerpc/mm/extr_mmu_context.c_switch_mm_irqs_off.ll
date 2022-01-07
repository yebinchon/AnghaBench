; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mmu_context.c_switch_mm_irqs_off.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_mmu_context.c_switch_mm_irqs_off.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.task_struct = type { i32 }

@CPU_FTR_ALTIVEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @switch_mm_irqs_off(%struct.mm_struct* %0, %struct.mm_struct* %1, %struct.task_struct* %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca %struct.mm_struct*, align 8
  %6 = alloca %struct.task_struct*, align 8
  %7 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store %struct.mm_struct* %1, %struct.mm_struct** %5, align 8
  store %struct.task_struct* %2, %struct.task_struct** %6, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 (...) @smp_processor_id()
  %9 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %10 = call i32 @mm_cpumask(%struct.mm_struct* %9)
  %11 = call i32 @cpumask_test_cpu(i32 %8, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %21, label %13

13:                                               ; preds = %3
  %14 = call i32 (...) @smp_processor_id()
  %15 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %16 = call i32 @mm_cpumask(%struct.mm_struct* %15)
  %17 = call i32 @cpumask_set_cpu(i32 %14, i32 %16)
  %18 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %19 = call i32 @inc_mm_active_cpus(%struct.mm_struct* %18)
  %20 = call i32 (...) @smp_mb()
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %13, %3
  %22 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %23 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %24 = call i32 @switch_mm_pgdir(%struct.task_struct* %22, %struct.mm_struct* %23)
  %25 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %27 = icmp eq %struct.mm_struct* %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %50

29:                                               ; preds = %21
  %30 = load i32, i32* @CPU_FTR_ALTIVEC, align 4
  %31 = call i64 @cpu_has_feature(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %29
  call void asm sideeffect "dssall", "~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %39 = call i32 @radix_kvm_prefetch_workaround(%struct.mm_struct* %38)
  br label %45

40:                                               ; preds = %34
  %41 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %42 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %43 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %44 = call i32 @membarrier_arch_switch_mm(%struct.mm_struct* %41, %struct.mm_struct* %42, %struct.task_struct* %43)
  br label %45

45:                                               ; preds = %40, %37
  %46 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %47 = load %struct.mm_struct*, %struct.mm_struct** %5, align 8
  %48 = load %struct.task_struct*, %struct.task_struct** %6, align 8
  %49 = call i32 @switch_mmu_context(%struct.mm_struct* %46, %struct.mm_struct* %47, %struct.task_struct* %48)
  br label %50

50:                                               ; preds = %45, %28
  ret void
}

declare dso_local i32 @cpumask_test_cpu(i32, i32) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @cpumask_set_cpu(i32, i32) #1

declare dso_local i32 @inc_mm_active_cpus(%struct.mm_struct*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @switch_mm_pgdir(%struct.task_struct*, %struct.mm_struct*) #1

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @radix_kvm_prefetch_workaround(%struct.mm_struct*) #1

declare dso_local i32 @membarrier_arch_switch_mm(%struct.mm_struct*, %struct.mm_struct*, %struct.task_struct*) #1

declare dso_local i32 @switch_mmu_context(%struct.mm_struct*, %struct.mm_struct*, %struct.task_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 1195}
