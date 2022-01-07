; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_smp.c_smp_flush_tlb_mm.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_smp.c_smp_flush_tlb_mm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @smp_flush_tlb_mm(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %4 = call i32 (...) @preempt_disable()
  %5 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %9 = icmp eq %struct.mm_struct* %5, %8
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %11, i32 0, i32 0
  %13 = call i32 @atomic_read(i32* %12)
  %14 = icmp eq i32 %13, 1
  br label %15

15:                                               ; preds = %10, %1
  %16 = phi i1 [ false, %1 ], [ %14, %10 ]
  %17 = zext i1 %16 to i32
  %18 = call i64 @likely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %22 = call i32 @local_finish_flush_tlb_mm(%struct.mm_struct* %21)
  %23 = call i32 (...) @preempt_enable()
  br label %47

24:                                               ; preds = %15
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call i32 @alloc_cpumask_var(i32* %3, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %30 = call i32 @smp_call_function(void (i8*)* bitcast (i32 (%struct.mm_struct*)* @local_finish_flush_tlb_mm to void (i8*)*), %struct.mm_struct* %29, i32 1)
  br label %41

31:                                               ; preds = %24
  %32 = load i32, i32* %3, align 4
  %33 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %34 = call i32 @mm_cpumask(%struct.mm_struct* %33)
  %35 = call i32 @cpumask_copy(i32 %32, i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %38 = call i32 @smp_call_function_many(i32 %36, void (i8*)* bitcast (i32 (%struct.mm_struct*)* @local_finish_flush_tlb_mm to void (i8*)*), %struct.mm_struct* %37, i32 1)
  %39 = load i32, i32* %3, align 4
  %40 = call i32 @free_cpumask_var(i32 %39)
  br label %41

41:                                               ; preds = %31, %28
  %42 = call i32 (...) @local_irq_disable()
  %43 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %44 = call i32 @local_finish_flush_tlb_mm(%struct.mm_struct* %43)
  %45 = call i32 (...) @local_irq_enable()
  %46 = call i32 (...) @preempt_enable()
  br label %47

47:                                               ; preds = %41, %20
  ret void
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @local_finish_flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @preempt_enable(...) #1

declare dso_local i32 @alloc_cpumask_var(i32*, i32) #1

declare dso_local i32 @smp_call_function(void (i8*)*, %struct.mm_struct*, i32) #1

declare dso_local i32 @cpumask_copy(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @smp_call_function_many(i32, void (i8*)*, %struct.mm_struct*, i32) #1

declare dso_local i32 @free_cpumask_var(i32) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @local_irq_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
