; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_range.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_tlb-r3k.c_local_flush_tlb_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }

@current_cpu_data = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@KSEG0 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_range(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %15 = call i64 @cpu_asid_mask(%struct.TYPE_3__* @current_cpu_data)
  store i64 %15, i64* %7, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %8, align 8
  %19 = call i32 (...) @smp_processor_id()
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %22 = call i64 @cpu_context(i32 %20, %struct.mm_struct* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %95

24:                                               ; preds = %3
  %25 = load i64, i64* %11, align 8
  %26 = call i32 @local_irq_save(i64 %25)
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %5, align 8
  %29 = sub i64 %27, %28
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = add i64 %29, %32
  %34 = load i64, i64* @PAGE_SHIFT, align 8
  %35 = lshr i64 %33, %34
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i64, i64* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @current_cpu_data, i32 0, i32 0), align 8
  %38 = icmp ule i64 %36, %37
  br i1 %38, label %39, label %89

39:                                               ; preds = %24
  %40 = call i64 (...) @read_c0_entryhi()
  %41 = load i64, i64* %7, align 8
  %42 = and i64 %40, %41
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %9, align 4
  %45 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %46 = call i64 @cpu_context(i32 %44, %struct.mm_struct* %45)
  %47 = load i64, i64* %7, align 8
  %48 = and i64 %46, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %13, align 4
  %50 = load i64, i64* @PAGE_MASK, align 8
  %51 = load i64, i64* %5, align 8
  %52 = and i64 %51, %50
  store i64 %52, i64* %5, align 8
  %53 = load i32, i32* @PAGE_SIZE, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = load i64, i64* %6, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %6, align 8
  %58 = load i64, i64* @PAGE_MASK, align 8
  %59 = load i64, i64* %6, align 8
  %60 = and i64 %59, %58
  store i64 %60, i64* %6, align 8
  br label %61

61:                                               ; preds = %84, %83, %39
  %62 = load i64, i64* %5, align 8
  %63 = load i64, i64* %6, align 8
  %64 = icmp ult i64 %62, %63
  br i1 %64, label %65, label %86

65:                                               ; preds = %61
  %66 = load i64, i64* %5, align 8
  %67 = load i32, i32* %13, align 4
  %68 = sext i32 %67 to i64
  %69 = or i64 %66, %68
  %70 = trunc i64 %69 to i32
  %71 = call i32 @write_c0_entryhi(i32 %70)
  %72 = load i32, i32* @PAGE_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %5, align 8
  %76 = call i32 (...) @tlb_probe()
  %77 = call i32 (...) @read_c0_index()
  store i32 %77, i32* %14, align 4
  %78 = call i32 @write_c0_entrylo0(i32 0)
  %79 = load i32, i32* @KSEG0, align 4
  %80 = call i32 @write_c0_entryhi(i32 %79)
  %81 = load i32, i32* %14, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %65
  br label %61

84:                                               ; preds = %65
  %85 = call i32 (...) @tlb_write_indexed()
  br label %61

86:                                               ; preds = %61
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @write_c0_entryhi(i32 %87)
  br label %92

89:                                               ; preds = %24
  %90 = load %struct.mm_struct*, %struct.mm_struct** %8, align 8
  %91 = call i32 @drop_mmu_context(%struct.mm_struct* %90)
  br label %92

92:                                               ; preds = %89, %86
  %93 = load i64, i64* %11, align 8
  %94 = call i32 @local_irq_restore(i64 %93)
  br label %95

95:                                               ; preds = %92, %3
  ret void
}

declare dso_local i64 @cpu_asid_mask(%struct.TYPE_3__*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @cpu_context(i32, %struct.mm_struct*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @read_c0_entryhi(...) #1

declare dso_local i32 @write_c0_entryhi(i32) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_c0_index(...) #1

declare dso_local i32 @write_c0_entrylo0(i32) #1

declare dso_local i32 @tlb_write_indexed(...) #1

declare dso_local i32 @drop_mmu_context(%struct.mm_struct*) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
