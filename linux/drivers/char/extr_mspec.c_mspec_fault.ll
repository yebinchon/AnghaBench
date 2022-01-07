; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_fault.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mspec.c_mspec_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.vma_data* }
%struct.vma_data = type { i64*, i32, i32 }

@VM_FAULT_OOM = common dso_local global i32 0, align 4
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @mspec_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspec_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.vma_data*, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  store i64 %11, i64* %7, align 8
  %12 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %13 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %12, i32 0, i32 2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load %struct.vma_data*, %struct.vma_data** %15, align 8
  store %struct.vma_data* %16, %struct.vma_data** %8, align 8
  %17 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %18 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = getelementptr inbounds i64, i64* %19, i64 %20
  %22 = load i64, i64* %21, align 8
  store i64 %22, i64* %5, align 8
  %23 = load i64, i64* %5, align 8
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %67

25:                                               ; preds = %1
  %26 = call i32 (...) @numa_node_id()
  %27 = call i64 @uncached_alloc_page(i32 %26, i32 1)
  store i64 %27, i64* %5, align 8
  %28 = load i64, i64* %5, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = load i32, i32* @VM_FAULT_OOM, align 4
  store i32 %31, i32* %2, align 4
  br label %83

32:                                               ; preds = %25
  %33 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %34 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %33, i32 0, i32 1
  %35 = call i32 @spin_lock(i32* %34)
  %36 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %37 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %36, i32 0, i32 0
  %38 = load i64*, i64** %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = getelementptr inbounds i64, i64* %38, i64 %39
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %54

43:                                               ; preds = %32
  %44 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %45 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 4
  %48 = load i64, i64* %5, align 8
  %49 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %50 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* %7, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  store i64 %48, i64* %53, align 8
  br label %63

54:                                               ; preds = %32
  %55 = load i64, i64* %5, align 8
  %56 = call i32 @uncached_free_page(i64 %55, i32 1)
  %57 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %58 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* %7, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* %5, align 8
  br label %63

63:                                               ; preds = %54, %43
  %64 = load %struct.vma_data*, %struct.vma_data** %8, align 8
  %65 = getelementptr inbounds %struct.vma_data, %struct.vma_data* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %63, %1
  %68 = load i64, i64* %5, align 8
  %69 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %70 = xor i64 %69, -1
  %71 = and i64 %68, %70
  store i64 %71, i64* %4, align 8
  %72 = load i64, i64* %4, align 8
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %6, align 8
  %75 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %76 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %75, i32 0, i32 2
  %77 = load %struct.TYPE_2__*, %struct.TYPE_2__** %76, align 8
  %78 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %79 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @vmf_insert_pfn(%struct.TYPE_2__* %77, i32 %80, i64 %81)
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %67, %30
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i64 @uncached_alloc_page(i32, i32) #1

declare dso_local i32 @numa_node_id(...) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @uncached_free_page(i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @vmf_insert_pfn(%struct.TYPE_2__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
