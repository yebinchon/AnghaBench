; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_get_new_mmu_context.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_init_64.c_get_new_mmu_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@ctx_alloc_lock = common dso_local global i32 0, align 4
@CTX_PGSZ_MASK = common dso_local global i64 0, align 8
@tlb_context_cache = common dso_local global i32 0, align 4
@CTX_NR_MASK = common dso_local global i32 0, align 4
@mmu_context_bmap = common dso_local global i64* null, align 8
@CTX_NR_BITS = common dso_local global i32 0, align 4
@CTX_VERSION_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @get_new_mmu_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  %6 = call i32 @spin_lock(i32* @ctx_alloc_lock)
  br label %7

7:                                                ; preds = %47, %1
  %8 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %9 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = call i32 @CTX_VALID(i64 %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %7
  br label %84

16:                                               ; preds = %7
  %17 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %18 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @CTX_PGSZ_MASK, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %5, align 8
  %23 = load i32, i32* @tlb_context_cache, align 4
  %24 = add nsw i32 %23, 1
  %25 = load i32, i32* @CTX_NR_MASK, align 4
  %26 = and i32 %24, %25
  %27 = sext i32 %26 to i64
  store i64 %27, i64* %3, align 8
  %28 = load i64*, i64** @mmu_context_bmap, align 8
  %29 = load i32, i32* @CTX_NR_BITS, align 4
  %30 = shl i32 1, %29
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %3, align 8
  %33 = trunc i64 %32 to i32
  %34 = call i64 @find_next_zero_bit(i64* %28, i64 %31, i32 %33)
  store i64 %34, i64* %4, align 8
  %35 = load i64, i64* %4, align 8
  %36 = load i32, i32* @CTX_NR_BITS, align 4
  %37 = shl i32 1, %36
  %38 = sext i32 %37 to i64
  %39 = icmp uge i64 %35, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %16
  %41 = load i64*, i64** @mmu_context_bmap, align 8
  %42 = load i64, i64* %3, align 8
  %43 = call i64 @find_next_zero_bit(i64* %41, i64 %42, i32 1)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = load i64, i64* %3, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = call i32 (...) @mmu_context_wrap()
  br label %7

49:                                               ; preds = %40
  br label %50

50:                                               ; preds = %49, %16
  %51 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %52 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %50
  %57 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %58 = call i32 @mm_cpumask(%struct.mm_struct* %57)
  %59 = call i32 @cpumask_clear(i32 %58)
  br label %60

60:                                               ; preds = %56, %50
  %61 = load i64, i64* %4, align 8
  %62 = and i64 %61, 63
  %63 = shl i64 1, %62
  %64 = load i64*, i64** @mmu_context_bmap, align 8
  %65 = load i64, i64* %4, align 8
  %66 = lshr i64 %65, 6
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = or i64 %68, %63
  store i64 %69, i64* %67, align 8
  %70 = load i32, i32* @tlb_context_cache, align 4
  %71 = load i32, i32* @CTX_VERSION_MASK, align 4
  %72 = and i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %4, align 8
  %75 = or i64 %74, %73
  store i64 %75, i64* %4, align 8
  %76 = load i64, i64* %4, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* @tlb_context_cache, align 4
  %78 = load i64, i64* %4, align 8
  %79 = load i64, i64* %5, align 8
  %80 = or i64 %78, %79
  %81 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %82 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store i64 %80, i64* %83, align 8
  br label %84

84:                                               ; preds = %60, %15
  %85 = call i32 @spin_unlock(i32* @ctx_alloc_lock)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @CTX_VALID(i64) #1

declare dso_local i64 @find_next_zero_bit(i64*, i64, i32) #1

declare dso_local i32 @mmu_context_wrap(...) #1

declare dso_local i32 @cpumask_clear(i32) #1

declare dso_local i32 @mm_cpumask(%struct.mm_struct*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
