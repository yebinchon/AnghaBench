; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_iomap_32.c_kmap_atomic_prot_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_iomap_32.c_kmap_atomic_prot_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@kmap_pte = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic_prot_pfn(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = call i32 (...) @preempt_disable()
  %9 = call i32 (...) @pagefault_disable()
  %10 = call i32 (...) @kmap_atomic_idx_push()
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @KM_TYPE_NR, align 4
  %13 = call i32 (...) @smp_processor_id()
  %14 = mul nsw i32 %12, %13
  %15 = add nsw i32 %11, %14
  store i32 %15, i32* %6, align 4
  %16 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i64 @__fix_to_virt(i64 %19)
  store i64 %20, i64* %5, align 8
  %21 = load i64, i64* @kmap_pte, align 8
  %22 = load i32, i32* %6, align 4
  %23 = sext i32 %22 to i64
  %24 = sub nsw i64 %21, %23
  %25 = load i64, i64* %3, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @pfn_pte(i64 %25, i32 %26)
  %28 = call i32 @set_pte(i64 %24, i32 %27)
  %29 = call i32 (...) @arch_flush_lazy_mmu_mode()
  %30 = load i64, i64* %5, align 8
  %31 = inttoptr i64 %30 to i8*
  ret i8* %31
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @kmap_atomic_idx_push(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @set_pte(i64, i32) #1

declare dso_local i32 @pfn_pte(i64, i32) #1

declare dso_local i32 @arch_flush_lazy_mmu_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
