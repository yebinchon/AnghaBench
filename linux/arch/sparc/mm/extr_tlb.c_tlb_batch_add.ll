; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tlb.c_tlb_batch_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/mm/extr_tlb.c_tlb_batch_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }
%struct.address_space = type { i32 }
%struct.page = type { i32 }

@tlb_type = common dso_local global i64 0, align 8
@hypervisor = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tlb_batch_add(%struct.mm_struct* %0, i64 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.address_space*, align 8
  %16 = alloca %struct.page*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %17 = load i64, i64* @tlb_type, align 8
  %18 = load i64, i64* @hypervisor, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %57

20:                                               ; preds = %6
  %21 = load i32, i32* %10, align 4
  %22 = call i64 @pte_dirty(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %57

24:                                               ; preds = %20
  %25 = load i32, i32* %10, align 4
  %26 = call i64 @pte_pfn(i32 %25)
  store i64 %26, i64* %14, align 8
  %27 = load i64, i64* %14, align 8
  %28 = call i32 @pfn_valid(i64 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  br label %58

31:                                               ; preds = %24
  %32 = load i64, i64* %14, align 8
  %33 = call %struct.page* @pfn_to_page(i64 %32)
  store %struct.page* %33, %struct.page** %16, align 8
  %34 = load %struct.page*, %struct.page** %16, align 8
  %35 = call i64 @PageReserved(%struct.page* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %58

38:                                               ; preds = %31
  %39 = load %struct.page*, %struct.page** %16, align 8
  %40 = call %struct.address_space* @page_mapping_file(%struct.page* %39)
  store %struct.address_space* %40, %struct.address_space** %15, align 8
  %41 = load %struct.address_space*, %struct.address_space** %15, align 8
  %42 = icmp ne %struct.address_space* %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %38
  br label %58

44:                                               ; preds = %38
  %45 = load %struct.page*, %struct.page** %16, align 8
  %46 = call i64 @page_address(%struct.page* %45)
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i64, i64* %8, align 8
  %49 = xor i64 %47, %48
  %50 = and i64 %49, 8192
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %44
  %53 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %54 = load %struct.page*, %struct.page** %16, align 8
  %55 = call i32 @flush_dcache_page_all(%struct.mm_struct* %53, %struct.page* %54)
  br label %56

56:                                               ; preds = %52, %44
  br label %57

57:                                               ; preds = %56, %20, %6
  br label %58

58:                                               ; preds = %57, %43, %37, %30
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %68, label %61

61:                                               ; preds = %58
  %62 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %63 = load i64, i64* %8, align 8
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @pte_exec(i32 %64)
  %66 = load i32, i32* %12, align 4
  %67 = call i32 @tlb_batch_add_one(%struct.mm_struct* %62, i64 %63, i32 %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %58
  ret void
}

declare dso_local i64 @pte_dirty(i32) #1

declare dso_local i64 @pte_pfn(i32) #1

declare dso_local i32 @pfn_valid(i64) #1

declare dso_local %struct.page* @pfn_to_page(i64) #1

declare dso_local i64 @PageReserved(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @flush_dcache_page_all(%struct.mm_struct*, %struct.page*) #1

declare dso_local i32 @tlb_batch_add_one(%struct.mm_struct*, i64, i32, i32) #1

declare dso_local i32 @pte_exec(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
