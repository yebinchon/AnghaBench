; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_highmem_32.c_kmap_atomic_prot.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_highmem_32.c_kmap_atomic_prot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@KM_TYPE_NR = common dso_local global i32 0, align 4
@FIX_KMAP_BEGIN = common dso_local global i64 0, align 8
@kmap_pte = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kmap_atomic_prot(%struct.page* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = call i32 (...) @preempt_disable()
  %10 = call i32 (...) @pagefault_disable()
  %11 = load %struct.page*, %struct.page** %4, align 8
  %12 = call i32 @PageHighMem(%struct.page* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.page*, %struct.page** %4, align 8
  %16 = call i8* @page_address(%struct.page* %15)
  store i8* %16, i8** %3, align 8
  br label %52

17:                                               ; preds = %2
  %18 = call i32 (...) @kmap_atomic_idx_push()
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @KM_TYPE_NR, align 4
  %21 = call i32 (...) @smp_processor_id()
  %22 = mul nsw i32 %20, %21
  %23 = add nsw i32 %19, %22
  store i32 %23, i32* %7, align 4
  %24 = load i64, i64* @FIX_KMAP_BEGIN, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = call i64 @__fix_to_virt(i64 %27)
  store i64 %28, i64* %6, align 8
  %29 = load i32*, i32** @kmap_pte, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = sub i64 0, %31
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @pte_none(i32 %34)
  %36 = icmp ne i32 %35, 0
  %37 = xor i1 %36, true
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load i32*, i32** @kmap_pte, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = sub i64 0, %42
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load %struct.page*, %struct.page** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @mk_pte(%struct.page* %45, i32 %46)
  %48 = call i32 @set_pte(i32* %44, i32 %47)
  %49 = call i32 (...) @arch_flush_lazy_mmu_mode()
  %50 = load i64, i64* %6, align 8
  %51 = inttoptr i64 %50 to i8*
  store i8* %51, i8** %3, align 8
  br label %52

52:                                               ; preds = %17, %14
  %53 = load i8*, i8** %3, align 8
  ret i8* %53
}

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @pagefault_disable(...) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @kmap_atomic_idx_push(...) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @__fix_to_virt(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @pte_none(i32) #1

declare dso_local i32 @set_pte(i32*, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @arch_flush_lazy_mmu_mode(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
