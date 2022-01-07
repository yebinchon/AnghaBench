; ModuleID = '/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_mmap_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/char/extr_mem.c_mmap_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_area_struct = type { i64, i64, i32, i32, i32* }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@mmap_mem_ops = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, %struct.vm_area_struct*)* @mmap_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmap_mem(%struct.file* %0, %struct.vm_area_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.vm_area_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %5, align 8
  %8 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %9 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %12 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = sub i64 %10, %13
  store i64 %14, i64* %6, align 8
  %15 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %16 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SHIFT, align 4
  %19 = shl i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PAGE_SHIFT, align 4
  %22 = ashr i32 %20, %21
  %23 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %24 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = icmp ne i32 %22, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %112

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i64, i64* %6, align 8
  %33 = trunc i64 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = sub nsw i32 %34, 1
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %30
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %112

41:                                               ; preds = %30
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @valid_mmap_phys_addr_range(i32 %44, i64 %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %112

51:                                               ; preds = %41
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %53 = call i32 @private_mapping_ok(%struct.vm_area_struct* %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @ENOSYS, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %112

58:                                               ; preds = %51
  %59 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %60 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 @range_is_allowed(i32 %61, i64 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %58
  %66 = load i32, i32* @EPERM, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %112

68:                                               ; preds = %58
  %69 = load %struct.file*, %struct.file** %4, align 8
  %70 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %71 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load i64, i64* %6, align 8
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %75 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %74, i32 0, i32 3
  %76 = call i32 @phys_mem_access_prot_allowed(%struct.file* %69, i32 %72, i64 %73, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %68
  %79 = load i32, i32* @EINVAL, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %3, align 4
  br label %112

81:                                               ; preds = %68
  %82 = load %struct.file*, %struct.file** %4, align 8
  %83 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %84 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = load i64, i64* %6, align 8
  %87 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %88 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @phys_mem_access_prot(%struct.file* %82, i32 %85, i64 %86, i32 %89)
  %91 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %92 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %91, i32 0, i32 3
  store i32 %90, i32* %92, align 4
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %94 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %93, i32 0, i32 4
  store i32* @mmap_mem_ops, i32** %94, align 8
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %97 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %100 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i64, i64* %6, align 8
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %5, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = call i64 @remap_pfn_range(%struct.vm_area_struct* %95, i64 %98, i32 %101, i64 %102, i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %81
  %109 = load i32, i32* @EAGAIN, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %3, align 4
  br label %112

111:                                              ; preds = %81
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %111, %108, %78, %65, %55, %48, %38, %27
  %113 = load i32, i32* %3, align 4
  ret i32 %113
}

declare dso_local i32 @valid_mmap_phys_addr_range(i32, i64) #1

declare dso_local i32 @private_mapping_ok(%struct.vm_area_struct*) #1

declare dso_local i32 @range_is_allowed(i32, i64) #1

declare dso_local i32 @phys_mem_access_prot_allowed(%struct.file*, i32, i64, i32*) #1

declare dso_local i32 @phys_mem_access_prot(%struct.file*, i32, i64, i32) #1

declare dso_local i64 @remap_pfn_range(%struct.vm_area_struct*, i64, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
