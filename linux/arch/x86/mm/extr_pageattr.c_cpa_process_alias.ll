; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_cpa_process_alias.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c_cpa_process_alias.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32, i64*, i32, i64 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_OFFSET = common dso_local global i64 0, align 8
@max_pfn_mapped = common dso_local global i32 0, align 4
@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@CPA_ARRAY = common dso_local global i32 0, align 4
@__START_KERNEL_map = common dso_local global i64 0, align 8
@_brk_end = common dso_local global i64 0, align 8
@_text = common dso_local global i64 0, align 8
@phys_base = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cpa_data*)* @cpa_process_alias to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpa_process_alias(%struct.cpa_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cpa_data*, align 8
  %4 = alloca %struct.cpa_data, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.cpa_data* %0, %struct.cpa_data** %3, align 8
  %8 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %9 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @PAGE_SHIFT, align 4
  %12 = shl i32 %10, %11
  %13 = call i64 @__va(i32 %12)
  store i64 %13, i64* %5, align 8
  %14 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %15 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %18 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = add nsw i32 %19, 1
  %21 = call i32 @pfn_range_is_mapped(i32 %16, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %60

24:                                               ; preds = %1
  %25 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %26 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %27 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = call i64 @__cpa_addr(%struct.cpa_data* %25, i64 %28)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @PAGE_OFFSET, align 8
  %32 = load i64, i64* @PAGE_OFFSET, align 8
  %33 = load i32, i32* @max_pfn_mapped, align 4
  %34 = load i32, i32* @PAGE_SHIFT, align 4
  %35 = shl i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = add i64 %32, %36
  %38 = call i32 @within(i64 %30, i64 %31, i64 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %59, label %40

40:                                               ; preds = %24
  %41 = load %struct.cpa_data*, %struct.cpa_data** %3, align 8
  %42 = bitcast %struct.cpa_data* %4 to i8*
  %43 = bitcast %struct.cpa_data* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %42, i8* align 8 %43, i64 32, i1 false)
  %44 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %4, i32 0, i32 1
  store i64* %5, i64** %44, align 8
  %45 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %46 = load i32, i32* @CPA_ARRAY, align 4
  %47 = or i32 %45, %46
  %48 = xor i32 %47, -1
  %49 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %4, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = and i32 %50, %48
  store i32 %51, i32* %49, align 8
  %52 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %4, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %4, i32 0)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %40
  %57 = load i32, i32* %7, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %24
  store i32 0, i32* %2, align 4
  br label %60

60:                                               ; preds = %59, %56, %23
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i64 @__va(i32) #1

declare dso_local i32 @pfn_range_is_mapped(i32, i32) #1

declare dso_local i64 @__cpa_addr(%struct.cpa_data*, i64) #1

declare dso_local i32 @within(i64, i64, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
