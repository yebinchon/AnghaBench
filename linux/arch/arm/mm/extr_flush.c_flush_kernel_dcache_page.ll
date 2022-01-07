; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_kernel_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_kernel_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@CONFIG_HIGHMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_kernel_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = call i64 (...) @cache_is_vivt()
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %1
  %8 = call i64 (...) @cache_is_vipt_aliasing()
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %7, %1
  %11 = load %struct.page*, %struct.page** %2, align 8
  %12 = call %struct.address_space* @page_mapping_file(%struct.page* %11)
  store %struct.address_space* %12, %struct.address_space** %3, align 8
  %13 = load %struct.address_space*, %struct.address_space** %3, align 8
  %14 = icmp ne %struct.address_space* %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load %struct.address_space*, %struct.address_space** %3, align 8
  %17 = call i64 @mapping_mapped(%struct.address_space* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %33

19:                                               ; preds = %15, %10
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = call i8* @page_address(%struct.page* %20)
  store i8* %21, i8** %4, align 8
  %22 = load i32, i32* @CONFIG_HIGHMEM, align 4
  %23 = call i32 @IS_ENABLED(i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i8*, i8** %4, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %25, %19
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = call i32 @__cpuc_flush_dcache_area(i8* %29, i32 %30)
  br label %32

32:                                               ; preds = %28, %25
  br label %33

33:                                               ; preds = %32, %15
  br label %34

34:                                               ; preds = %33, %7
  ret void
}

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i64 @cache_is_vipt_aliasing(...) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i64 @mapping_mapped(%struct.address_space*) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @__cpuc_flush_dcache_area(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
