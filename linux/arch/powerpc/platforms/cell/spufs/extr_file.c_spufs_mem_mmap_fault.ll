; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { i64, i32, %struct.vm_area_struct* }
%struct.vm_area_struct = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.spu_context* }
%struct.spu_context = type { i64, %struct.TYPE_8__*, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@LS_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"spufs_mem_mmap_fault address=0x%lx, offset=0x%lx\0A\00", align 1
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_fault*)* @spufs_mem_mmap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mem_mmap_fault(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.spu_context*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %9 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %10 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %9, i32 0, i32 2
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  store %struct.vm_area_struct* %11, %struct.vm_area_struct** %4, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load %struct.spu_context*, %struct.spu_context** %15, align 8
  store %struct.spu_context* %16, %struct.spu_context** %5, align 8
  %17 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %18 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PAGE_SHIFT, align 8
  %21 = shl i64 %19, %20
  store i64 %21, i64* %7, align 8
  %22 = load i64, i64* %7, align 8
  %23 = load i64, i64* @LS_SIZE, align 8
  %24 = icmp uge i64 %22, %23
  br i1 %24, label %25, label %27

25:                                               ; preds = %1
  %26 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %26, i32* %2, align 4
  br label %86

27:                                               ; preds = %1
  %28 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %29 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = load i64, i64* %7, align 8
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  %33 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %34 = call i64 @spu_acquire(%struct.spu_context* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %37, i32* %2, align 4
  br label %86

38:                                               ; preds = %27
  %39 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %40 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @SPU_STATE_SAVED, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %38
  %45 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %46 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @pgprot_cached(i32 %47)
  %49 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %50 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %52 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %51, i32 0, i32 2
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* %7, align 8
  %58 = add i64 %56, %57
  %59 = call i64 @vmalloc_to_pfn(i64 %58)
  store i64 %59, i64* %6, align 8
  br label %76

60:                                               ; preds = %38
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %62 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @pgprot_noncached_wc(i32 %63)
  %65 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %66 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %68 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %67, i32 0, i32 1
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %7, align 8
  %73 = add i64 %71, %72
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = lshr i64 %73, %74
  store i64 %75, i64* %6, align 8
  br label %76

76:                                               ; preds = %60, %44
  %77 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %78 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %79 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %77, i32 %80, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  %84 = call i32 @spu_release(%struct.spu_context* %83)
  %85 = load i32, i32* %8, align 4
  store i32 %85, i32* %2, align 4
  br label %86

86:                                               ; preds = %76, %36, %25
  %87 = load i32, i32* %2, align 4
  ret i32 %87
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i64 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @pgprot_cached(i32) #1

declare dso_local i64 @vmalloc_to_pfn(i64) #1

declare dso_local i32 @pgprot_noncached_wc(i32) #1

declare dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct*, i32, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
