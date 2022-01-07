; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c___flush_anon_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c___flush_anon_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PG_dcache_clean = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__flush_anon_page(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.page*, %struct.page** %3, align 8
  %8 = call i64 @page_address(%struct.page* %7)
  store i64 %8, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i64 @pages_do_alias(i64 %9, i64 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %38

13:                                               ; preds = %2
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %32

16:                                               ; preds = %13
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = call i64 @page_mapcount(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %32

20:                                               ; preds = %16
  %21 = load i32, i32* @PG_dcache_clean, align 4
  %22 = load %struct.page*, %struct.page** %3, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %32

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %3, align 8
  %28 = load i64, i64* %4, align 8
  %29 = call i8* @kmap_coherent(%struct.page* %27, i64 %28)
  store i8* %29, i8** %6, align 8
  %30 = load i8*, i8** %6, align 8
  %31 = call i32 @kunmap_coherent(i8* %30)
  br label %37

32:                                               ; preds = %20, %16, %13
  %33 = load i64, i64* %5, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @__flush_purge_region(i8* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %26
  br label %38

38:                                               ; preds = %37, %2
  ret void
}

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @kunmap_coherent(i8*) #1

declare dso_local i32 @__flush_purge_region(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
