; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_cacheflush.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_cacheflush.c_flush_dcache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.address_space = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_dcache_page(%struct.page* %0) #0 {
  %2 = alloca %struct.page*, align 8
  %3 = alloca %struct.address_space*, align 8
  store %struct.page* %0, %struct.page** %2, align 8
  %4 = load %struct.page*, %struct.page** %2, align 8
  %5 = call %struct.page* @ZERO_PAGE(i32 0)
  %6 = icmp eq %struct.page* %4, %5
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.page*, %struct.page** %2, align 8
  %10 = call %struct.address_space* @page_mapping_file(%struct.page* %9)
  store %struct.address_space* %10, %struct.address_space** %3, align 8
  %11 = load %struct.address_space*, %struct.address_space** %3, align 8
  %12 = icmp ne %struct.address_space* %11, null
  br i1 %12, label %13, label %22

13:                                               ; preds = %8
  %14 = load %struct.page*, %struct.page** %2, align 8
  %15 = call i32 @page_mapcount(%struct.page* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* @PG_dcache_clean, align 4
  %19 = load %struct.page*, %struct.page** %2, align 8
  %20 = getelementptr inbounds %struct.page, %struct.page* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  br label %33

22:                                               ; preds = %13, %8
  %23 = call i32 (...) @dcache_wbinv_all()
  %24 = load %struct.address_space*, %struct.address_space** %3, align 8
  %25 = icmp ne %struct.address_space* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %22
  %27 = call i32 (...) @icache_inv_all()
  br label %28

28:                                               ; preds = %26, %22
  %29 = load i32, i32* @PG_dcache_clean, align 4
  %30 = load %struct.page*, %struct.page** %2, align 8
  %31 = getelementptr inbounds %struct.page, %struct.page* %30, i32 0, i32 0
  %32 = call i32 @set_bit(i32 %29, i32* %31)
  br label %33

33:                                               ; preds = %7, %28, %17
  ret void
}

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @dcache_wbinv_all(...) #1

declare dso_local i32 @icache_inv_all(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
