; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_init.c_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@cpu_has_ic_fills_f_dc = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i64 0, align 8

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
  %13 = load i64, i64* @cpu_has_dc_aliases, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.page*, %struct.page** %6, align 8
  %17 = call i64 @page_mapcount(%struct.page* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %15
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @Page_dcache_dirty(%struct.page* %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %31, label %23

23:                                               ; preds = %19
  %24 = load %struct.page*, %struct.page** %6, align 8
  %25 = load i64, i64* %7, align 8
  %26 = call i8* @kmap_coherent(%struct.page* %24, i64 %25)
  store i8* %26, i8** %9, align 8
  %27 = load i8*, i8** %10, align 8
  %28 = load i8*, i8** %9, align 8
  %29 = call i32 @copy_page(i8* %27, i8* %28)
  %30 = call i32 (...) @kunmap_coherent()
  br label %39

31:                                               ; preds = %19, %15, %4
  %32 = load %struct.page*, %struct.page** %6, align 8
  %33 = call i8* @kmap_atomic(%struct.page* %32)
  store i8* %33, i8** %9, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = load i8*, i8** %9, align 8
  %36 = call i32 @copy_page(i8* %34, i8* %35)
  %37 = load i8*, i8** %9, align 8
  %38 = call i32 @kunmap_atomic(i8* %37)
  br label %39

39:                                               ; preds = %31, %23
  %40 = load i32, i32* @cpu_has_ic_fills_f_dc, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %39
  %43 = load i8*, i8** %10, align 8
  %44 = ptrtoint i8* %43 to i64
  %45 = load i64, i64* %7, align 8
  %46 = load i64, i64* @PAGE_MASK, align 8
  %47 = and i64 %45, %46
  %48 = call i64 @pages_do_alias(i64 %44, i64 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42, %39
  %51 = load i8*, i8** %10, align 8
  %52 = ptrtoint i8* %51 to i64
  %53 = call i32 @flush_data_cache_page(i64 %52)
  br label %54

54:                                               ; preds = %50, %42
  %55 = load i8*, i8** %10, align 8
  %56 = call i32 @kunmap_atomic(i8* %55)
  %57 = call i32 (...) @smp_wmb()
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i64 @page_mapcount(%struct.page*) #1

declare dso_local i32 @Page_dcache_dirty(%struct.page*) #1

declare dso_local i8* @kmap_coherent(%struct.page*, i64) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @kunmap_coherent(...) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

declare dso_local i64 @pages_do_alias(i64, i64) #1

declare dso_local i32 @flush_data_cache_page(i64) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
