; ModuleID = '/home/carl/AnghaBench/linux/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area_topdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/arm/mm/extr_mmap.c_arch_get_unmapped_area_topdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i64 0, align 8
@FIRST_USER_ADDRESS = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @arch_get_unmapped_area_topdown(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.vm_area_struct*, align 8
  %13 = alloca %struct.mm_struct*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  store %struct.mm_struct* %20, %struct.mm_struct** %13, align 8
  %21 = load i64, i64* %8, align 8
  store i64 %21, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %22 = call i32 (...) @cache_is_vipt_aliasing()
  store i32 %22, i32* %16, align 4
  %23 = load i32, i32* %16, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %5
  %26 = load %struct.file*, %struct.file** %7, align 8
  %27 = icmp ne %struct.file* %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* @MAP_SHARED, align 8
  %31 = and i64 %29, %30
  %32 = icmp ne i64 %31, 0
  br label %33

33:                                               ; preds = %28, %25
  %34 = phi i1 [ true, %25 ], [ %32, %28 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %15, align 4
  br label %36

36:                                               ; preds = %33, %5
  %37 = load i64, i64* %9, align 8
  %38 = load i64, i64* @TASK_SIZE, align 8
  %39 = icmp ugt i64 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = load i64, i64* @ENOMEM, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %6, align 8
  br label %157

43:                                               ; preds = %36
  %44 = load i64, i64* %11, align 8
  %45 = load i64, i64* @MAP_FIXED, align 8
  %46 = and i64 %44, %45
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %72

48:                                               ; preds = %43
  %49 = load i32, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %70

51:                                               ; preds = %48
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* @MAP_SHARED, align 8
  %54 = and i64 %52, %53
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %70

56:                                               ; preds = %51
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @PAGE_SHIFT, align 8
  %60 = shl i64 %58, %59
  %61 = sub i64 %57, %60
  %62 = load i32, i32* @SHMLBA, align 4
  %63 = sub nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  %65 = and i64 %61, %64
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load i64, i64* @EINVAL, align 8
  %69 = sub i64 0, %68
  store i64 %69, i64* %6, align 8
  br label %157

70:                                               ; preds = %56, %51, %48
  %71 = load i64, i64* %14, align 8
  store i64 %71, i64* %6, align 8
  br label %157

72:                                               ; preds = %43
  %73 = load i64, i64* %14, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %107

75:                                               ; preds = %72
  %76 = load i32, i32* %15, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %75
  %79 = load i64, i64* %14, align 8
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @COLOUR_ALIGN(i64 %79, i64 %80)
  store i64 %81, i64* %14, align 8
  br label %85

82:                                               ; preds = %75
  %83 = load i64, i64* %14, align 8
  %84 = call i64 @PAGE_ALIGN(i64 %83)
  store i64 %84, i64* %14, align 8
  br label %85

85:                                               ; preds = %82, %78
  %86 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %87 = load i64, i64* %14, align 8
  %88 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %86, i64 %87)
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %12, align 8
  %89 = load i64, i64* @TASK_SIZE, align 8
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %14, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %106

94:                                               ; preds = %85
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %96 = icmp ne %struct.vm_area_struct* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %98, %99
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %102 = call i64 @vm_start_gap(%struct.vm_area_struct* %101)
  %103 = icmp ule i64 %100, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %97, %94
  %105 = load i64, i64* %14, align 8
  store i64 %105, i64* %6, align 8
  br label %157

106:                                              ; preds = %97, %85
  br label %107

107:                                              ; preds = %106, %72
  %108 = load i64, i64* @VM_UNMAPPED_AREA_TOPDOWN, align 8
  %109 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 5
  store i64 %108, i64* %109, align 8
  %110 = load i64, i64* %9, align 8
  %111 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* @FIRST_USER_ADDRESS, align 8
  %113 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 1
  store i64 %112, i64* %113, align 8
  %114 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %115 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 2
  store i64 %116, i64* %117, align 8
  %118 = load i32, i32* %15, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %125

120:                                              ; preds = %107
  %121 = load i32, i32* @PAGE_MASK, align 4
  %122 = load i32, i32* @SHMLBA, align 4
  %123 = sub nsw i32 %122, 1
  %124 = and i32 %121, %123
  br label %126

125:                                              ; preds = %107
  br label %126

126:                                              ; preds = %125, %120
  %127 = phi i32 [ %124, %120 ], [ 0, %125 ]
  %128 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 3
  store i32 %127, i32* %128, align 8
  %129 = load i64, i64* %10, align 8
  %130 = load i64, i64* @PAGE_SHIFT, align 8
  %131 = shl i64 %129, %130
  %132 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 4
  store i64 %131, i64* %132, align 8
  %133 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %17)
  store i64 %133, i64* %14, align 8
  %134 = load i64, i64* %14, align 8
  %135 = load i32, i32* @PAGE_MASK, align 4
  %136 = xor i32 %135, -1
  %137 = sext i32 %136 to i64
  %138 = and i64 %134, %137
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %126
  %141 = load i64, i64* %14, align 8
  %142 = load i64, i64* @ENOMEM, align 8
  %143 = sub i64 0, %142
  %144 = icmp ne i64 %141, %143
  %145 = zext i1 %144 to i32
  %146 = call i32 @VM_BUG_ON(i32 %145)
  %147 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 5
  store i64 0, i64* %147, align 8
  %148 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %149 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 1
  store i64 %150, i64* %151, align 8
  %152 = load i64, i64* @TASK_SIZE, align 8
  %153 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 2
  store i64 %152, i64* %153, align 8
  %154 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %17)
  store i64 %154, i64* %14, align 8
  br label %155

155:                                              ; preds = %140, %126
  %156 = load i64, i64* %14, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %104, %70, %67, %40
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i32 @cache_is_vipt_aliasing(...) #1

declare dso_local i64 @COLOUR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
