; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_allocate_kernel.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/mm/book3s64/extr_slb.c_slb_allocate_kernel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@LINEAR_MAP_REGION_ID = common dso_local global i64 0, align 8
@EA_MASK = common dso_local global i64 0, align 8
@MAX_PHYSMEM_BITS = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i64 0, align 8
@SLB_VSID_KERNEL = common dso_local global i64 0, align 8
@mmu_psize_defs = common dso_local global %struct.TYPE_3__* null, align 8
@mmu_linear_psize = common dso_local global i64 0, align 8
@VMALLOC_REGION_ID = common dso_local global i64 0, align 8
@H_VMALLOC_END = common dso_local global i64 0, align 8
@local_paca = common dso_local global %struct.TYPE_4__* null, align 8
@IO_REGION_ID = common dso_local global i64 0, align 8
@H_KERN_IO_END = common dso_local global i64 0, align 8
@mmu_io_psize = common dso_local global i64 0, align 8
@MMU_SEGSIZE_1T = common dso_local global i32 0, align 4
@MMU_FTR_1T_SEGMENT = common dso_local global i32 0, align 4
@MMU_SEGSIZE_256M = common dso_local global i32 0, align 4
@H_VMEMMAP_END = common dso_local global i64 0, align 8
@VMEMMAP_REGION_ID = common dso_local global i64 0, align 8
@mmu_vmemmap_psize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i64)* @slb_allocate_kernel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @slb_allocate_kernel(i64 %0, i64 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @LINEAR_MAP_REGION_ID, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %30

12:                                               ; preds = %2
  %13 = load i64, i64* %4, align 8
  %14 = load i64, i64* @EA_MASK, align 8
  %15 = and i64 %13, %14
  %16 = load i64, i64* @MAX_PHYSMEM_BITS, align 8
  %17 = shl i64 1, %16
  %18 = icmp ugt i64 %15, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load i64, i64* @EFAULT, align 8
  %21 = sub nsw i64 0, %20
  store i64 %21, i64* %3, align 8
  br label %84

22:                                               ; preds = %12
  %23 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %25 = load i64, i64* @mmu_linear_psize, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = or i64 %23, %28
  store i64 %29, i64* %7, align 8
  br label %69

30:                                               ; preds = %2
  %31 = load i64, i64* %5, align 8
  %32 = load i64, i64* @VMALLOC_REGION_ID, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %45

34:                                               ; preds = %30
  %35 = load i64, i64* %4, align 8
  %36 = load i64, i64* @H_VMALLOC_END, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %34
  %39 = load i64, i64* @EFAULT, align 8
  %40 = sub nsw i64 0, %39
  store i64 %40, i64* %3, align 8
  br label %84

41:                                               ; preds = %34
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @local_paca, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %7, align 8
  br label %68

45:                                               ; preds = %30
  %46 = load i64, i64* %5, align 8
  %47 = load i64, i64* @IO_REGION_ID, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i64, i64* %4, align 8
  %51 = load i64, i64* @H_KERN_IO_END, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %49
  %54 = load i64, i64* @EFAULT, align 8
  %55 = sub nsw i64 0, %54
  store i64 %55, i64* %3, align 8
  br label %84

56:                                               ; preds = %49
  %57 = load i64, i64* @SLB_VSID_KERNEL, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** @mmu_psize_defs, align 8
  %59 = load i64, i64* @mmu_io_psize, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = or i64 %57, %62
  store i64 %63, i64* %7, align 8
  br label %67

64:                                               ; preds = %45
  %65 = load i64, i64* @EFAULT, align 8
  %66 = sub nsw i64 0, %65
  store i64 %66, i64* %3, align 8
  br label %84

67:                                               ; preds = %56
  br label %68

68:                                               ; preds = %67, %41
  br label %69

69:                                               ; preds = %68, %22
  %70 = load i32, i32* @MMU_SEGSIZE_1T, align 4
  store i32 %70, i32* %8, align 4
  %71 = load i32, i32* @MMU_FTR_1T_SEGMENT, align 4
  %72 = call i32 @mmu_has_feature(i32 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69
  %75 = load i32, i32* @MMU_SEGSIZE_256M, align 4
  store i32 %75, i32* %8, align 4
  br label %76

76:                                               ; preds = %74, %69
  %77 = load i64, i64* %4, align 8
  %78 = call i64 @get_kernel_context(i64 %77)
  store i64 %78, i64* %6, align 8
  %79 = load i64, i64* %4, align 8
  %80 = load i64, i64* %6, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = call i64 @slb_insert_entry(i64 %79, i64 %80, i64 %81, i32 %82, i32 1)
  store i64 %83, i64* %3, align 8
  br label %84

84:                                               ; preds = %76, %64, %53, %38, %19
  %85 = load i64, i64* %3, align 8
  ret i64 %85
}

declare dso_local i32 @mmu_has_feature(i32) #1

declare dso_local i64 @get_kernel_context(i64) #1

declare dso_local i64 @slb_insert_entry(i64, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
