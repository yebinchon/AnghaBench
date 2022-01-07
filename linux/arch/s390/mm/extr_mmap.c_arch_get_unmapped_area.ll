; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@MMAP_ALIGN_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8

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
  %15 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %12, align 8
  %19 = load i64, i64* %9, align 8
  %20 = load i64, i64* @TASK_SIZE, align 8
  %21 = load i64, i64* @mmap_min_addr, align 8
  %22 = sub i64 %20, %21
  %23 = icmp ugt i64 %19, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %5
  %25 = load i64, i64* @ENOMEM, align 8
  %26 = sub i64 0, %25
  store i64 %26, i64* %6, align 8
  br label %132

27:                                               ; preds = %5
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @MAP_FIXED, align 8
  %30 = and i64 %28, %29
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %101

33:                                               ; preds = %27
  %34 = load i64, i64* %8, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %63

36:                                               ; preds = %33
  %37 = load i64, i64* %8, align 8
  %38 = call i64 @PAGE_ALIGN(i64 %37)
  store i64 %38, i64* %8, align 8
  %39 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %39, i64 %40)
  store %struct.vm_area_struct* %41, %struct.vm_area_struct** %13, align 8
  %42 = load i64, i64* @TASK_SIZE, align 8
  %43 = load i64, i64* %9, align 8
  %44 = sub i64 %42, %43
  %45 = load i64, i64* %8, align 8
  %46 = icmp uge i64 %44, %45
  br i1 %46, label %47, label %62

47:                                               ; preds = %36
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* @mmap_min_addr, align 8
  %50 = icmp uge i64 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %53 = icmp ne %struct.vm_area_struct* %52, null
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load i64, i64* %8, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %59 = call i64 @vm_start_gap(%struct.vm_area_struct* %58)
  %60 = icmp ule i64 %57, %59
  br i1 %60, label %61, label %62

61:                                               ; preds = %54, %51
  br label %101

62:                                               ; preds = %54, %47, %36
  br label %63

63:                                               ; preds = %62, %33
  %64 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 5
  store i64 0, i64* %64, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 0
  store i64 %65, i64* %66, align 8
  %67 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %68 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 4
  store i32 %69, i32* %70, align 8
  %71 = load i64, i64* @TASK_SIZE, align 8
  %72 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 1
  store i64 %71, i64* %72, align 8
  %73 = load %struct.file*, %struct.file** %7, align 8
  %74 = icmp ne %struct.file* %73, null
  br i1 %74, label %80, label %75

75:                                               ; preds = %63
  %76 = load i64, i64* %11, align 8
  %77 = load i64, i64* @MAP_SHARED, align 8
  %78 = and i64 %76, %77
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %85

80:                                               ; preds = %75, %63
  %81 = load i64, i64* @MMAP_ALIGN_MASK, align 8
  %82 = load i64, i64* @PAGE_SHIFT, align 8
  %83 = shl i64 %81, %82
  %84 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 2
  store i64 %83, i64* %84, align 8
  br label %87

85:                                               ; preds = %75
  %86 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 2
  store i64 0, i64* %86, align 8
  br label %87

87:                                               ; preds = %85, %80
  %88 = load i64, i64* %10, align 8
  %89 = load i64, i64* @PAGE_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %14, i32 0, i32 3
  store i64 %90, i64* %91, align 8
  %92 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %14)
  store i64 %92, i64* %8, align 8
  %93 = load i64, i64* %8, align 8
  %94 = load i64, i64* @PAGE_MASK, align 8
  %95 = xor i64 %94, -1
  %96 = and i64 %93, %95
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %87
  %99 = load i64, i64* %8, align 8
  store i64 %99, i64* %6, align 8
  br label %132

100:                                              ; preds = %87
  br label %101

101:                                              ; preds = %100, %61, %32
  %102 = load i64, i64* %8, align 8
  %103 = load i64, i64* %9, align 8
  %104 = add i64 %102, %103
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load %struct.mm_struct*, %struct.mm_struct** %106, align 8
  %108 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ugt i64 %104, %110
  br i1 %111, label %112, label %130

112:                                              ; preds = %101
  %113 = load i64, i64* %8, align 8
  %114 = load i64, i64* %9, align 8
  %115 = add i64 %113, %114
  %116 = load i64, i64* @TASK_SIZE, align 8
  %117 = icmp ule i64 %115, %116
  br i1 %117, label %118, label %130

118:                                              ; preds = %112
  %119 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* %9, align 8
  %122 = add i64 %120, %121
  %123 = call i32 @crst_table_upgrade(%struct.mm_struct* %119, i64 %122)
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %15, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %118
  %127 = load i32, i32* %15, align 4
  %128 = sext i32 %127 to i64
  store i64 %128, i64* %6, align 8
  br label %132

129:                                              ; preds = %118
  br label %130

130:                                              ; preds = %129, %112, %101
  %131 = load i64, i64* %8, align 8
  store i64 %131, i64* %6, align 8
  br label %132

132:                                              ; preds = %130, %126, %98, %24
  %133 = load i64, i64* %6, align 8
  ret i64 %133
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @crst_table_upgrade(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
