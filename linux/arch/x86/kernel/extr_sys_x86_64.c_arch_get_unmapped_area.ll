; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i64, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.mm_struct*, align 8
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.vm_unmapped_area_info, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %12, align 8
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @mpx_unmapped_area_check(i64 %20, i64 %21, i64 %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = call i64 @IS_ERR_VALUE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %8, align 8
  store i64 %28, i64* %6, align 8
  br label %97

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @MAP_FIXED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %29
  %35 = load i64, i64* %8, align 8
  store i64 %35, i64* %6, align 8
  br label %97

36:                                               ; preds = %29
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = call i32 @find_start_end(i64 %37, i64 %38, i64* %15, i64* %16)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %16, align 8
  %42 = icmp ugt i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i64, i64* @ENOMEM, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %6, align 8
  br label %97

46:                                               ; preds = %36
  %47 = load i64, i64* %8, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %73

49:                                               ; preds = %46
  %50 = load i64, i64* %8, align 8
  %51 = call i64 @PAGE_ALIGN(i64 %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %52, i64 %53)
  store %struct.vm_area_struct* %54, %struct.vm_area_struct** %13, align 8
  %55 = load i64, i64* %16, align 8
  %56 = load i64, i64* %9, align 8
  %57 = sub i64 %55, %56
  %58 = load i64, i64* %8, align 8
  %59 = icmp uge i64 %57, %58
  br i1 %59, label %60, label %72

60:                                               ; preds = %49
  %61 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %62 = icmp ne %struct.vm_area_struct* %61, null
  br i1 %62, label %63, label %70

63:                                               ; preds = %60
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %9, align 8
  %66 = add i64 %64, %65
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %68 = call i64 @vm_start_gap(%struct.vm_area_struct* %67)
  %69 = icmp ule i64 %66, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %63, %60
  %71 = load i64, i64* %8, align 8
  store i64 %71, i64* %6, align 8
  br label %97

72:                                               ; preds = %63, %49
  br label %73

73:                                               ; preds = %72, %46
  %74 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 5
  store i64 0, i64* %74, align 8
  %75 = load i64, i64* %9, align 8
  %76 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 0
  store i64 %75, i64* %76, align 8
  %77 = load i64, i64* %15, align 8
  %78 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 1
  store i64 %77, i64* %78, align 8
  %79 = load i64, i64* %16, align 8
  %80 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 2
  store i64 %79, i64* %80, align 8
  %81 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 4
  store i64 0, i64* %81, align 8
  %82 = load i64, i64* %10, align 8
  %83 = load i64, i64* @PAGE_SHIFT, align 8
  %84 = shl i64 %82, %83
  %85 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 3
  store i64 %84, i64* %85, align 8
  %86 = load %struct.file*, %struct.file** %7, align 8
  %87 = icmp ne %struct.file* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %73
  %89 = call i64 (...) @get_align_mask()
  %90 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 4
  store i64 %89, i64* %90, align 8
  %91 = call i64 (...) @get_align_bits()
  %92 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %93, %91
  store i64 %94, i64* %92, align 8
  br label %95

95:                                               ; preds = %88, %73
  %96 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %14)
  store i64 %96, i64* %6, align 8
  br label %97

97:                                               ; preds = %95, %70, %43, %34, %27
  %98 = load i64, i64* %6, align 8
  ret i64 %98
}

declare dso_local i64 @mpx_unmapped_area_check(i64, i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @find_start_end(i64, i64, i64*, i64*) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @get_align_mask(...) #1

declare dso_local i64 @get_align_bits(...) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
