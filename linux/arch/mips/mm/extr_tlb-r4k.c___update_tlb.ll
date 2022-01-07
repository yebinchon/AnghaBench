; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c___update_tlb.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r4k.c___update_tlb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64 }
%struct.vm_area_struct = type { i64 }
%struct.TYPE_6__ = type { i64, i32 }

@current = common dso_local global %struct.TYPE_7__* null, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@cpu_has_mmid = common dso_local global i64 0, align 8
@current_cpu_data = common dso_local global i32 0, align 4
@HPAGE_SIZE = common dso_local global i32 0, align 4
@PM_DEFAULT_MASK = common dso_local global i32 0, align 4
@PM_HUGE_MASK = common dso_local global i32 0, align 4
@_PFNX_MASK = common dso_local global i32 0, align 4
@cpu_has_xpa = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__update_tlb(%struct.vm_area_struct* %0, i64 %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_6__*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = bitcast %struct.TYPE_6__* %5 to { i64, i32 }*
  %16 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 0
  store i64 %2, i64* %16, align 8
  %17 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %15, i32 0, i32 1
  store i32 %3, i32* %17, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i64 %1, i64* %7, align 8
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %20, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  br label %101

26:                                               ; preds = %4
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = call i32 (...) @htw_stop()
  %30 = load i32, i32* @PAGE_MASK, align 4
  %31 = shl i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, %32
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* @cpu_has_mmid, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %26
  %38 = load i64, i64* %7, align 8
  %39 = call i32 @write_c0_entryhi(i64 %38)
  br label %49

40:                                               ; preds = %26
  %41 = call i32 (...) @read_c0_entryhi()
  %42 = call i32 @cpu_asid_mask(i32* @current_cpu_data)
  %43 = and i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i64, i64* %7, align 8
  %45 = load i32, i32* %14, align 4
  %46 = sext i32 %45 to i64
  %47 = or i64 %44, %46
  %48 = call i32 @write_c0_entryhi(i64 %47)
  br label %49

49:                                               ; preds = %40, %37
  %50 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %51 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* %7, align 8
  %54 = call i32* @pgd_offset(i64 %52, i64 %53)
  store i32* %54, i32** %9, align 8
  %55 = call i32 (...) @mtc0_tlbw_hazard()
  %56 = call i32 (...) @tlb_probe()
  %57 = call i32 (...) @tlb_probe_hazard()
  %58 = load i32*, i32** %9, align 8
  %59 = load i64, i64* %7, align 8
  %60 = call i32* @pud_offset(i32* %58, i64 %59)
  store i32* %60, i32** %10, align 8
  %61 = load i32*, i32** %10, align 8
  %62 = load i64, i64* %7, align 8
  %63 = call i32* @pmd_offset(i32* %61, i64 %62)
  store i32* %63, i32** %11, align 8
  %64 = call i32 (...) @read_c0_index()
  store i32 %64, i32* %13, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = load i64, i64* %7, align 8
  %67 = call %struct.TYPE_6__* @pte_offset_map(i32* %65, i64 %66)
  store %struct.TYPE_6__* %67, %struct.TYPE_6__** %12, align 8
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 1
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %12, align 8
  %70 = bitcast %struct.TYPE_6__* %68 to { i64, i32 }*
  %71 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %70, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = call i64 @pte_val(i64 %72, i32 %74)
  %76 = call i64 @pte_to_entrylo(i64 %75)
  %77 = call i32 @write_c0_entrylo0(i64 %76)
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %79 = bitcast %struct.TYPE_6__* %78 to { i64, i32 }*
  %80 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds { i64, i32 }, { i64, i32 }* %79, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @pte_val(i64 %81, i32 %83)
  %85 = call i64 @pte_to_entrylo(i64 %84)
  %86 = call i32 @write_c0_entrylo1(i64 %85)
  %87 = call i32 (...) @mtc0_tlbw_hazard()
  %88 = load i32, i32* %13, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %49
  %91 = call i32 (...) @tlb_write_random()
  br label %94

92:                                               ; preds = %49
  %93 = call i32 (...) @tlb_write_indexed()
  br label %94

94:                                               ; preds = %92, %90
  %95 = call i32 (...) @tlbw_use_hazard()
  %96 = call i32 (...) @htw_start()
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %98 = call i32 @flush_micro_tlb_vm(%struct.vm_area_struct* %97)
  %99 = load i64, i64* %8, align 8
  %100 = call i32 @local_irq_restore(i64 %99)
  br label %101

101:                                              ; preds = %94, %25
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @htw_stop(...) #1

declare dso_local i32 @write_c0_entryhi(i64) #1

declare dso_local i32 @read_c0_entryhi(...) #1

declare dso_local i32 @cpu_asid_mask(i32*) #1

declare dso_local i32* @pgd_offset(i64, i64) #1

declare dso_local i32 @mtc0_tlbw_hazard(...) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @tlb_probe_hazard(...) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local %struct.TYPE_6__* @pte_offset_map(i32*, i64) #1

declare dso_local i32 @write_c0_entrylo0(i64) #1

declare dso_local i64 @pte_to_entrylo(i64) #1

declare dso_local i64 @pte_val(i64, i32) #1

declare dso_local i32 @write_c0_entrylo1(i64) #1

declare dso_local i32 @tlb_write_random(...) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @tlbw_use_hazard(...) #1

declare dso_local i32 @htw_start(...) #1

declare dso_local i32 @flush_micro_tlb_vm(%struct.vm_area_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
