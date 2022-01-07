; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_arch_tlbbatch_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_arch_tlbbatch_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.arch_tlbflush_unmap_batch = type { i32 }

@full_flush_tlb_info = common dso_local global i32 0, align 4
@TLB_LOCAL_SHOOTDOWN = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_tlbbatch_flush(%struct.arch_tlbflush_unmap_batch* %0) #0 {
  %2 = alloca %struct.arch_tlbflush_unmap_batch*, align 8
  %3 = alloca i32, align 4
  store %struct.arch_tlbflush_unmap_batch* %0, %struct.arch_tlbflush_unmap_batch** %2, align 8
  %4 = call i32 (...) @get_cpu()
  store i32 %4, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.arch_tlbflush_unmap_batch*, %struct.arch_tlbflush_unmap_batch** %2, align 8
  %7 = getelementptr inbounds %struct.arch_tlbflush_unmap_batch, %struct.arch_tlbflush_unmap_batch* %6, i32 0, i32 0
  %8 = call i64 @cpumask_test_cpu(i32 %5, i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = call i32 (...) @lockdep_assert_irqs_enabled()
  %12 = call i32 (...) @local_irq_disable()
  %13 = load i32, i32* @TLB_LOCAL_SHOOTDOWN, align 4
  %14 = call i32 @flush_tlb_func_local(i32* @full_flush_tlb_info, i32 %13)
  %15 = call i32 (...) @local_irq_enable()
  br label %16

16:                                               ; preds = %10, %1
  %17 = load %struct.arch_tlbflush_unmap_batch*, %struct.arch_tlbflush_unmap_batch** %2, align 8
  %18 = getelementptr inbounds %struct.arch_tlbflush_unmap_batch, %struct.arch_tlbflush_unmap_batch* %17, i32 0, i32 0
  %19 = load i32, i32* %3, align 4
  %20 = call i64 @cpumask_any_but(i32* %18, i32 %19)
  %21 = load i64, i64* @nr_cpu_ids, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load %struct.arch_tlbflush_unmap_batch*, %struct.arch_tlbflush_unmap_batch** %2, align 8
  %25 = getelementptr inbounds %struct.arch_tlbflush_unmap_batch, %struct.arch_tlbflush_unmap_batch* %24, i32 0, i32 0
  %26 = call i32 @flush_tlb_others(i32* %25, i32* @full_flush_tlb_info)
  br label %27

27:                                               ; preds = %23, %16
  %28 = load %struct.arch_tlbflush_unmap_batch*, %struct.arch_tlbflush_unmap_batch** %2, align 8
  %29 = getelementptr inbounds %struct.arch_tlbflush_unmap_batch, %struct.arch_tlbflush_unmap_batch* %28, i32 0, i32 0
  %30 = call i32 @cpumask_clear(i32* %29)
  %31 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @flush_tlb_func_local(i32*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @cpumask_any_but(i32*, i32) #1

declare dso_local i32 @flush_tlb_others(i32*, i32*) #1

declare dso_local i32 @cpumask_clear(i32*) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
