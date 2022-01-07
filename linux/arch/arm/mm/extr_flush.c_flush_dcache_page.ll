; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_dcache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_flush.c_flush_dcache_page.c"
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
  br label %67

8:                                                ; preds = %1
  %9 = call i32 (...) @cache_ops_need_broadcast()
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %26, label %11

11:                                               ; preds = %8
  %12 = call i64 (...) @cache_is_vipt_nonaliasing()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %11
  %15 = load i32, i32* @PG_dcache_clean, align 4
  %16 = load %struct.page*, %struct.page** %2, align 8
  %17 = getelementptr inbounds %struct.page, %struct.page* %16, i32 0, i32 0
  %18 = call i64 @test_bit(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %14
  %21 = load i32, i32* @PG_dcache_clean, align 4
  %22 = load %struct.page*, %struct.page** %2, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i32 @clear_bit(i32 %21, i32* %23)
  br label %25

25:                                               ; preds = %20, %14
  br label %67

26:                                               ; preds = %11, %8
  %27 = load %struct.page*, %struct.page** %2, align 8
  %28 = call %struct.address_space* @page_mapping_file(%struct.page* %27)
  store %struct.address_space* %28, %struct.address_space** %3, align 8
  %29 = call i32 (...) @cache_ops_need_broadcast()
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %26
  %32 = load %struct.address_space*, %struct.address_space** %3, align 8
  %33 = icmp ne %struct.address_space* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %31
  %35 = load %struct.page*, %struct.page** %2, align 8
  %36 = call i32 @page_mapcount(%struct.page* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %43, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* @PG_dcache_clean, align 4
  %40 = load %struct.page*, %struct.page** %2, align 8
  %41 = getelementptr inbounds %struct.page, %struct.page* %40, i32 0, i32 0
  %42 = call i32 @clear_bit(i32 %39, i32* %41)
  br label %67

43:                                               ; preds = %34, %31, %26
  %44 = load %struct.address_space*, %struct.address_space** %3, align 8
  %45 = load %struct.page*, %struct.page** %2, align 8
  %46 = call i32 @__flush_dcache_page(%struct.address_space* %44, %struct.page* %45)
  %47 = load %struct.address_space*, %struct.address_space** %3, align 8
  %48 = icmp ne %struct.address_space* %47, null
  br i1 %48, label %49, label %56

49:                                               ; preds = %43
  %50 = call i64 (...) @cache_is_vivt()
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.address_space*, %struct.address_space** %3, align 8
  %54 = load %struct.page*, %struct.page** %2, align 8
  %55 = call i32 @__flush_dcache_aliases(%struct.address_space* %53, %struct.page* %54)
  br label %62

56:                                               ; preds = %49, %43
  %57 = load %struct.address_space*, %struct.address_space** %3, align 8
  %58 = icmp ne %struct.address_space* %57, null
  br i1 %58, label %59, label %61

59:                                               ; preds = %56
  %60 = call i32 (...) @__flush_icache_all()
  br label %61

61:                                               ; preds = %59, %56
  br label %62

62:                                               ; preds = %61, %52
  %63 = load i32, i32* @PG_dcache_clean, align 4
  %64 = load %struct.page*, %struct.page** %2, align 8
  %65 = getelementptr inbounds %struct.page, %struct.page* %64, i32 0, i32 0
  %66 = call i32 @set_bit(i32 %63, i32* %65)
  br label %67

67:                                               ; preds = %7, %25, %62, %38
  ret void
}

declare dso_local %struct.page* @ZERO_PAGE(i32) #1

declare dso_local i32 @cache_ops_need_broadcast(...) #1

declare dso_local i64 @cache_is_vipt_nonaliasing(...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local %struct.address_space* @page_mapping_file(%struct.page*) #1

declare dso_local i32 @page_mapcount(%struct.page*) #1

declare dso_local i32 @__flush_dcache_page(%struct.address_space*, %struct.page*) #1

declare dso_local i64 @cache_is_vivt(...) #1

declare dso_local i32 @__flush_dcache_aliases(%struct.address_space*, %struct.page*) #1

declare dso_local i32 @__flush_icache_all(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
