; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_set_direct_map_invalid_noflush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_set_direct_map_invalid_noflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.page_change_data = type { i32, i32 }

@PTE_VALID = common dso_local global i32 0, align 4
@rodata_full = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@change_page_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_direct_map_invalid_noflush(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page_change_data, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %4, i32 0, i32 0
  %6 = load i32, i32* @PTE_VALID, align 4
  %7 = call i32 @__pgprot(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %4, i32 0, i32 1
  %9 = call i32 @__pgprot(i32 0)
  store i32 %9, i32* %8, align 4
  %10 = load i32, i32* @rodata_full, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %19

13:                                               ; preds = %1
  %14 = load %struct.page*, %struct.page** %3, align 8
  %15 = call i64 @page_address(%struct.page* %14)
  %16 = load i32, i32* @PAGE_SIZE, align 4
  %17 = load i32, i32* @change_page_range, align 4
  %18 = call i32 @apply_to_page_range(i32* @init_mm, i64 %15, i32 %16, i32 %17, %struct.page_change_data* %4)
  store i32 %18, i32* %2, align 4
  br label %19

19:                                               ; preds = %13, %12
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @apply_to_page_range(i32*, i64, i32, i32, %struct.page_change_data*) #1

declare dso_local i64 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
