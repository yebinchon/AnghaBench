; ModuleID = '/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_sys_ia64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/ia64/kernel/extr_sys_ia64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i32, i64, i64, i64 }

@MAP_SHARED = common dso_local global i64 0, align 8
@current = common dso_local global %struct.TYPE_2__* null, align 8
@RGN_MAP_LIMIT = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@SHMLBA = common dso_local global i32 0, align 4
@RGN_HPAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i64, i64* %11, align 8
  %17 = load i64, i64* @MAP_SHARED, align 8
  %18 = and i64 %16, %17
  store i64 %18, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %14, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @RGN_MAP_LIMIT, align 8
  %24 = icmp ugt i64 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %5
  %26 = load i64, i64* @ENOMEM, align 8
  %27 = sub i64 0, %26
  store i64 %27, i64* %6, align 8
  br label %74

28:                                               ; preds = %5
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_FIXED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %28
  %34 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %35 = load i64, i64* %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = call i64 @is_hugepage_only_range(%struct.mm_struct* %34, i64 %35, i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i64, i64* @EINVAL, align 8
  %41 = sub i64 0, %40
  store i64 %41, i64* %6, align 8
  br label %74

42:                                               ; preds = %33
  %43 = load i64, i64* %8, align 8
  store i64 %43, i64* %6, align 8
  br label %74

44:                                               ; preds = %28
  %45 = load i64, i64* %8, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %44
  %48 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  store i64 %48, i64* %8, align 8
  br label %49

49:                                               ; preds = %47, %44
  %50 = load i64, i64* %12, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load i32, i32* @TASK_SIZE, align 4
  %54 = sext i32 %53 to i64
  %55 = icmp ugt i64 %54, 4294967295
  br i1 %55, label %56, label %62

56:                                               ; preds = %52
  %57 = load i32, i32* @PAGE_MASK, align 4
  %58 = load i32, i32* @SHMLBA, align 4
  %59 = sub nsw i32 %58, 1
  %60 = and i32 %57, %59
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %13, align 8
  br label %62

62:                                               ; preds = %56, %52, %49
  %63 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load i64, i64* %9, align 8
  %65 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %64, i64* %65, align 8
  %66 = load i64, i64* %8, align 8
  %67 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %66, i64* %67, align 8
  %68 = load i32, i32* @TASK_SIZE, align 4
  %69 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i32 %68, i32* %69, align 8
  %70 = load i64, i64* %13, align 8
  %71 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i64 %70, i64* %71, align 8
  %72 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i64 0, i64* %72, align 8
  %73 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %73, i64* %6, align 8
  br label %74

74:                                               ; preds = %62, %42, %39, %25
  %75 = load i64, i64* %6, align 8
  ret i64 %75
}

declare dso_local i64 @is_hugepage_only_range(%struct.mm_struct*, i64, i64) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
