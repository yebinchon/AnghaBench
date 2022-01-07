; ModuleID = '/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nios2/mm/extr_cacheflush.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  %4 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %5 = load %struct.page*, %struct.page** %2, align 8
  %6 = call %struct.page* @ZERO_PAGE(i32 0)
  %7 = icmp eq %struct.page* %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %45

9:                                                ; preds = %1
  %10 = load %struct.page*, %struct.page** %2, align 8
  %11 = call %struct.address_space* @page_mapping_file(%struct.page* %10)
  store %struct.address_space* %11, %struct.address_space** %3, align 8
  %12 = load %struct.address_space*, %struct.address_space** %3, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %9
  %15 = load %struct.address_space*, %struct.address_space** %3, align 8
  %16 = call i32 @mapping_mapped(%struct.address_space* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @PG_dcache_clean, align 4
  %20 = load %struct.page*, %struct.page** %2, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %45

23:                                               ; preds = %14, %9
  %24 = load %struct.address_space*, %struct.address_space** %3, align 8
  %25 = load %struct.page*, %struct.page** %2, align 8
  %26 = call i32 @__flush_dcache_page(%struct.address_space* %24, %struct.page* %25)
  %27 = load %struct.address_space*, %struct.address_space** %3, align 8
  %28 = icmp ne %struct.address_space* %27, null
  br i1 %28, label %29, label %40

29:                                               ; preds = %23
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = call i64 @page_address(%struct.page* %30)
  store i64 %31, i64* %4, align 8
  %32 = load %struct.address_space*, %struct.address_space** %3, align 8
  %33 = load %struct.page*, %struct.page** %2, align 8
  %34 = call i32 @flush_aliases(%struct.address_space* %32, %struct.page* %33)
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = load i64, i64* @PAGE_SIZE, align 8
  %38 = add i64 %36, %37
  %39 = call i32 @flush_icache_range(i64 %35, i64 %38)
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* @PG_dcache_clean, align 4
  %42 = load %struct.page*, %struct.page** %2, align 8
  %43 = getelementptr inbounds %struct.page, %struct.page* %42, i32 0, i32 0
  %44 = call i32 @set_bit(i32 %41, i32* %43)
  br label %45

45:                                               ; preds = %8, %40, %18
  ret void
}

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @flush_aliases(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @flush_icache_range(i64, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
