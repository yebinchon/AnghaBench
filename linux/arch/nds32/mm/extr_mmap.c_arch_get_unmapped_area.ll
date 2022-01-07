; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/mm/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i64 }
%struct.vm_unmapped_area_info = type { i64, i64, i32, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@CONFIG_CPU_CACHE_ALIASING = common dso_local global i32 0, align 4
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
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %12, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  %20 = load i32, i32* @CONFIG_CPU_CACHE_ALIASING, align 4
  %21 = call i64 @IS_ENABLED(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 1, i32* %16, align 4
  br label %24

24:                                               ; preds = %23, %5
  %25 = load i32, i32* %16, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %38

27:                                               ; preds = %24
  %28 = load %struct.file*, %struct.file** %7, align 8
  %29 = icmp ne %struct.file* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @MAP_SHARED, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br label %35

35:                                               ; preds = %30, %27
  %36 = phi i1 [ true, %27 ], [ %34, %30 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %14, align 4
  br label %38

38:                                               ; preds = %35, %24
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* @MAP_FIXED, align 8
  %41 = and i64 %39, %40
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %67

43:                                               ; preds = %38
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %65

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @MAP_SHARED, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %65

51:                                               ; preds = %46
  %52 = load i64, i64* %8, align 8
  %53 = load i64, i64* %10, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = sub i64 %52, %55
  %57 = load i32, i32* @SHMLBA, align 4
  %58 = sub nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = and i64 %56, %59
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %51
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %6, align 8
  br label %136

65:                                               ; preds = %51, %46, %43
  %66 = load i64, i64* %8, align 8
  store i64 %66, i64* %6, align 8
  br label %136

67:                                               ; preds = %38
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* @TASK_SIZE, align 8
  %70 = icmp ugt i64 %68, %69
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = load i64, i64* @ENOMEM, align 8
  %73 = sub i64 0, %72
  store i64 %73, i64* %6, align 8
  br label %136

74:                                               ; preds = %67
  %75 = load i64, i64* %8, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %110

77:                                               ; preds = %74
  %78 = load i32, i32* %14, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %8, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @COLOUR_ALIGN(i64 %81, i64 %82)
  store i64 %83, i64* %8, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %8, align 8
  %86 = call i64 @PAGE_ALIGN(i64 %85)
  store i64 %86, i64* %8, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %89 = load i64, i64* %8, align 8
  %90 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %88, i64 %89)
  store %struct.vm_area_struct* %90, %struct.vm_area_struct** %13, align 8
  %91 = load i64, i64* @TASK_SIZE, align 8
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %8, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %109

96:                                               ; preds = %87
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %98 = icmp ne %struct.vm_area_struct* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %96
  %100 = load i64, i64* %8, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %100, %101
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %104 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = icmp ule i64 %102, %105
  br i1 %106, label %107, label %109

107:                                              ; preds = %99, %96
  %108 = load i64, i64* %8, align 8
  store i64 %108, i64* %6, align 8
  br label %136

109:                                              ; preds = %99, %87
  br label %110

110:                                              ; preds = %109, %74
  %111 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i64 0, i64* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %115 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i32 %116, i32* %117, align 8
  %118 = load i64, i64* @TASK_SIZE, align 8
  %119 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %118, i64* %119, align 8
  %120 = load i32, i32* %14, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %110
  %123 = load i32, i32* @PAGE_MASK, align 4
  %124 = load i32, i32* @SHMLBA, align 4
  %125 = sub nsw i32 %124, 1
  %126 = and i32 %123, %125
  br label %128

127:                                              ; preds = %110
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i32 [ %126, %122 ], [ 0, %127 ]
  %130 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i32 %129, i32* %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = shl i64 %131, %132
  %134 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i64 %133, i64* %134, align 8
  %135 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %135, i64* %6, align 8
  br label %136

136:                                              ; preds = %128, %107, %71, %65, %62
  %137 = load i64, i64* %6, align 8
  ret i64 %137
}

declare dso_local i64 @IS_ENABLED(i32) #1

declare dso_local i64 @COLOUR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
