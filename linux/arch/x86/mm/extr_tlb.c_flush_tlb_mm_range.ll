; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_mm_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_tlb.c_flush_tlb_mm_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }
%struct.flush_tlb_info = type { i32 }

@TLB_FLUSH_ALL = common dso_local global i64 0, align 8
@tlb_single_page_flush_ceiling = common dso_local global i64 0, align 8
@cpu_tlbstate = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TLB_LOCAL_MM_SHOOTDOWN = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_mm_range(%struct.mm_struct* %0, i64 %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.flush_tlb_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.mm_struct* %0, %struct.mm_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = call i32 (...) @get_cpu()
  store i32 %14, i32* %13, align 4
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @TLB_FLUSH_ALL, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %27, label %18

18:                                               ; preds = %5
  %19 = load i64, i64* %8, align 8
  %20 = load i64, i64* %7, align 8
  %21 = sub i64 %19, %20
  %22 = load i32, i32* %9, align 4
  %23 = zext i32 %22 to i64
  %24 = lshr i64 %21, %23
  %25 = load i64, i64* @tlb_single_page_flush_ceiling, align 8
  %26 = icmp ugt i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %18, %5
  store i64 0, i64* %7, align 8
  %28 = load i64, i64* @TLB_FLUSH_ALL, align 8
  store i64 %28, i64* %8, align 8
  br label %29

29:                                               ; preds = %27, %18
  %30 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %31 = call i32 @inc_mm_tlb_gen(%struct.mm_struct* %30)
  store i32 %31, i32* %12, align 4
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %12, align 4
  %38 = call %struct.flush_tlb_info* @get_flush_tlb_info(%struct.mm_struct* %32, i64 %33, i64 %34, i32 %35, i32 %36, i32 %37)
  store %struct.flush_tlb_info* %38, %struct.flush_tlb_info** %11, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @cpu_tlbstate, i32 0, i32 0), align 4
  %41 = call %struct.mm_struct* @this_cpu_read(i32 %40)
  %42 = icmp eq %struct.mm_struct* %39, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %29
  %44 = call i32 (...) @lockdep_assert_irqs_enabled()
  %45 = call i32 (...) @local_irq_disable()
  %46 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %11, align 8
  %47 = load i32, i32* @TLB_LOCAL_MM_SHOOTDOWN, align 4
  %48 = call i32 @flush_tlb_func_local(%struct.flush_tlb_info* %46, i32 %47)
  %49 = call i32 (...) @local_irq_enable()
  br label %50

50:                                               ; preds = %43, %29
  %51 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %52 = call i32 @mm_cpumask(%struct.mm_struct* %51)
  %53 = load i32, i32* %13, align 4
  %54 = call i64 @cpumask_any_but(i32 %52, i32 %53)
  %55 = load i64, i64* @nr_cpu_ids, align 8
  %56 = icmp slt i64 %54, %55
  br i1 %56, label %57, label %62

57:                                               ; preds = %50
  %58 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %59 = call i32 @mm_cpumask(%struct.mm_struct* %58)
  %60 = load %struct.flush_tlb_info*, %struct.flush_tlb_info** %11, align 8
  %61 = call i32 @flush_tlb_others(i32 %59, %struct.flush_tlb_info* %60)
  br label %62

62:                                               ; preds = %57, %50
  %63 = call i32 (...) @put_flush_tlb_info()
  %64 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @inc_mm_tlb_gen(%struct.mm_struct*) #1

declare dso_local %struct.flush_tlb_info* @get_flush_tlb_info(%struct.mm_struct*, i64, i64, i32, i32, i32) #1

declare dso_local %struct.mm_struct* @this_cpu_read(i32) #1

declare dso_local i32 @lockdep_assert_irqs_enabled(...) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @flush_tlb_func_local(%struct.flush_tlb_info*, i32) #1

declare dso_local i32 @local_irq_enable(...) #1

declare dso_local i64 @cpumask_any_but(i32, i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @flush_tlb_others(i32, %struct.flush_tlb_info*) #1

declare dso_local i32 @put_flush_tlb_info(...) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
