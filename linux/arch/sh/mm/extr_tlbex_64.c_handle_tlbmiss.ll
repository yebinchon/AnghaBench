; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbex_64.c_handle_tlbmiss.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_tlbex_64.c_handle_tlbmiss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@TASK_SIZE = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64)* @handle_tlbmiss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @handle_tlbmiss(i64 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %11 = load i64, i64* %5, align 8
  %12 = inttoptr i64 %11 to i8*
  %13 = call i64 @is_vmalloc_addr(i8* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i64, i64* %5, align 8
  %17 = call i32* @pgd_offset_k(i64 %16)
  store i32* %17, i32** %6, align 8
  br label %40

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @TASK_SIZE, align 8
  %21 = icmp uge i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %18
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  br label %28

28:                                               ; preds = %22, %18
  %29 = phi i1 [ true, %18 ], [ %27, %22 ]
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28
  store i32 1, i32* %3, align 4
  br label %94

34:                                               ; preds = %28
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i64, i64* %5, align 8
  %39 = call i32* @pgd_offset(i32 %37, i64 %38)
  store i32* %39, i32** %6, align 8
  br label %40

40:                                               ; preds = %34, %15
  %41 = load i32*, i32** %6, align 8
  %42 = load i64, i64* %5, align 8
  %43 = call i32* @pud_offset(i32* %41, i64 %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @pud_none(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %53, label %48

48:                                               ; preds = %40
  %49 = load i32*, i32** %7, align 8
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pud_present(i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %48, %40
  store i32 1, i32* %3, align 4
  br label %94

54:                                               ; preds = %48
  %55 = load i32*, i32** %7, align 8
  %56 = load i64, i64* %5, align 8
  %57 = call i32* @pmd_offset(i32* %55, i64 %56)
  store i32* %57, i32** %8, align 8
  %58 = load i32*, i32** %8, align 8
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @pmd_none(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = load i32*, i32** %8, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pmd_present(i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %62, %54
  store i32 1, i32* %3, align 4
  br label %94

68:                                               ; preds = %62
  %69 = load i32*, i32** %8, align 8
  %70 = load i64, i64* %5, align 8
  %71 = call i32* @pte_offset_kernel(i32* %69, i64 %70)
  store i32* %71, i32** %9, align 8
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* %10, align 4
  %75 = call i64 @pte_none(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %68
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @pte_present(i32 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %77, %68
  store i32 1, i32* %3, align 4
  br label %94

82:                                               ; preds = %77
  %83 = load i32, i32* %10, align 4
  %84 = call i64 @pte_val(i32 %83)
  %85 = load i64, i64* %4, align 8
  %86 = and i64 %84, %85
  %87 = load i64, i64* %4, align 8
  %88 = icmp ne i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %94

90:                                               ; preds = %82
  %91 = load i64, i64* %5, align 8
  %92 = load i32*, i32** %9, align 8
  %93 = call i32 @update_mmu_cache(i32* null, i64 %91, i32* %92)
  store i32 0, i32* %3, align 4
  br label %94

94:                                               ; preds = %90, %89, %81, %67, %53, %33
  %95 = load i32, i32* %3, align 4
  ret i32 %95
}

declare dso_local i64 @is_vmalloc_addr(i8*) #1

declare dso_local i32* @pgd_offset_k(i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @pgd_offset(i32, i64) #1

declare dso_local i32* @pud_offset(i32*, i64) #1

declare dso_local i64 @pud_none(i32) #1

declare dso_local i32 @pud_present(i32) #1

declare dso_local i32* @pmd_offset(i32*, i64) #1

declare dso_local i64 @pmd_none(i32) #1

declare dso_local i32 @pmd_present(i32) #1

declare dso_local i32* @pte_offset_kernel(i32*, i64) #1

declare dso_local i64 @pte_none(i32) #1

declare dso_local i32 @pte_present(i32) #1

declare dso_local i64 @pte_val(i32) #1

declare dso_local i32 @update_mmu_cache(i32*, i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
