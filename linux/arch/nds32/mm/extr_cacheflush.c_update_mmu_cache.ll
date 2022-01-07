; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_cacheflush.c_update_mmu_cache.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_cacheflush.c_update_mmu_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.vm_area_struct = type { i64, i32 }
%struct.page = type { i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@NDS32_SR_TLB_VPN = common dso_local global i32 0, align 4
@PG_dcache_dirty = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_mmu_cache(%struct.vm_area_struct* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i64 @pte_pfn(i32 %12)
  store i64 %13, i64* %8, align 8
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @pfn_valid(i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %70

18:                                               ; preds = %3
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %38

26:                                               ; preds = %18
  %27 = load i64, i64* %9, align 8
  %28 = call i32 @local_irq_save(i64 %27)
  %29 = load i64, i64* %5, align 8
  %30 = load i32, i32* @NDS32_SR_TLB_VPN, align 4
  %31 = call i32 @__nds32__mtsr_dsb(i64 %29, i32 %30)
  %32 = load i32*, i32** %6, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @__nds32__tlbop_rwr(i32 %33)
  %35 = call i32 (...) @__nds32__isb()
  %36 = load i64, i64* %9, align 8
  %37 = call i32 @local_irq_restore(i64 %36)
  br label %38

38:                                               ; preds = %26, %18
  %39 = load i64, i64* %8, align 8
  %40 = call %struct.page* @pfn_to_page(i64 %39)
  store %struct.page* %40, %struct.page** %7, align 8
  %41 = load i32, i32* @PG_dcache_dirty, align 4
  %42 = load %struct.page*, %struct.page** %7, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = call i64 @test_and_clear_bit(i32 %41, i32* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %38
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @VM_EXEC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %70

53:                                               ; preds = %46, %38
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @local_irq_save(i64 %54)
  %56 = load %struct.page*, %struct.page** %7, align 8
  %57 = call i64 @kmap_atomic(%struct.page* %56)
  store i64 %57, i64* %10, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @VM_EXEC, align 4
  %63 = and i32 %61, %62
  %64 = call i32 @cpu_cache_wbinval_page(i64 %58, i32 %63)
  %65 = load i64, i64* %10, align 8
  %66 = inttoptr i64 %65 to i8*
  %67 = call i32 @kunmap_atomic(i8* %66)
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @local_irq_restore(i64 %68)
  br label %70

70:                                               ; preds = %17, %53, %46
  ret void
}

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @__nds32__mtsr_dsb(i64, i32) #1

declare dso_local i32 @__nds32__tlbop_rwr(i32) #1

declare dso_local i32 @__nds32__isb(...) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @test_and_clear_bit(i32, i32*) #1

declare dso_local i64 @kmap_atomic(%struct.page*) #1

declare dso_local i32 @cpu_cache_wbinval_page(i64, i32) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
