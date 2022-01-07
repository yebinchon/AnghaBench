; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_cpa_flush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_cpa_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32 }

@early_boot_irqs_disabled = common dso_local global i32 0, align 4
@X86_FEATURE_CLFLUSH = common dso_local global i32 0, align 4
@tlb_single_page_flush_ceiling = common dso_local global i32 0, align 4
@__cpa_flush_tlb = common dso_local global i32 0, align 4
@_PAGE_PRESENT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cpa_data*, i32)* @cpa_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpa_flush(%struct.cpa_data* %0, i32 %1) #0 {
  %3 = alloca %struct.cpa_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cpa_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.cpa_data* %0, %struct.cpa_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  store %struct.cpa_data* %10, %struct.cpa_data** %5, align 8
  %11 = call i64 (...) @irqs_disabled()
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* @early_boot_irqs_disabled, align 4
  %15 = icmp ne i32 %14, 0
  %16 = xor i1 %15, true
  br label %17

17:                                               ; preds = %13, %2
  %18 = phi i1 [ false, %2 ], [ %16, %13 ]
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %17
  %24 = load i32, i32* @X86_FEATURE_CLFLUSH, align 4
  %25 = call i32 @static_cpu_has(i32 %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @cpa_flush_all(i32 %28)
  br label %81

30:                                               ; preds = %23, %17
  %31 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %32 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @tlb_single_page_flush_ceiling, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %30
  %37 = load i32, i32* @__cpa_flush_tlb, align 4
  %38 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %39 = call i32 @on_each_cpu(i32 %37, %struct.cpa_data* %38, i32 1)
  br label %42

40:                                               ; preds = %30
  %41 = call i32 (...) @flush_tlb_all()
  br label %42

42:                                               ; preds = %40, %36
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %42
  br label %81

46:                                               ; preds = %42
  %47 = call i32 (...) @mb()
  store i32 0, i32* %6, align 4
  br label %48

48:                                               ; preds = %76, %46
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %51 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %79

54:                                               ; preds = %48
  %55 = load %struct.cpa_data*, %struct.cpa_data** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i64 @__cpa_addr(%struct.cpa_data* %55, i32 %56)
  store i64 %57, i64* %7, align 8
  %58 = load i64, i64* %7, align 8
  %59 = call i32* @lookup_address(i64 %58, i32* %8)
  store i32* %59, i32** %9, align 8
  %60 = load i32*, i32** %9, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %75

62:                                               ; preds = %54
  %63 = load i32*, i32** %9, align 8
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @pte_val(i32 %64)
  %66 = load i32, i32* @_PAGE_PRESENT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %62
  %70 = load i64, i64* %7, align 8
  %71 = call i64 @fix_addr(i64 %70)
  %72 = inttoptr i64 %71 to i8*
  %73 = load i32, i32* @PAGE_SIZE, align 4
  %74 = call i32 @clflush_cache_range_opt(i8* %72, i32 %73)
  br label %75

75:                                               ; preds = %69, %62, %54
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %48

79:                                               ; preds = %48
  %80 = call i32 (...) @mb()
  br label %81

81:                                               ; preds = %79, %45, %27
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @irqs_disabled(...) #1

declare dso_local i32 @static_cpu_has(i32) #1

declare dso_local i32 @cpa_flush_all(i32) #1

declare dso_local i32 @on_each_cpu(i32, %struct.cpa_data*, i32) #1

declare dso_local i32 @flush_tlb_all(...) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @__cpa_addr(%struct.cpa_data*, i32) #1

declare dso_local i32* @lookup_address(i64, i32*) #1

declare dso_local i32 @pte_val(i32) #1

declare dso_local i32 @clflush_cache_range_opt(i8*, i32) #1

declare dso_local i64 @fix_addr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
