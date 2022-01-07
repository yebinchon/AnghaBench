; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_access_flags_filter.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/extr_pgtable.c_set_access_flags_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@MMU_FTR_HPTE_TABLE = common dso_local global i32 0, align 4
@PG_arch_1 = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.vm_area_struct*, i32)* @set_access_flags_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_access_flags_filter(i32 %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @MMU_FTR_HPTE_TABLE, align 4
  %10 = call i64 @mmu_has_feature(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %4, align 4
  br label %53

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %14
  %18 = load i32, i32* %5, align 4
  %19 = call i64 @pte_exec(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = call i32 (...) @is_exec_fault()
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %21, %17, %14
  %25 = load i32, i32* %5, align 4
  store i32 %25, i32* %4, align 4
  br label %53

26:                                               ; preds = %21
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.page* @maybe_pte_to_page(i32 %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  %31 = xor i1 %30, true
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %50

36:                                               ; preds = %26
  %37 = load i32, i32* @PG_arch_1, align 4
  %38 = load %struct.page*, %struct.page** %8, align 8
  %39 = getelementptr inbounds %struct.page, %struct.page* %38, i32 0, i32 0
  %40 = call i64 @test_bit(i32 %37, i32* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  br label %50

43:                                               ; preds = %36
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = call i32 @flush_dcache_icache_page(%struct.page* %44)
  %46 = load i32, i32* @PG_arch_1, align 4
  %47 = load %struct.page*, %struct.page** %8, align 8
  %48 = getelementptr inbounds %struct.page, %struct.page* %47, i32 0, i32 0
  %49 = call i32 @set_bit(i32 %46, i32* %48)
  br label %50

50:                                               ; preds = %43, %42, %35
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @pte_mkexec(i32 %51)
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %50, %24, %12
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i64 @mmu_has_feature(i32) #1

declare dso_local i64 @pte_exec(i32) #1

declare dso_local i32 @is_exec_fault(...) #1

declare dso_local %struct.page* @maybe_pte_to_page(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @flush_dcache_icache_page(%struct.page*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @pte_mkexec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
