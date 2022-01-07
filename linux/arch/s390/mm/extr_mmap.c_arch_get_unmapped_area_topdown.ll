; ModuleID = '/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_arch_get_unmapped_area_topdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/s390/mm/extr_mmap.c_arch_get_unmapped_area_topdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i64, i32, i64 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@mmap_min_addr = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i64 0, align 8
@MMAP_ALIGN_MASK = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i32 0, align 4

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
  %15 = alloca %struct.vm_unmapped_area_info, align 8
  %16 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.mm_struct*, %struct.mm_struct** %18, align 8
  store %struct.mm_struct* %19, %struct.mm_struct** %13, align 8
  %20 = load i64, i64* %8, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @TASK_SIZE, align 8
  %23 = load i64, i64* @mmap_min_addr, align 8
  %24 = sub i64 %22, %23
  %25 = icmp ugt i64 %21, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %156

29:                                               ; preds = %5
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @MAP_FIXED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %125

35:                                               ; preds = %29
  %36 = load i64, i64* %14, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  %39 = load i64, i64* %14, align 8
  %40 = call i64 @PAGE_ALIGN(i64 %39)
  store i64 %40, i64* %14, align 8
  %41 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %42 = load i64, i64* %14, align 8
  %43 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %41, i64 %42)
  store %struct.vm_area_struct* %43, %struct.vm_area_struct** %12, align 8
  %44 = load i64, i64* @TASK_SIZE, align 8
  %45 = load i64, i64* %9, align 8
  %46 = sub i64 %44, %45
  %47 = load i64, i64* %14, align 8
  %48 = icmp uge i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %38
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* @mmap_min_addr, align 8
  %52 = icmp uge i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %55 = icmp ne %struct.vm_area_struct* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = load i64, i64* %14, align 8
  %58 = load i64, i64* %9, align 8
  %59 = add i64 %57, %58
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %61 = call i64 @vm_start_gap(%struct.vm_area_struct* %60)
  %62 = icmp ule i64 %59, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %56, %53
  br label %125

64:                                               ; preds = %56, %49, %38
  br label %65

65:                                               ; preds = %64, %35
  %66 = load i64, i64* @VM_UNMAPPED_AREA_TOPDOWN, align 8
  %67 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i64 %66, i64* %67, align 8
  %68 = load i64, i64* %9, align 8
  %69 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %68, i64* %69, align 8
  %70 = load i32, i32* @PAGE_SIZE, align 4
  %71 = load i64, i64* @mmap_min_addr, align 8
  %72 = call i32 @max(i32 %70, i64 %71)
  %73 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i32 %72, i32* %73, align 8
  %74 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %75 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %76, i64* %77, align 8
  %78 = load %struct.file*, %struct.file** %7, align 8
  %79 = icmp ne %struct.file* %78, null
  br i1 %79, label %85, label %80

80:                                               ; preds = %65
  %81 = load i64, i64* %11, align 8
  %82 = load i64, i64* @MAP_SHARED, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %90

85:                                               ; preds = %80, %65
  %86 = load i64, i64* @MMAP_ALIGN_MASK, align 8
  %87 = load i64, i64* @PAGE_SHIFT, align 8
  %88 = shl i64 %86, %87
  %89 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i64 %88, i64* %89, align 8
  br label %92

90:                                               ; preds = %80
  %91 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %90, %85
  %93 = load i64, i64* %10, align 8
  %94 = load i64, i64* @PAGE_SHIFT, align 8
  %95 = shl i64 %93, %94
  %96 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i64 %95, i64* %96, align 8
  %97 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %97, i64* %14, align 8
  %98 = load i64, i64* %14, align 8
  %99 = load i64, i64* @PAGE_MASK, align 8
  %100 = xor i64 %99, -1
  %101 = and i64 %98, %100
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %124

103:                                              ; preds = %92
  %104 = load i64, i64* %14, align 8
  %105 = load i64, i64* @ENOMEM, align 8
  %106 = sub i64 0, %105
  %107 = icmp ne i64 %104, %106
  %108 = zext i1 %107 to i32
  %109 = call i32 @VM_BUG_ON(i32 %108)
  %110 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i64 0, i64* %110, align 8
  %111 = load i32, i32* @TASK_UNMAPPED_BASE, align 4
  %112 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i32 %111, i32* %112, align 8
  %113 = load i64, i64* @TASK_SIZE, align 8
  %114 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %113, i64* %114, align 8
  %115 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %115, i64* %14, align 8
  %116 = load i64, i64* %14, align 8
  %117 = load i64, i64* @PAGE_MASK, align 8
  %118 = xor i64 %117, -1
  %119 = and i64 %116, %118
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %103
  %122 = load i64, i64* %14, align 8
  store i64 %122, i64* %6, align 8
  br label %156

123:                                              ; preds = %103
  br label %124

124:                                              ; preds = %123, %92
  br label %125

125:                                              ; preds = %124, %63, %34
  %126 = load i64, i64* %14, align 8
  %127 = load i64, i64* %9, align 8
  %128 = add i64 %126, %127
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i32 0, i32 0
  %131 = load %struct.mm_struct*, %struct.mm_struct** %130, align 8
  %132 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %132, i32 0, i32 0
  %134 = load i64, i64* %133, align 8
  %135 = icmp ugt i64 %128, %134
  br i1 %135, label %136, label %154

136:                                              ; preds = %125
  %137 = load i64, i64* %14, align 8
  %138 = load i64, i64* %9, align 8
  %139 = add i64 %137, %138
  %140 = load i64, i64* @TASK_SIZE, align 8
  %141 = icmp ule i64 %139, %140
  br i1 %141, label %142, label %154

142:                                              ; preds = %136
  %143 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %144 = load i64, i64* %14, align 8
  %145 = load i64, i64* %9, align 8
  %146 = add i64 %144, %145
  %147 = call i32 @crst_table_upgrade(%struct.mm_struct* %143, i64 %146)
  store i32 %147, i32* %16, align 4
  %148 = load i32, i32* %16, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %150, label %153

150:                                              ; preds = %142
  %151 = load i32, i32* %16, align 4
  %152 = sext i32 %151 to i64
  store i64 %152, i64* %6, align 8
  br label %156

153:                                              ; preds = %142
  br label %154

154:                                              ; preds = %153, %136, %125
  %155 = load i64, i64* %14, align 8
  store i64 %155, i64* %6, align 8
  br label %156

156:                                              ; preds = %154, %150, %121, %26
  %157 = load i64, i64* %6, align 8
  ret i64 %157
}

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i32 @max(i32, i64) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i32 @crst_table_upgrade(%struct.mm_struct*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
