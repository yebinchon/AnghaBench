; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/mm/extr_mmap.c_arch_get_unmapped_area_common.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/mm/extr_mmap.c_arch_get_unmapped_area_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i64, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@DOWN = common dso_local global i32 0, align 4
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i64, i64, i64, i64, i32)* @arch_get_unmapped_area_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @arch_get_unmapped_area_common(%struct.file* %0, i64 %1, i64 %2, i64 %3, i64 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i64 %3, i64* %11, align 8
  store i64 %4, i64* %12, align 8
  store i32 %5, i32* %13, align 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %14, align 8
  %22 = load i64, i64* %9, align 8
  store i64 %22, i64* %16, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @TASK_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %6
  %30 = load i64, i64* @ENOMEM, align 8
  %31 = sub i64 0, %30
  store i64 %31, i64* %7, align 8
  br label %156

32:                                               ; preds = %6
  %33 = load i64, i64* %12, align 8
  %34 = load i64, i64* @MAP_FIXED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %65

37:                                               ; preds = %32
  %38 = load i64, i64* @TASK_SIZE, align 8
  %39 = load i64, i64* %10, align 8
  %40 = sub i64 %38, %39
  %41 = load i64, i64* %16, align 8
  %42 = icmp ult i64 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i64, i64* @EINVAL, align 8
  %45 = sub i64 0, %44
  store i64 %45, i64* %7, align 8
  br label %156

46:                                               ; preds = %37
  %47 = load i64, i64* %12, align 8
  %48 = load i64, i64* @MAP_SHARED, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %63

51:                                               ; preds = %46
  %52 = load i64, i64* %16, align 8
  %53 = load i64, i64* %11, align 8
  %54 = load i64, i64* @PAGE_SHIFT, align 8
  %55 = shl i64 %53, %54
  %56 = sub i64 %52, %55
  %57 = load i64, i64* @shm_align_mask, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %51
  %61 = load i64, i64* @EINVAL, align 8
  %62 = sub i64 0, %61
  store i64 %62, i64* %7, align 8
  br label %156

63:                                               ; preds = %51, %46
  %64 = load i64, i64* %16, align 8
  store i64 %64, i64* %7, align 8
  br label %156

65:                                               ; preds = %32
  store i32 0, i32* %17, align 4
  %66 = load %struct.file*, %struct.file** %8, align 8
  %67 = icmp ne %struct.file* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %12, align 8
  %70 = load i64, i64* @MAP_SHARED, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %65
  store i32 1, i32* %17, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i64, i64* %16, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32, i32* %17, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %16, align 8
  %82 = load i64, i64* %11, align 8
  %83 = call i64 @COLOUR_ALIGN(i64 %81, i64 %82)
  store i64 %83, i64* %16, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %16, align 8
  %86 = call i64 @PAGE_ALIGN(i64 %85)
  store i64 %86, i64* %16, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %89 = load i64, i64* %16, align 8
  %90 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %88, i64 %89)
  store %struct.vm_area_struct* %90, %struct.vm_area_struct** %15, align 8
  %91 = load i64, i64* @TASK_SIZE, align 8
  %92 = load i64, i64* %10, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %16, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %98 = icmp ne %struct.vm_area_struct* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i64, i64* %16, align 8
  %101 = load i64, i64* %10, align 8
  %102 = add i64 %100, %101
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %104 = call i64 @vm_start_gap(%struct.vm_area_struct* %103)
  %105 = icmp ule i64 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99, %96
  %107 = load i64, i64* %16, align 8
  store i64 %107, i64* %7, align 8
  br label %156

108:                                              ; preds = %99, %87
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i64, i64* %10, align 8
  %111 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 0
  store i64 %110, i64* %111, align 8
  %112 = load i32, i32* %17, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %118

114:                                              ; preds = %109
  %115 = load i64, i64* @PAGE_MASK, align 8
  %116 = load i64, i64* @shm_align_mask, align 8
  %117 = and i64 %115, %116
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %114
  %120 = phi i64 [ %117, %114 ], [ 0, %118 ]
  %121 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 1
  store i64 %120, i64* %121, align 8
  %122 = load i64, i64* %11, align 8
  %123 = load i64, i64* @PAGE_SHIFT, align 8
  %124 = shl i64 %122, %123
  %125 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 2
  store i64 %124, i64* %125, align 8
  %126 = load i32, i32* %13, align 4
  %127 = load i32, i32* @DOWN, align 4
  %128 = icmp eq i32 %126, %127
  br i1 %128, label %129, label %147

129:                                              ; preds = %119
  %130 = load i64, i64* @VM_UNMAPPED_AREA_TOPDOWN, align 8
  %131 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 5
  store i64 %130, i64* %131, align 8
  %132 = load i64, i64* @PAGE_SIZE, align 8
  %133 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 3
  store i64 %132, i64* %133, align 8
  %134 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %135 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 4
  store i64 %136, i64* %137, align 8
  %138 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %18)
  store i64 %138, i64* %16, align 8
  %139 = load i64, i64* %16, align 8
  %140 = load i64, i64* @PAGE_MASK, align 8
  %141 = xor i64 %140, -1
  %142 = and i64 %139, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %129
  %145 = load i64, i64* %16, align 8
  store i64 %145, i64* %7, align 8
  br label %156

146:                                              ; preds = %129
  br label %147

147:                                              ; preds = %146, %119
  %148 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 5
  store i64 0, i64* %148, align 8
  %149 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %150 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 3
  store i64 %151, i64* %152, align 8
  %153 = load i64, i64* @TASK_SIZE, align 8
  %154 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 4
  store i64 %153, i64* %154, align 8
  %155 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %18)
  store i64 %155, i64* %7, align 8
  br label %156

156:                                              ; preds = %147, %144, %106, %63, %60, %43, %29
  %157 = load i64, i64* %7, align 8
  ret i64 %157
}

declare dso_local i64 @unlikely(i32) #1

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
