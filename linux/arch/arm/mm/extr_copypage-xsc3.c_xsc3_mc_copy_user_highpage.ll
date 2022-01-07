; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-xsc3.c_xsc3_mc_copy_user_highpage.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_copypage-xsc3.c_xsc3_mc_copy_user_highpage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { i32 }
%struct.vm_area_struct = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xsc3_mc_copy_user_highpage(%struct.page* %0, %struct.page* %1, i64 %2, %struct.vm_area_struct* %3) #0 {
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
  store i8* %12, i8** %9, align 8
  %13 = load %struct.page*, %struct.page** %6, align 8
  %14 = call i8* @kmap_atomic(%struct.page* %13)
  store i8* %14, i8** %10, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %8, align 8
  %16 = load i64, i64* %7, align 8
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call i32 @page_to_pfn(%struct.page* %17)
  %19 = call i32 @flush_cache_page(%struct.vm_area_struct* %15, i64 %16, i32 %18)
  %20 = load i8*, i8** %9, align 8
  %21 = load i8*, i8** %10, align 8
  %22 = call i32 @xsc3_mc_copy_user_page(i8* %20, i8* %21)
  %23 = load i8*, i8** %10, align 8
  %24 = call i32 @kunmap_atomic(i8* %23)
  %25 = load i8*, i8** %9, align 8
  %26 = call i32 @kunmap_atomic(i8* %25)
  ret void
}

declare dso_local i8* @kmap_atomic(%struct.page*) #1

declare dso_local i32 @flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @xsc3_mc_copy_user_page(i8*, i8*) #1

declare dso_local i32 @kunmap_atomic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
