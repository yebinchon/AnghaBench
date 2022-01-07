; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_context.c_check_switch_mmu_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_context.c_check_switch_mmu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.mm_struct = type { i32 }

@cpu_has_mmid = common dso_local global i32 0, align 4
@cpu_data = common dso_local global %struct.TYPE_2__* null, align 8
@mmid_version = common dso_local global i32 0, align 4
@cpu_mmid_lock = common dso_local global i32 0, align 4
@tlb_flush_pending = common dso_local global i32 0, align 4
@cpu_has_vtag_icache = common dso_local global i64 0, align 8
@boot_cpu_data = common dso_local global i32 0, align 4
@cpu_has_shared_ftlb_entries = common dso_local global i64 0, align 8
@cpu_sibling_map = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @check_switch_mmu_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* @cpu_has_mmid, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %17, label %10

10:                                               ; preds = %1
  %11 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %12 = call i32 @check_mmu_context(%struct.mm_struct* %11)
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %15 = call i32 @cpu_asid(i32 %13, %struct.mm_struct* %14)
  %16 = call i32 @write_c0_entryhi(i32 %15)
  br label %89

17:                                               ; preds = %1
  %18 = load i32, i32* %3, align 4
  %19 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %20 = call i32 @cpu_context(i32 %18, %struct.mm_struct* %19)
  store i32 %20, i32* %4, align 4
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %22 = load i32, i32* %3, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @READ_ONCE(i32 %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %46

30:                                               ; preds = %17
  %31 = load i32, i32* %3, align 4
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @atomic64_read(i32* @mmid_version)
  %34 = call i32 @asid_versions_eq(i32 %31, i32 %32, i32 %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %30
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %38 = load i32, i32* %3, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %5, align 4
  %43 = load i32, i32* %4, align 4
  %44 = call i32 @cmpxchg_relaxed(i32* %41, i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %71, label %46

46:                                               ; preds = %36, %30, %17
  %47 = load i64, i64* %6, align 8
  %48 = call i32 @raw_spin_lock_irqsave(i32* @cpu_mmid_lock, i64 %47)
  %49 = load i32, i32* %3, align 4
  %50 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %51 = call i32 @cpu_context(i32 %49, %struct.mm_struct* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %3, align 4
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @atomic64_read(i32* @mmid_version)
  %55 = call i32 @asid_versions_eq(i32 %52, i32 %53, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %46
  %58 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %59 = call i32 @get_new_mmid(%struct.mm_struct* %58)
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %57, %46
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cpu_data, align 8
  %62 = load i32, i32* %3, align 4
  %63 = zext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* %4, align 4
  %68 = call i32 @WRITE_ONCE(i32 %66, i32 %67)
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @raw_spin_unlock_irqrestore(i32* @cpu_mmid_lock, i64 %69)
  br label %71

71:                                               ; preds = %60, %36
  %72 = load i32, i32* %3, align 4
  %73 = call i64 @cpumask_test_cpu(i32 %72, i32* @tlb_flush_pending)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %84

75:                                               ; preds = %71
  %76 = load i64, i64* @cpu_has_vtag_icache, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = call i32 (...) @flush_icache_all()
  br label %80

80:                                               ; preds = %78, %75
  %81 = call i32 (...) @local_flush_tlb_all()
  %82 = load i32, i32* %3, align 4
  %83 = call i32 @cpumask_clear_cpu(i32 %82, i32* @tlb_flush_pending)
  br label %84

84:                                               ; preds = %80, %71
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @cpu_asid_mask(i32* @boot_cpu_data)
  %87 = and i32 %85, %86
  %88 = call i32 @write_c0_memorymapid(i32 %87)
  br label %89

89:                                               ; preds = %84, %10
  %90 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %91 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @TLBMISS_HANDLER_SETUP_PGD(i32 %92)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @check_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @cpu_asid(i32, %struct.mm_struct*) #1

declare dso_local i32 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @READ_ONCE(i32) #1

declare dso_local i32 @asid_versions_eq(i32, i32, i32) #1

declare dso_local i32 @atomic64_read(i32*) #1

declare dso_local i32 @cmpxchg_relaxed(i32*, i32, i32) #1

declare dso_local i32 @raw_spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @get_new_mmid(%struct.mm_struct*) #1

declare dso_local i32 @WRITE_ONCE(i32, i32) #1

declare dso_local i32 @raw_spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @flush_icache_all(...) #1

declare dso_local i32 @local_flush_tlb_all(...) #1

declare dso_local i32 @cpumask_clear_cpu(i32, i32*) #1

declare dso_local i32 @write_c0_memorymapid(i32) #1

declare dso_local i32 @cpu_asid_mask(i32*) #1

declare dso_local i32 @TLBMISS_HANDLER_SETUP_PGD(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
