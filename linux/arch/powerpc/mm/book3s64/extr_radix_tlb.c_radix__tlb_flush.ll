; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix__tlb_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_radix_tlb.c_radix__tlb_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmu_gather = type { i32, i64, i64, i64, i64, %struct.mm_struct* }
%struct.mm_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @radix__tlb_flush(%struct.mmu_gather* %0) #0 {
  %2 = alloca %struct.mmu_gather*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.mmu_gather* %0, %struct.mmu_gather** %2, align 8
  store i32 0, i32* %3, align 4
  %8 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %9 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %8, i32 0, i32 5
  %10 = load %struct.mm_struct*, %struct.mm_struct** %9, align 8
  store %struct.mm_struct* %10, %struct.mm_struct** %4, align 8
  %11 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %12 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %5, align 4
  %14 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %15 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  %17 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %18 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %7, align 8
  %20 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %21 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %20, i32 0, i32 4
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %1
  %25 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %26 = call i32 @__flush_all_mm(%struct.mm_struct* %25, i32 1)
  br label %62

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @radix_get_mmu_psize(i32 %28)
  store i32 %29, i32* %3, align 4
  %30 = icmp eq i32 %29, -1
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %33 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %38 = call i32 @radix__flush_tlb_mm(%struct.mm_struct* %37)
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %41 = call i32 @radix__flush_all_mm(%struct.mm_struct* %40)
  br label %42

42:                                               ; preds = %39, %36
  br label %61

43:                                               ; preds = %27
  %44 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %45 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %43
  %49 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %50 = load i64, i64* %6, align 8
  %51 = load i64, i64* %7, align 8
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @radix__flush_tlb_range_psize(%struct.mm_struct* %49, i64 %50, i64 %51, i32 %52)
  br label %60

54:                                               ; preds = %43
  %55 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %56 = load i64, i64* %6, align 8
  %57 = load i64, i64* %7, align 8
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @radix__flush_tlb_pwc_range_psize(%struct.mm_struct* %55, i64 %56, i64 %57, i32 %58)
  br label %60

60:                                               ; preds = %54, %48
  br label %61

61:                                               ; preds = %60, %42
  br label %62

62:                                               ; preds = %61, %24
  %63 = load %struct.mmu_gather*, %struct.mmu_gather** %2, align 8
  %64 = getelementptr inbounds %struct.mmu_gather, %struct.mmu_gather* %63, i32 0, i32 3
  store i64 0, i64* %64, align 8
  ret void
}

declare dso_local i32 @__flush_all_mm(%struct.mm_struct*, i32) #1

declare dso_local i32 @radix_get_mmu_psize(i32) #1

declare dso_local i32 @radix__flush_tlb_mm(%struct.mm_struct*) #1

declare dso_local i32 @radix__flush_all_mm(%struct.mm_struct*) #1

declare dso_local i32 @radix__flush_tlb_range_psize(%struct.mm_struct*, i64, i64, i32) #1

declare dso_local i32 @radix__flush_tlb_pwc_range_psize(%struct.mm_struct*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
