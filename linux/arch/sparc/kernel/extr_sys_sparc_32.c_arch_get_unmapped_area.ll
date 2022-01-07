; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_32.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_32.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i64, i64 }

@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = load i64, i64* @MAP_FIXED, align 8
  %15 = and i64 %13, %14
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %38

17:                                               ; preds = %5
  %18 = load i64, i64* %11, align 8
  %19 = load i64, i64* @MAP_SHARED, align 8
  %20 = and i64 %18, %19
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %17
  %23 = load i64, i64* %8, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load i64, i64* @PAGE_SHIFT, align 8
  %26 = shl i64 %24, %25
  %27 = sub i64 %23, %26
  %28 = load i32, i32* @SHMLBA, align 4
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  %31 = and i64 %27, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %22
  %34 = load i64, i64* @EINVAL, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %6, align 8
  br label %78

36:                                               ; preds = %22, %17
  %37 = load i64, i64* %8, align 8
  store i64 %37, i64* %6, align 8
  br label %78

38:                                               ; preds = %5
  %39 = load i64, i64* %9, align 8
  %40 = load i64, i64* @TASK_SIZE, align 8
  %41 = load i64, i64* @PAGE_SIZE, align 8
  %42 = sub i64 %40, %41
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i64, i64* @ENOMEM, align 8
  %46 = sub i64 0, %45
  store i64 %46, i64* %6, align 8
  br label %78

47:                                               ; preds = %38
  %48 = load i64, i64* %8, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %52, label %50

50:                                               ; preds = %47
  %51 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %51, i64* %8, align 8
  br label %52

52:                                               ; preds = %50, %47
  %53 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 0
  store i64 %54, i64* %55, align 8
  %56 = load i64, i64* %8, align 8
  %57 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  %58 = load i64, i64* @TASK_SIZE, align 8
  %59 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 2
  store i64 %58, i64* %59, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @MAP_SHARED, align 8
  %62 = and i64 %60, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %52
  %65 = load i32, i32* @PAGE_MASK, align 4
  %66 = load i32, i32* @SHMLBA, align 4
  %67 = sub nsw i32 %66, 1
  %68 = and i32 %65, %67
  br label %70

69:                                               ; preds = %52
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi i32 [ %68, %64 ], [ 0, %69 ]
  %72 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 3
  store i32 %71, i32* %72, align 8
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* @PAGE_SHIFT, align 8
  %75 = shl i64 %73, %74
  %76 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %12, i32 0, i32 4
  store i64 %75, i64* %76, align 8
  %77 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %12)
  store i64 %77, i64* %6, align 8
  br label %78

78:                                               ; preds = %70, %44, %36, %33
  %79 = load i64, i64* %6, align 8
  ret i64 %79
}

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
