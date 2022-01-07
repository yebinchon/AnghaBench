; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_tlb.c_local_flush_tlb_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }

@MM_CTXT_NO_ASID = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @local_flush_tlb_page(%struct.vm_area_struct* %0, i64 %1) #0 {
  %3 = alloca %struct.vm_area_struct*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = call i32 (...) @smp_processor_id()
  store i32 %7, i32* %5, align 4
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* %5, align 4
  %14 = call i64 @asid_mm(i32 %12, i32 %13)
  %15 = load i64, i64* @MM_CTXT_NO_ASID, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %29

17:                                               ; preds = %2
  %18 = load i64, i64* %4, align 8
  %19 = load i64, i64* @PAGE_MASK, align 8
  %20 = and i64 %18, %19
  %21 = load %struct.vm_area_struct*, %struct.vm_area_struct** %3, align 8
  %22 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %5, align 4
  %25 = call i64 @hw_pid(i32 %23, i32 %24)
  %26 = or i64 %20, %25
  %27 = call i32 @tlb_entry_erase(i64 %26)
  %28 = call i32 (...) @utlb_invalidate()
  br label %29

29:                                               ; preds = %17, %2
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @local_irq_restore(i64 %30)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i64 @asid_mm(i32, i32) #1

declare dso_local i32 @tlb_entry_erase(i64) #1

declare dso_local i64 @hw_pid(i32, i32) #1

declare dso_local i32 @utlb_invalidate(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
