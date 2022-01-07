; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_pte_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_pte_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@MMU_FTR_HPTE_TABLE = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @set_pte_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_pte_filter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @MMU_FTR_HPTE_TABLE, align 4
  %6 = call i64 @mmu_has_feature(i32 %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @set_pte_filter_hash(i32 %9)
  store i32 %10, i32* %2, align 4
  br label %54

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pte_exec(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %11
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @pte_looks_normal(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15, %11
  %20 = load i32, i32* %3, align 4
  store i32 %20, i32* %2, align 4
  br label %54

21:                                               ; preds = %15
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.page* @maybe_pte_to_page(i32 %22)
  store %struct.page* %23, %struct.page** %4, align 8
  %24 = load %struct.page*, %struct.page** %4, align 8
  %25 = icmp ne %struct.page* %24, null
  %26 = xor i1 %25, true
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load i32, i32* %3, align 4
  store i32 %31, i32* %2, align 4
  br label %54

32:                                               ; preds = %21
  %33 = load i32, i32* @PG_arch_1, align 4
  %34 = load %struct.page*, %struct.page** %4, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i64 @test_bit(i32 %33, i32* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %3, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %32
  %41 = call i64 (...) @is_exec_fault()
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.page*, %struct.page** %4, align 8
  %45 = call i32 @flush_dcache_icache_page(%struct.page* %44)
  %46 = load i32, i32* @PG_arch_1, align 4
  %47 = load %struct.page*, %struct.page** %4, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  %50 = load i32, i32* %3, align 4
  store i32 %50, i32* %2, align 4
  br label %54

51:                                               ; preds = %40
  %52 = load i32, i32* %3, align 4
  %53 = call i32 @pte_exprotect(i32 %52)
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %51, %43, %38, %30, %19, %8
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i32 @set_pte_filter_hash(i32) #1

declare dso_local i32 @pte_exec(i32) #1

declare dso_local i32 @pte_looks_normal(i32) #1

declare dso_local %struct.page* @maybe_pte_to_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @is_exec_fault(...) #1

declare dso_local i32 @flush_dcache_icache_page(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pte_exprotect(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
