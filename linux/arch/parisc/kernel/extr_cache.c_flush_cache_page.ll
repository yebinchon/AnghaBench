; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_page.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_cache.c_flush_cache_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flush_cache_page(%struct.vm_area_struct* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i64 %2, i64* %6, align 8
  %7 = load i64, i64* %6, align 8
  %8 = call i64 @pfn_valid(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %34

10:                                               ; preds = %3
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %10
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %20 = load i64, i64* %5, align 8
  %21 = call i32 @flush_tlb_page(%struct.vm_area_struct* %19, i64 %20)
  %22 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* %6, align 8
  %25 = call i32 @PFN_PHYS(i64 %24)
  %26 = call i32 @__flush_cache_page(%struct.vm_area_struct* %22, i64 %23, i32 %25)
  br label %33

27:                                               ; preds = %10
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @PFN_PHYS(i64 %30)
  %32 = call i32 @__purge_cache_page(%struct.vm_area_struct* %28, i64 %29, i32 %31)
  br label %33

33:                                               ; preds = %27, %18
  br label %34

34:                                               ; preds = %33, %3
  ret void
}

declare dso_local i64 @pfn_valid(i64) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @flush_tlb_page(%struct.vm_area_struct*, i64) #1

declare dso_local i32 @__flush_cache_page(%struct.vm_area_struct*, i64, i32) #1

declare dso_local i32 @PFN_PHYS(i64) #1

declare dso_local i32 @__purge_cache_page(%struct.vm_area_struct*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
