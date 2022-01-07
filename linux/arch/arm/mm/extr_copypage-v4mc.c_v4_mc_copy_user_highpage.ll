; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v4mc.c_v4_mc_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v4mc.c_v4_mc_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

@PG_dcache_clean = common dso_local global i32 0, align 4
@minicache_lock = common dso_local global i32 0, align 4
@COPYPAGE_MINICACHE = common dso_local global i64 0, align 8
@minicache_pgprot = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @v4_mc_copy_user_highpage(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
  %5 = alloca %struct.page*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vm_area_struct*, align 8
  %9 = alloca i8*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.vm_area_struct* %3, %struct.vm_area_struct** %8, align 8
  %10 = load %struct.page*, %struct.page** %5, align 8
  %11 = call i8* @kmap_atomic(%struct.page* %10)
  store i8* %11, i8** %9, align 8
  %12 = load i32, i32* @PG_dcache_clean, align 4
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = getelementptr inbounds %struct.page, %struct.page* %13, i32 0, i32 0
  %15 = call i32 @test_and_set_bit(i32 %12, i32* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %4
  %18 = load %struct.page*, %struct.page** %6, align 8
  %19 = call i32 @page_mapping_file(%struct.page* %18)
  %20 = load %struct.page*, %struct.page** %6, align 8
  %21 = call i32 @__flush_dcache_page(i32 %19, %struct.page* %20)
  br label %22

22:                                               ; preds = %17, %4
  %23 = call i32 @raw_spin_lock(i32* @minicache_lock)
  %24 = load i64, i64* @COPYPAGE_MINICACHE, align 8
  %25 = load %struct.page*, %struct.page** %6, align 8
  %26 = load i32, i32* @minicache_pgprot, align 4
  %27 = call i32 @mk_pte(%struct.page* %25, i32 %26)
  %28 = call i32 @set_top_pte(i64 %24, i32 %27)
  %29 = load i64, i64* @COPYPAGE_MINICACHE, align 8
  %30 = inttoptr i64 %29 to i8*
  %31 = load i8*, i8** %9, align 8
  %32 = call i32 @mc_copy_user_page(i8* %30, i8* %31)
  %33 = call i32 @raw_spin_unlock(i32* @minicache_lock)
  %34 = load i8*, i8** %9, align 8
  %35 = call i32 @kunmap_atomic(i8* %34)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @__flush_dcache_page(i32, %struct.page*) #1

declare dso_local i32 @page_mapping_file(%struct.page*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @set_top_pte(i64, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @mc_copy_user_page(i8*, i8*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
