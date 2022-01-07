; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area.c"
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
  %15 = alloca i32, align 4
  %16 = alloca %struct.vm_unmapped_area_info, align 8
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
  %20 = call i32 (...) @cache_is_vipt_aliasing()
  store i32 %20, i32* %15, align 4
  %21 = load i32, i32* %15, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %5
  %24 = load %struct.file*, %struct.file** %7, align 8
  %25 = icmp ne %struct.file* %24, null
  br i1 %25, label %31, label %26

26:                                               ; preds = %23
  %27 = load i64, i64* %11, align 8
  %28 = load i64, i64* @MAP_SHARED, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br label %31

31:                                               ; preds = %26, %23
  %32 = phi i1 [ true, %23 ], [ %30, %26 ]
  %33 = zext i1 %32 to i32
  store i32 %33, i32* %14, align 4
  br label %34

34:                                               ; preds = %31, %5
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @MAP_FIXED, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %34
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %61

42:                                               ; preds = %39
  %43 = load i64, i64* %11, align 8
  %44 = load i64, i64* @MAP_SHARED, align 8
  %45 = and i64 %43, %44
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %61

47:                                               ; preds = %42
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %10, align 8
  %50 = load i64, i64* @PAGE_SHIFT, align 8
  %51 = shl i64 %49, %50
  %52 = sub i64 %48, %51
  %53 = load i32, i32* @SHMLBA, align 4
  %54 = sub nsw i32 %53, 1
  %55 = sext i32 %54 to i64
  %56 = and i64 %52, %55
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %47
  %59 = load i64, i64* @EINVAL, align 8
  %60 = sub i64 0, %59
  store i64 %60, i64* %6, align 8
  br label %131

61:                                               ; preds = %47, %42, %39
  %62 = load i64, i64* %8, align 8
  store i64 %62, i64* %6, align 8
  br label %131

63:                                               ; preds = %34
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* @TASK_SIZE, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i64, i64* @ENOMEM, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %6, align 8
  br label %131

70:                                               ; preds = %63
  %71 = load i64, i64* %8, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %105

73:                                               ; preds = %70
  %74 = load i32, i32* %14, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i64, i64* %8, align 8
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @COLOUR_ALIGN(i64 %77, i64 %78)
  store i64 %79, i64* %8, align 8
  br label %83

80:                                               ; preds = %73
  %81 = load i64, i64* %8, align 8
  %82 = call i64 @PAGE_ALIGN(i64 %81)
  store i64 %82, i64* %8, align 8
  br label %83

83:                                               ; preds = %80, %76
  %84 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %85 = load i64, i64* %8, align 8
  %86 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %84, i64 %85)
  store %struct.vm_area_struct* %86, %struct.vm_area_struct** %13, align 8
  %87 = load i64, i64* @TASK_SIZE, align 8
  %88 = load i64, i64* %9, align 8
  %89 = sub i64 %87, %88
  %90 = load i64, i64* %8, align 8
  %91 = icmp uge i64 %89, %90
  br i1 %91, label %92, label %104

92:                                               ; preds = %83
  %93 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %94 = icmp ne %struct.vm_area_struct* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i64, i64* %8, align 8
  %97 = load i64, i64* %9, align 8
  %98 = add i64 %96, %97
  %99 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %100 = call i64 @vm_start_gap(%struct.vm_area_struct* %99)
  %101 = icmp ule i64 %98, %100
  br i1 %101, label %102, label %104

102:                                              ; preds = %95, %92
  %103 = load i64, i64* %8, align 8
  store i64 %103, i64* %6, align 8
  br label %131

104:                                              ; preds = %95, %83
  br label %105

105:                                              ; preds = %104, %70
  %106 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 5
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %9, align 8
  %108 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 0
  store i64 %107, i64* %108, align 8
  %109 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %110 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 4
  store i32 %111, i32* %112, align 8
  %113 = load i64, i64* @TASK_SIZE, align 8
  %114 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  %115 = load i32, i32* %14, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %122

117:                                              ; preds = %105
  %118 = load i32, i32* @PAGE_MASK, align 4
  %119 = load i32, i32* @SHMLBA, align 4
  %120 = sub nsw i32 %119, 1
  %121 = and i32 %118, %120
  br label %123

122:                                              ; preds = %105
  br label %123

123:                                              ; preds = %122, %117
  %124 = phi i32 [ %121, %117 ], [ 0, %122 ]
  %125 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 2
  store i32 %124, i32* %125, align 8
  %126 = load i64, i64* %10, align 8
  %127 = load i64, i64* @PAGE_SHIFT, align 8
  %128 = shl i64 %126, %127
  %129 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 3
  store i64 %128, i64* %129, align 8
  %130 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %16)
  store i64 %130, i64* %6, align 8
  br label %131

131:                                              ; preds = %123, %102, %67, %61, %58
  %132 = load i64, i64* %6, align 8
  ret i64 %132
}

declare dso_local i32 @cache_is_vipt_aliasing(...) #1

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
