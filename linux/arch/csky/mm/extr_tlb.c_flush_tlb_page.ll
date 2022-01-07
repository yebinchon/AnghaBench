; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/mm/extr_tlb.c_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@TLB_ENTRY_SIZE_MASK = common dso_local global i64 0, align 8
@ASID_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %10 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @cpu_asid(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i64, i64* @TLB_ENTRY_SIZE_MASK, align 8
  %14 = load i64, i64* %4, align 8
  %15 = and i64 %14, %13
  store i64 %15, i64* %4, align 8
  %16 = load i64, i64* %8, align 8
  %17 = call i32 @local_irq_save(i64 %16)
  %18 = call i32 (...) @read_mmu_entryhi()
  %19 = load i32, i32* @ASID_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %6, align 4
  %21 = load i64, i64* %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = or i64 %21, %23
  %25 = call i32 @write_mmu_entryhi(i64 %24)
  %26 = call i32 (...) @tlb_probe()
  %27 = call i32 (...) @read_mmu_index()
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp sge i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = call i32 (...) @tlb_invalid_indexed()
  br label %32

32:                                               ; preds = %30, %2
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* %5, align 4
  %35 = call i32 @restore_asid_inv_utlb(i32 %33, i32 %34)
  %36 = load i64, i64* %8, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  ret void
}

declare dso_local i32 @cpu_asid(i32) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @read_mmu_entryhi(...) #1

declare dso_local i32 @write_mmu_entryhi(i64) #1

declare dso_local i32 @tlb_probe(...) #1

declare dso_local i32 @read_mmu_index(...) #1

declare dso_local i32 @tlb_invalid_indexed(...) #1

declare dso_local i32 @restore_asid_inv_utlb(i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
