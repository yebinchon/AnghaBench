; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area_topdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kernel/extr_sys_x86_64.c_arch_get_unmapped_area_topdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_32BIT = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i64 0, align 8
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@DEFAULT_MAP_WINDOW = common dso_local global i64 0, align 8
@TASK_SIZE_MAX = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8

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
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %13, align 8
  %19 = load i64, i64* %8, align 8
  store i64 %19, i64* %14, align 8
  %20 = load i64, i64* %14, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @mpx_unmapped_area_check(i64 %20, i64 %21, i64 %22)
  store i64 %23, i64* %14, align 8
  %24 = load i64, i64* %14, align 8
  %25 = call i64 @IS_ERR_VALUE(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %5
  %28 = load i64, i64* %14, align 8
  store i64 %28, i64* %6, align 8
  br label %143

29:                                               ; preds = %5
  %30 = load i64, i64* %9, align 8
  %31 = load i64, i64* @TASK_SIZE, align 8
  %32 = icmp ugt i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i64, i64* @ENOMEM, align 8
  %35 = sub i64 0, %34
  store i64 %35, i64* %6, align 8
  br label %143

36:                                               ; preds = %29
  %37 = load i64, i64* %11, align 8
  %38 = load i64, i64* @MAP_FIXED, align 8
  %39 = and i64 %37, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = load i64, i64* %14, align 8
  store i64 %42, i64* %6, align 8
  br label %143

43:                                               ; preds = %36
  %44 = call i32 (...) @in_32bit_syscall()
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i64, i64* %11, align 8
  %48 = load i64, i64* @MAP_32BIT, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46
  br label %136

52:                                               ; preds = %46, %43
  %53 = load i64, i64* %14, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %80

55:                                               ; preds = %52
  %56 = load i64, i64* @PAGE_MASK, align 8
  %57 = load i64, i64* %14, align 8
  %58 = and i64 %57, %56
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @mmap_address_hint_valid(i64 %59, i64 %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %81

64:                                               ; preds = %55
  %65 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %66 = load i64, i64* %14, align 8
  %67 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %65, i64 %66)
  store %struct.vm_area_struct* %67, %struct.vm_area_struct** %12, align 8
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %69 = icmp ne %struct.vm_area_struct* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load i64, i64* %14, align 8
  %72 = load i64, i64* %9, align 8
  %73 = add i64 %71, %72
  %74 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %75 = call i64 @vm_start_gap(%struct.vm_area_struct* %74)
  %76 = icmp ule i64 %73, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %70, %64
  %78 = load i64, i64* %14, align 8
  store i64 %78, i64* %6, align 8
  br label %143

79:                                               ; preds = %70
  br label %80

80:                                               ; preds = %79, %52
  br label %81

81:                                               ; preds = %80, %63
  %82 = load i32, i32* @VM_UNMAPPED_AREA_TOPDOWN, align 4
  %83 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 5
  store i32 %82, i32* %83, align 8
  %84 = load i64, i64* %9, align 8
  %85 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 0
  store i64 %84, i64* %85, align 8
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 4
  store i32 %86, i32* %87, align 4
  %88 = call i32 @get_mmap_base(i32 0)
  %89 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  store i32 %88, i32* %89, align 8
  %90 = load i64, i64* %14, align 8
  %91 = load i64, i64* @DEFAULT_MAP_WINDOW, align 8
  %92 = icmp ugt i64 %90, %91
  br i1 %92, label %93, label %105

93:                                               ; preds = %81
  %94 = call i32 (...) @in_32bit_syscall()
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %105, label %96

96:                                               ; preds = %93
  %97 = load i64, i64* @TASK_SIZE_MAX, align 8
  %98 = load i64, i64* @DEFAULT_MAP_WINDOW, align 8
  %99 = sub i64 %97, %98
  %100 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = add i64 %102, %99
  %104 = trunc i64 %103 to i32
  store i32 %104, i32* %100, align 8
  br label %105

105:                                              ; preds = %96, %93, %81
  %106 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i64 0, i64* %106, align 8
  %107 = load i64, i64* %10, align 8
  %108 = load i64, i64* @PAGE_SHIFT, align 8
  %109 = shl i64 %107, %108
  %110 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  store i64 %109, i64* %110, align 8
  %111 = load %struct.file*, %struct.file** %7, align 8
  %112 = icmp ne %struct.file* %111, null
  br i1 %112, label %113, label %120

113:                                              ; preds = %105
  %114 = call i64 (...) @get_align_mask()
  %115 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 2
  store i64 %114, i64* %115, align 8
  %116 = call i64 (...) @get_align_bits()
  %117 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %15, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add i64 %118, %116
  store i64 %119, i64* %117, align 8
  br label %120

120:                                              ; preds = %113, %105
  %121 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %15)
  store i64 %121, i64* %14, align 8
  %122 = load i64, i64* %14, align 8
  %123 = load i64, i64* @PAGE_MASK, align 8
  %124 = xor i64 %123, -1
  %125 = and i64 %122, %124
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %129, label %127

127:                                              ; preds = %120
  %128 = load i64, i64* %14, align 8
  store i64 %128, i64* %6, align 8
  br label %143

129:                                              ; preds = %120
  %130 = load i64, i64* %14, align 8
  %131 = load i64, i64* @ENOMEM, align 8
  %132 = sub i64 0, %131
  %133 = icmp ne i64 %130, %132
  %134 = zext i1 %133 to i32
  %135 = call i32 @VM_BUG_ON(i32 %134)
  br label %136

136:                                              ; preds = %129, %51
  %137 = load %struct.file*, %struct.file** %7, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i64, i64* %9, align 8
  %140 = load i64, i64* %10, align 8
  %141 = load i64, i64* %11, align 8
  %142 = call i64 @arch_get_unmapped_area(%struct.file* %137, i64 %138, i64 %139, i64 %140, i64 %141)
  store i64 %142, i64* %6, align 8
  br label %143

143:                                              ; preds = %136, %127, %77, %41, %33, %27
  %144 = load i64, i64* %6, align 8
  ret i64 %144
}

declare dso_local i64 @mpx_unmapped_area_check(i64, i64, i64) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i32 @in_32bit_syscall(...) #1

declare dso_local i32 @mmap_address_hint_valid(i64, i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i32 @get_mmap_base(i32) #1

declare dso_local i64 @get_align_mask(...) #1

declare dso_local i64 @get_align_bits(...) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @arch_get_unmapped_area(%struct.file*, i64, i64, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
