; ModuleID = '/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_set_direct_map_default_noflush.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm64/mm/extr_pageattr.c_set_direct_map_default_noflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.page_change_data = type { i32, i32 }

@PTE_RDONLY = common dso_local global i32 0, align 4
@PTE_VALID = common dso_local global i32 0, align 4
@PTE_WRITE = common dso_local global i32 0, align 4
@rodata_full = common dso_local global i32 0, align 4
@init_mm = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@change_page_range = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @set_direct_map_default_noflush(%struct.page* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.page*, align 8
  %4 = alloca %struct.page_change_data, align 4
  store %struct.page* %0, %struct.page** %3, align 8
  %5 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %4, i32 0, i32 0
  %6 = load i32, i32* @PTE_RDONLY, align 4
  %7 = call i32 @__pgprot(i32 %6)
  store i32 %7, i32* %5, align 4
  %8 = getelementptr inbounds %struct.page_change_data, %struct.page_change_data* %4, i32 0, i32 1
  %9 = load i32, i32* @PTE_VALID, align 4
  %10 = load i32, i32* @PTE_WRITE, align 4
  %11 = or i32 %9, %10
  %12 = call i32 @__pgprot(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* @rodata_full, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

16:                                               ; preds = %1
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i64 @page_address(%struct.page* %17)
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = load i32, i32* @change_page_range, align 4
  %21 = call i32 @apply_to_page_range(i32* @init_mm, i64 %18, i32 %19, i32 %20, %struct.page_change_data* %4)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %16, %15
  %23 = load i32, i32* %2, align 4
  ret i32 %23
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
