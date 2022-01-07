; ModuleID = '/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/csky/abiv1/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i32, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

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
  %14 = alloca i32, align 4
  %15 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %12, align 8
  store i32 0, i32* %14, align 4
  %19 = load %struct.file*, %struct.file** %7, align 8
  %20 = icmp ne %struct.file* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* %11, align 8
  %23 = load i64, i64* @MAP_SHARED, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br label %26

26:                                               ; preds = %21, %5
  %27 = phi i1 [ true, %5 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %14, align 4
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_FIXED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %26
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @MAP_SHARED, align 8
  %36 = and i64 %34, %35
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %52

38:                                               ; preds = %33
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %10, align 8
  %41 = load i64, i64* @PAGE_SHIFT, align 8
  %42 = shl i64 %40, %41
  %43 = sub i64 %39, %42
  %44 = load i32, i32* @SHMLBA, align 4
  %45 = sub nsw i32 %44, 1
  %46 = sext i32 %45 to i64
  %47 = and i64 %43, %46
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %38
  %50 = load i64, i64* @EINVAL, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %6, align 8
  br label %122

52:                                               ; preds = %38, %33
  %53 = load i64, i64* %8, align 8
  store i64 %53, i64* %6, align 8
  br label %122

54:                                               ; preds = %26
  %55 = load i64, i64* %9, align 8
  %56 = load i64, i64* @TASK_SIZE, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load i64, i64* @ENOMEM, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %6, align 8
  br label %122

61:                                               ; preds = %54
  %62 = load i64, i64* %8, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %96

64:                                               ; preds = %61
  %65 = load i32, i32* %14, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %10, align 8
  %70 = call i64 @COLOUR_ALIGN(i64 %68, i64 %69)
  store i64 %70, i64* %8, align 8
  br label %74

71:                                               ; preds = %64
  %72 = load i64, i64* %8, align 8
  %73 = call i64 @PAGE_ALIGN(i64 %72)
  store i64 %73, i64* %8, align 8
  br label %74

74:                                               ; preds = %71, %67
  %75 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %76 = load i64, i64* %8, align 8
  %77 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %75, i64 %76)
  store %struct.vm_area_struct* %77, %struct.vm_area_struct** %13, align 8
  %78 = load i64, i64* @TASK_SIZE, align 8
  %79 = load i64, i64* %9, align 8
  %80 = sub i64 %78, %79
  %81 = load i64, i64* %8, align 8
  %82 = icmp uge i64 %80, %81
  br i1 %82, label %83, label %95

83:                                               ; preds = %74
  %84 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %85 = icmp ne %struct.vm_area_struct* %84, null
  br i1 %85, label %86, label %93

86:                                               ; preds = %83
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = add i64 %87, %88
  %90 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %91 = call i64 @vm_start_gap(%struct.vm_area_struct* %90)
  %92 = icmp ule i64 %89, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %86, %83
  %94 = load i64, i64* %8, align 8
  store i64 %94, i64* %6, align 8
  br label %122

95:                                               ; preds = %86, %74
  br label %96

96:                                               ; preds = %95, %61
  %97 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %9, align 8
  %99 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %98, i64* %99, align 8
  %100 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %101 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i32 %102, i32* %103, align 8
  %104 = load i64, i64* @TASK_SIZE, align 8
  %105 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %104, i64* %105, align 8
  %106 = load i32, i32* %14, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %96
  %109 = load i32, i32* @PAGE_MASK, align 4
  %110 = load i32, i32* @SHMLBA, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  br label %114

113:                                              ; preds = %96
  br label %114

114:                                              ; preds = %113, %108
  %115 = phi i32 [ %112, %108 ], [ 0, %113 ]
  %116 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = load i64, i64* %10, align 8
  %118 = load i64, i64* @PAGE_SHIFT, align 8
  %119 = shl i64 %117, %118
  %120 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i64 %119, i64* %120, align 8
  %121 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %121, i64* %6, align 8
  br label %122

122:                                              ; preds = %114, %93, %58, %52, %49
  %123 = load i64, i64* %6, align 8
  ret i64 %123
}

declare dso_local i64 @COLOUR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
