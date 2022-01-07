; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v6.c_v6_copy_user_highpage_aliasing.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v6.c_v6_copy_user_highpage_aliasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@v6_lock = common dso_local global i32 0, align 4
@COPYPAGE_V6_FROM = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@COPYPAGE_V6_TO = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, %struct.page*, i64, %struct.vm_area_struct*)* @v6_copy_user_highpage_aliasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v6_copy_user_highpage_aliasing(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %8, align 8
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @CACHE_COLOUR(i64 %12)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* @PG_dcache_clean, align 4
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = getelementptr inbounds %struct.page, %struct.page* %15, i32 0, i32 0
  %17 = call i32 @test_and_set_bit(i32 %14, i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %24, label %19

19:                                               ; preds = %4
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @page_mapping_file(%struct.page* %20)
  %22 = load %struct.page*, %struct.page** %6, align 8
  %23 = call i32 @__flush_dcache_page(i32 %21, %struct.page* %22)
  br label %24

24:                                               ; preds = %19, %4
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i32 @page_address(%struct.page* %25)
  %27 = call i32 @discard_old_kernel_data(i32 %26)
  %28 = call i32 @raw_spin_lock(i32* @v6_lock)
  %29 = load i32, i32* @COPYPAGE_V6_FROM, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @PAGE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = add i32 %29, %32
  %34 = zext i32 %33 to i64
  store i64 %34, i64* %10, align 8
  %35 = load i32, i32* @COPYPAGE_V6_TO, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @PAGE_SHIFT, align 4
  %38 = shl i32 %36, %37
  %39 = add i32 %35, %38
  %40 = zext i32 %39 to i64
  store i64 %40, i64* %11, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load %struct.page*, %struct.page** %6, align 8
  %43 = load i32, i32* @PAGE_KERNEL, align 4
  %44 = call i32 @mk_pte(%struct.page* %42, i32 %43)
  %45 = call i32 @set_top_pte(i64 %41, i32 %44)
  %46 = load i64, i64* %11, align 8
  %47 = load %struct.page*, %struct.page** %5, align 8
  %48 = load i32, i32* @PAGE_KERNEL, align 4
  %49 = call i32 @mk_pte(%struct.page* %47, i32 %48)
  %50 = call i32 @set_top_pte(i64 %46, i32 %49)
  %51 = load i64, i64* %11, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = load i64, i64* %10, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = call i32 @copy_page(i8* %52, i8* %54)
  %56 = call i32 @raw_spin_unlock(i32* @v6_lock)
  ret void
}

declare dso_local i32 @CACHE_COLOUR(i64) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(i32, %struct.page*) #1

declare dso_local i32 @page_mapping_file(%struct.page*) #1

declare dso_local i32 @discard_old_kernel_data(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @set_top_pte(i64, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @copy_page(i8*, i8*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
