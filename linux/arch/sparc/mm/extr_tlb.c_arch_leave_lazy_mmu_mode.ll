; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tlb.c_arch_leave_lazy_mmu_mode.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tlb.c_arch_leave_lazy_mmu_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tlb_batch = type { i64, i64 }

@tlb_batch = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @arch_leave_lazy_mmu_mode() #0 {
  %1 = alloca %struct.tlb_batch*, align 8
  %2 = call %struct.tlb_batch* @this_cpu_ptr(i32* @tlb_batch)
  store %struct.tlb_batch* %2, %struct.tlb_batch** %1, align 8
  %3 = load %struct.tlb_batch*, %struct.tlb_batch** %1, align 8
  %4 = getelementptr inbounds %struct.tlb_batch, %struct.tlb_batch* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %0
  %8 = call i32 (...) @flush_tlb_pending()
  br label %9

9:                                                ; preds = %7, %0
  %10 = load %struct.tlb_batch*, %struct.tlb_batch** %1, align 8
  %11 = getelementptr inbounds %struct.tlb_batch, %struct.tlb_batch* %10, i32 0, i32 0
  store i64 0, i64* %11, align 8
  ret void
}

declare dso_local %struct.tlb_batch* @this_cpu_ptr(i32*) #1

declare dso_local i32 @flush_tlb_pending(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
