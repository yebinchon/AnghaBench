; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_pte.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/ptdump/extr_hashpagetable.c_walk_pte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pg_state = type { i32 }

@PTRS_PER_PTE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@VMALLOC_END = common dso_local global i64 0, align 8
@mmu_vmalloc_psize = common dso_local global i64 0, align 8
@mmu_io_psize = common dso_local global i64 0, align 8
@CONFIG_PPC_64K_PAGES = common dso_local global i32 0, align 4
@H_PAGE_COMBO = common dso_local global i64 0, align 8
@H_PAGE_4K_PFN = common dso_local global i64 0, align 8
@H_PAGE_HASHPTE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [77 x i8] c"page probably bolted before linux pagetables were set: addr:%lx, pteval:%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pg_state*, i32*, i64)* @walk_pte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @walk_pte(%struct.pg_state* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.pg_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.pg_state* %0, %struct.pg_state** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = call i32* @pte_offset_kernel(i32* %13, i32 0)
  store i32* %14, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %15

15:                                               ; preds = %75, %3
  %16 = load i32, i32* %11, align 4
  %17 = load i32, i32* @PTRS_PER_PTE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %80

19:                                               ; preds = %15
  %20 = load i64, i64* %6, align 8
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = mul nsw i32 %21, %22
  %24 = sext i32 %23 to i64
  %25 = add i64 %20, %24
  store i64 %25, i64* %8, align 8
  %26 = load i32*, i32** %7, align 8
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @pte_val(i32 %27)
  store i64 %28, i64* %9, align 8
  %29 = load i64, i64* %8, align 8
  %30 = load i64, i64* @VMALLOC_END, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %19
  %33 = load i64, i64* @mmu_vmalloc_psize, align 8
  store i64 %33, i64* %10, align 8
  br label %36

34:                                               ; preds = %19
  %35 = load i64, i64* @mmu_io_psize, align 8
  store i64 %35, i64* %10, align 8
  br label %36

36:                                               ; preds = %34, %32
  %37 = load i32, i32* @CONFIG_PPC_64K_PAGES, align 4
  %38 = call i64 @IS_ENABLED(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %54

40:                                               ; preds = %36
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* @H_PAGE_COMBO, align 8
  %43 = and i64 %41, %42
  %44 = load i64, i64* @H_PAGE_COMBO, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %52, label %46

46:                                               ; preds = %40
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @H_PAGE_4K_PFN, align 8
  %49 = and i64 %47, %48
  %50 = load i64, i64* @H_PAGE_4K_PFN, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46, %40
  %53 = load i64, i64* @mmu_io_psize, align 8
  store i64 %53, i64* %10, align 8
  br label %54

54:                                               ; preds = %52, %46, %36
  %55 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %56 = load i64, i64* %8, align 8
  %57 = load i64, i64* %10, align 8
  %58 = call i32 @hpte_find(%struct.pg_state* %55, i64 %56, i64 %57)
  store i32 %58, i32* %12, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %61 = and i64 %59, %60
  %62 = load i64, i64* @H_PAGE_HASHPTE, align 8
  %63 = icmp ne i64 %61, %62
  br i1 %63, label %64, label %74

64:                                               ; preds = %54
  %65 = load i32, i32* %12, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.pg_state*, %struct.pg_state** %4, align 8
  %69 = getelementptr inbounds %struct.pg_state, %struct.pg_state* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i64, i64* %8, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @seq_printf(i32 %70, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i64 %71, i64 %72)
  br label %74

74:                                               ; preds = %67, %64, %54
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %11, align 4
  %78 = load i32*, i32** %7, align 8
  %79 = getelementptr inbounds i32, i32* %78, i32 1
  store i32* %79, i32** %7, align 8
  br label %15

80:                                               ; preds = %15
  ret void
}

declare dso_local i32* @pte_offset_kernel(i32*, i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i32 @hpte_find(%struct.pg_state*, i64, i64) #1

declare dso_local i32 @seq_printf(i32, i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
