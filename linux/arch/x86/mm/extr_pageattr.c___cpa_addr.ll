; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___cpa_addr.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___cpa_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpa_data = type { i32, i64*, %struct.page** }
%struct.page = type { i32 }

@CPA_PAGES_ARRAY = common dso_local global i32 0, align 4
@CPA_ARRAY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.cpa_data*, i64)* @__cpa_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__cpa_addr(%struct.cpa_data* %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.cpa_data*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.page*, align 8
  store %struct.cpa_data* %0, %struct.cpa_data** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %8 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load i32, i32* @CPA_PAGES_ARRAY, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %15 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %14, i32 0, i32 2
  %16 = load %struct.page**, %struct.page*** %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = getelementptr inbounds %struct.page*, %struct.page** %16, i64 %17
  %19 = load %struct.page*, %struct.page** %18, align 8
  store %struct.page* %19, %struct.page** %6, align 8
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @PageHighMem(%struct.page* %20)
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %13
  store i64 0, i64* %3, align 8
  br label %51

25:                                               ; preds = %13
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = call i64 @page_address(%struct.page* %26)
  store i64 %27, i64* %3, align 8
  br label %51

28:                                               ; preds = %2
  %29 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %30 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CPA_ARRAY, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %28
  %36 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %37 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %36, i32 0, i32 1
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %5, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  store i64 %41, i64* %3, align 8
  br label %51

42:                                               ; preds = %28
  %43 = load %struct.cpa_data*, %struct.cpa_data** %4, align 8
  %44 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %43, i32 0, i32 1
  %45 = load i64*, i64** %44, align 8
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @PAGE_SIZE, align 8
  %49 = mul i64 %47, %48
  %50 = add i64 %46, %49
  store i64 %50, i64* %3, align 8
  br label %51

51:                                               ; preds = %42, %35, %25, %24
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PageHighMem(%struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
