; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_copy_from_user_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_copy_from_user_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.vm_area_struct = type { i32 }
%struct.page = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PG_dcache_clean = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_from_user_page(%struct.vm_area_struct* %0, %struct.page* %1, i64 %2, i8* %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.vm_area_struct*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %7, align 8
  store %struct.page* %1, %struct.page** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %41

16:                                               ; preds = %6
  %17 = load %struct.page*, %struct.page** %8, align 8
  %18 = call i64 @page_mapcount(%struct.page* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %41

20:                                               ; preds = %16
  %21 = load i32, i32* @PG_dcache_clean, align 4
  %22 = load %struct.page*, %struct.page** %8, align 8
  %23 = getelementptr inbounds %struct.page, %struct.page* %22, i32 0, i32 0
  %24 = call i64 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %20
  %27 = load %struct.page*, %struct.page** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i8* @kmap_coherent(%struct.page* %27, i64 %28)
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @PAGE_MASK, align 8
  %32 = xor i64 %31, -1
  %33 = and i64 %30, %32
  %34 = getelementptr i8, i8* %29, i64 %33
  store i8* %34, i8** %13, align 8
  %35 = load i8*, i8** %10, align 8
  %36 = load i8*, i8** %13, align 8
  %37 = load i64, i64* %12, align 8
  %38 = call i32 @memcpy(i8* %35, i8* %36, i64 %37)
  %39 = load i8*, i8** %13, align 8
  %40 = call i32 @kunmap_coherent(i8* %39)
  br label %54

41:                                               ; preds = %20, %16, %6
  %42 = load i8*, i8** %10, align 8
  %43 = load i8*, i8** %11, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i32 @memcpy(i8* %42, i8* %43, i64 %44)
  %46 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* @PG_dcache_clean, align 4
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = getelementptr inbounds %struct.page, %struct.page* %50, i32 0, i32 0
  %52 = call i32 @clear_bit(i32 %49, i32* %51)
  br label %53

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53, %26
  ret void
}

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @kunmap_coherent(i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
