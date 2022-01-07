; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v6.c_v6_clear_user_highpage_aliasing.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-v6.c_v6_clear_user_highpage_aliasing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }

@COPYPAGE_V6_TO = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@v6_lock = common dso_local global i32 0, align 4
@PAGE_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i64)* @v6_clear_user_highpage_aliasing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @v6_clear_user_highpage_aliasing(%struct.page* %0, i64 %1) #0 {
  %3 = alloca %struct.page*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.page* %0, %struct.page** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load i64, i64* @COPYPAGE_V6_TO, align 8
  %7 = load i64, i64* %4, align 8
  %8 = call i64 @CACHE_COLOUR(i64 %7)
  %9 = load i64, i64* @PAGE_SHIFT, align 8
  %10 = shl i64 %8, %9
  %11 = add i64 %6, %10
  store i64 %11, i64* %5, align 8
  %12 = load %struct.page*, %struct.page** %3, align 8
  %13 = call i32 @page_address(%struct.page* %12)
  %14 = call i32 @discard_old_kernel_data(i32 %13)
  %15 = call i32 @raw_spin_lock(i32* @v6_lock)
  %16 = load i64, i64* %5, align 8
  %17 = load %struct.page*, %struct.page** %3, align 8
  %18 = load i32, i32* @PAGE_KERNEL, align 4
  %19 = call i32 @mk_pte(%struct.page* %17, i32 %18)
  %20 = call i32 @set_top_pte(i64 %16, i32 %19)
  %21 = load i64, i64* %5, align 8
  %22 = inttoptr i64 %21 to i8*
  %23 = call i32 @clear_page(i8* %22)
  %24 = call i32 @raw_spin_unlock(i32* @v6_lock)
  ret void
}

declare dso_local i64 @CACHE_COLOUR(i64) #1

declare dso_local i32 @discard_old_kernel_data(i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @raw_spin_lock(i32*) #1

declare dso_local i32 @set_top_pte(i64, i32) #1

declare dso_local i32 @mk_pte(%struct.page*, i32) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @raw_spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
