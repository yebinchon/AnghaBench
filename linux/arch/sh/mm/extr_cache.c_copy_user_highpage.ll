; ModuleID = '/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sh/mm/extr_cache.c_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@boot_cpu_data = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@PG_dcache_clean = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_EXEC = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @copy_user_highpage(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %8, align 8
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = call i8* @kmap_atomic(%struct.page* %11)
  store i8* %12, i8** %10, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @boot_cpu_data, i32 0, i32 0, i32 0), align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %34

15:                                               ; preds = %4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i64 @page_mapcount(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %34

19:                                               ; preds = %15
  %20 = load i32, i32* @PG_dcache_clean, align 4
  %21 = load %struct.page*, %struct.page** %6, align 8
  %22 = getelementptr inbounds %struct.page, %struct.page* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %19
  %26 = load %struct.page*, %struct.page** %6, align 8
  %27 = load i64, i64* %7, align 8
  %28 = call i8* @kmap_coherent(%struct.page* %26, i64 %27)
  store i8* %28, i8** %9, align 8
  %29 = load i8*, i8** %10, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = call i32 @copy_page(i8* %29, i8* %30)
  %32 = load i8*, i8** %9, align 8
  %33 = call i32 @kunmap_coherent(i8* %32)
  br label %42

34:                                               ; preds = %19, %15, %4
  %35 = load %struct.page*, %struct.page** %6, align 8
  %36 = call i8* @kmap_atomic(%struct.page* %35)
  store i8* %36, i8** %9, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %9, align 8
  %39 = call i32 @copy_page(i8* %37, i8* %38)
  %40 = load i8*, i8** %9, align 8
  %41 = call i32 @kunmap_atomic(i8* %40)
  br label %42

42:                                               ; preds = %34, %25
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = call i64 @pages_do_alias(i64 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %57, label %50

50:                                               ; preds = %42
  %51 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %52 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @VM_EXEC, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %50, %42
  %58 = load i8*, i8** %10, align 8
  %59 = load i32, i32* @PAGE_SIZE, align 4
  %60 = call i32 @__flush_purge_region(i8* %58, i32 %59)
  br label %61

61:                                               ; preds = %57, %50
  %62 = load i8*, i8** %10, align 8
  %63 = call i32 @kunmap_atomic(i8* %62)
  %64 = call i32 (...) @smp_wmb()
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap_coherent(i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @__flush_purge_region(i8*, i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
