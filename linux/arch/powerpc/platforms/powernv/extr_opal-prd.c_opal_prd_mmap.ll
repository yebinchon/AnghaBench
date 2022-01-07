; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-prd.c_opal_prd_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/platforms/powernv/extr_opal-prd.c_opal_prd_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i64, i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"opal_prd_mmap(0x%016lx, 0x%016lx, 0x%lx, 0x%lx)\0A\00", align 1
@PAGE_SHIFT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @opal_prd_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @opal_prd_mmap(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %20 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @pr_devel(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i64 %12, i64 %15, i64 %18, i32 %21)
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PAGE_SHIFT, align 8
  %27 = shl i64 %25, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %29 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %32 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub i64 %30, %33
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %6, align 8
  %36 = load i64, i64* %7, align 8
  %37 = call i32 @opal_prd_range_is_valid(i64 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %2
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.file*, %struct.file** %4, align 8
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @phys_mem_access_prot(%struct.file* %43, i64 %46, i64 %47, i32 %50)
  store i32 %51, i32* %8, align 4
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %54 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %57 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @remap_pfn_range(%struct.vm_area_struct* %52, i64 %55, i64 %58, i64 %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %42, %39
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @pr_devel(i8*, i64, i64, i64, i32) #1

declare dso_local i32 @opal_prd_range_is_valid(i64, i64) #1

declare dso_local i32 @phys_mem_access_prot(%struct.file*, i64, i64, i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
