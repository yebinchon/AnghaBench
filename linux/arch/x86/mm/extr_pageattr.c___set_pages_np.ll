; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___set_pages_np.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/mm/extr_pageattr.c___set_pages_np.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.cpa_data = type { i64*, i32, i32, i32, i32, i32* }

@_PAGE_PRESENT = common dso_local global i32 0, align 4
@_PAGE_RW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, i32)* @__set_pages_np to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__set_pages_np(%struct.page* %0, i32 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.cpa_data, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @page_address(%struct.page* %7)
  store i64 %8, i64* %5, align 8
  %9 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 0
  store i64* %5, i64** %9, align 8
  %10 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %10, align 8
  %12 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 3
  %14 = load i32, i32* @_PAGE_PRESENT, align 4
  %15 = load i32, i32* @_PAGE_RW, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @__pgprot(i32 %16)
  store i32 %17, i32* %13, align 8
  %18 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 4
  %19 = call i32 @__pgprot(i32 0)
  store i32 %19, i32* %18, align 4
  %20 = getelementptr inbounds %struct.cpa_data, %struct.cpa_data* %6, i32 0, i32 5
  store i32* null, i32** %20, align 8
  %21 = call i32 @__change_page_attr_set_clr(%struct.cpa_data* %6, i32 0)
  ret i32 %21
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @__change_page_attr_set_clr(%struct.cpa_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
