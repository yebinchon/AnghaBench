; ModuleID = '/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arc/mm/extr_cache.c_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@PG_dc_clean = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_user_highpage(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %8, align 8
  %12 = load %struct.page*, %struct.page** %6, align 8
  %13 = call i8* @kmap_atomic(%struct.page* %12)
  store i8* %13, i8** %9, align 8
  %14 = load %struct.page*, %struct.page** %5, align 8
  %15 = call i8* @kmap_atomic(%struct.page* %14)
  store i8* %15, i8** %10, align 8
  store i32 0, i32* %11, align 4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i64 @page_mapcount(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %29

19:                                               ; preds = %4
  %20 = load i8*, i8** %9, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @addr_not_cache_congruent(i8* %20, i64 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %19
  %25 = load i8*, i8** %9, align 8
  %26 = ptrtoint i8* %25 to i64
  %27 = load i64, i64* %7, align 8
  %28 = call i32 @__flush_dcache_page(i64 %26, i64 %27)
  store i32 1, i32* %11, align 4
  br label %29

29:                                               ; preds = %24, %19, %4
  %30 = load i8*, i8** %10, align 8
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @copy_page(i8* %30, i8* %31)
  %33 = load i32, i32* @PG_dc_clean, align 4
  %34 = load %struct.page*, %struct.page** %5, align 8
  %35 = getelementptr inbounds %struct.page, %struct.page* %34, i32 0, i32 0
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = load i32, i32* %11, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %29
  %40 = load i8*, i8** %9, align 8
  %41 = ptrtoint i8* %40 to i64
  %42 = load i8*, i8** %9, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = call i32 @__flush_dcache_page(i64 %41, i64 %43)
  %45 = load i32, i32* @PG_dc_clean, align 4
  %46 = load %struct.page*, %struct.page** %6, align 8
  %47 = getelementptr inbounds %struct.page, %struct.page* %46, i32 0, i32 0
  %48 = call i32 @set_bit(i32 %45, i32* %47)
  br label %54

49:                                               ; preds = %29
  %50 = load i32, i32* @PG_dc_clean, align 4
  %51 = load %struct.page*, %struct.page** %6, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  %53 = call i32 @clear_bit(i32 %50, i32* %52)
  br label %54

54:                                               ; preds = %49, %39
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @kunmap_atomic(i8* %55)
  %57 = load i8*, i8** %9, align 8
  %58 = call i32 @kunmap_atomic(i8* %57)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @addr_not_cache_congruent(i8*, i64) #1

declare dso_local i32 @__flush_dcache_page(i64, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
