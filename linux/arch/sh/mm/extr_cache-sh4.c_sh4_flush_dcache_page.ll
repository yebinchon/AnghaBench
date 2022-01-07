; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache-sh4.c_sh4_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@CACHE_OC_ADDRESS_ARRAY = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sh4_flush_dcache_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sh4_flush_dcache_page(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.address_space*, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.page*
  store %struct.page* %7, %struct.page** %3, align 8
  %8 = load %struct.page*, %struct.page** %3, align 8
  %9 = call i64 @page_address(%struct.page* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.page*, %struct.page** %3, align 8
  %11 = call %struct.address_space* @page_mapping_file(%struct.page* %10)
  store %struct.address_space* %11, %struct.address_space** %5, align 8
  %12 = load %struct.address_space*, %struct.address_space** %5, align 8
  %13 = icmp ne %struct.address_space* %12, null
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.address_space*, %struct.address_space** %5, align 8
  %16 = call i32 @mapping_mapped(%struct.address_space* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @PG_dcache_clean, align 4
  %20 = load %struct.page*, %struct.page** %3, align 8
  %21 = getelementptr inbounds %struct.page, %struct.page* %20, i32 0, i32 0
  %22 = call i32 @clear_bit(i32 %19, i32* %21)
  br label %32

23:                                               ; preds = %14, %1
  %24 = load i64, i64* @CACHE_OC_ADDRESS_ARRAY, align 8
  %25 = load i64, i64* %4, align 8
  %26 = load i64, i64* @shm_align_mask, align 8
  %27 = and i64 %25, %26
  %28 = or i64 %24, %27
  %29 = load %struct.page*, %struct.page** %3, align 8
  %30 = call i32 @page_to_phys(%struct.page* %29)
  %31 = call i32 @flush_cache_one(i64 %28, i32 %30)
  br label %32

32:                                               ; preds = %23, %18
  %33 = call i32 (...) @wmb()
  ret void
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @mapping_mapped(%struct.address_space*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @flush_cache_one(i64, i32) #1

declare dso_local i32 @page_to_phys(%struct.page*) #1

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
