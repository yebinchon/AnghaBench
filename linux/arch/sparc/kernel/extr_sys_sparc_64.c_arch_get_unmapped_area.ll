; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i64, i64, i32, i64, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@STACK_TOP32 = common dso_local global i64 0, align 8
@VA_EXCLUDE_START = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@TASK_UNMAPPED_BASE = common dso_local global i64 0, align 8
@PAGE_MASK = common dso_local global i32 0, align 4
@VA_EXCLUDE_END = common dso_local global i64 0, align 8

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
  %14 = alloca i64, align 8
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
  %20 = load i64, i64* @TASK_SIZE, align 8
  store i64 %20, i64* %14, align 8
  %21 = load i64, i64* %11, align 8
  %22 = load i64, i64* @MAP_FIXED, align 8
  %23 = and i64 %21, %22
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %46

25:                                               ; preds = %5
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @MAP_SHARED, align 8
  %28 = and i64 %26, %27
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %44

30:                                               ; preds = %25
  %31 = load i64, i64* %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = load i64, i64* @PAGE_SHIFT, align 8
  %34 = shl i64 %32, %33
  %35 = sub i64 %31, %34
  %36 = load i32, i32* @SHMLBA, align 4
  %37 = sub nsw i32 %36, 1
  %38 = sext i32 %37 to i64
  %39 = and i64 %35, %38
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %30
  %42 = load i64, i64* @EINVAL, align 8
  %43 = sub i64 0, %42
  store i64 %43, i64* %6, align 8
  br label %162

44:                                               ; preds = %30, %25
  %45 = load i64, i64* %8, align 8
  store i64 %45, i64* %6, align 8
  br label %162

46:                                               ; preds = %5
  %47 = load i32, i32* @TIF_32BIT, align 4
  %48 = call i64 @test_thread_flag(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i64, i64* @STACK_TOP32, align 8
  store i64 %51, i64* %14, align 8
  br label %52

52:                                               ; preds = %50, %46
  %53 = load i64, i64* %9, align 8
  %54 = load i64, i64* %14, align 8
  %55 = icmp ugt i64 %53, %54
  br i1 %55, label %60, label %56

56:                                               ; preds = %52
  %57 = load i64, i64* %9, align 8
  %58 = load i64, i64* @VA_EXCLUDE_START, align 8
  %59 = icmp uge i64 %57, %58
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi i1 [ true, %52 ], [ %59, %56 ]
  %62 = zext i1 %61 to i32
  %63 = call i64 @unlikely(i32 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load i64, i64* @ENOMEM, align 8
  %67 = sub i64 0, %66
  store i64 %67, i64* %6, align 8
  br label %162

68:                                               ; preds = %60
  store i32 0, i32* %15, align 4
  %69 = load %struct.file*, %struct.file** %7, align 8
  %70 = icmp ne %struct.file* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %68
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* @MAP_SHARED, align 8
  %74 = and i64 %72, %73
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %71, %68
  store i32 1, i32* %15, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load i64, i64* %8, align 8
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %112

80:                                               ; preds = %77
  %81 = load i32, i32* %15, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i64, i64* %8, align 8
  %85 = load i64, i64* %10, align 8
  %86 = call i64 @COLOR_ALIGN(i64 %84, i64 %85)
  store i64 %86, i64* %8, align 8
  br label %90

87:                                               ; preds = %80
  %88 = load i64, i64* %8, align 8
  %89 = call i64 @PAGE_ALIGN(i64 %88)
  store i64 %89, i64* %8, align 8
  br label %90

90:                                               ; preds = %87, %83
  %91 = load %struct.mm_struct*, %struct.mm_struct** %12, align 8
  %92 = load i64, i64* %8, align 8
  %93 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %91, i64 %92)
  store %struct.vm_area_struct* %93, %struct.vm_area_struct** %13, align 8
  %94 = load i64, i64* %14, align 8
  %95 = load i64, i64* %9, align 8
  %96 = sub i64 %94, %95
  %97 = load i64, i64* %8, align 8
  %98 = icmp uge i64 %96, %97
  br i1 %98, label %99, label %111

99:                                               ; preds = %90
  %100 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %101 = icmp ne %struct.vm_area_struct* %100, null
  br i1 %101, label %102, label %109

102:                                              ; preds = %99
  %103 = load i64, i64* %8, align 8
  %104 = load i64, i64* %9, align 8
  %105 = add i64 %103, %104
  %106 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %107 = call i64 @vm_start_gap(%struct.vm_area_struct* %106)
  %108 = icmp ule i64 %105, %107
  br i1 %108, label %109, label %111

109:                                              ; preds = %102, %99
  %110 = load i64, i64* %8, align 8
  store i64 %110, i64* %6, align 8
  br label %162

111:                                              ; preds = %102, %90
  br label %112

112:                                              ; preds = %111, %77
  %113 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 5
  store i64 0, i64* %113, align 8
  %114 = load i64, i64* %9, align 8
  %115 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 0
  store i64 %114, i64* %115, align 8
  %116 = load i64, i64* @TASK_UNMAPPED_BASE, align 8
  %117 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 1
  store i64 %116, i64* %117, align 8
  %118 = load i64, i64* %14, align 8
  %119 = load i64, i64* @VA_EXCLUDE_START, align 8
  %120 = call i64 @min(i64 %118, i64 %119)
  %121 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 2
  store i64 %120, i64* %121, align 8
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %112
  %125 = load i32, i32* @PAGE_MASK, align 4
  %126 = load i32, i32* @SHMLBA, align 4
  %127 = sub nsw i32 %126, 1
  %128 = and i32 %125, %127
  br label %130

129:                                              ; preds = %112
  br label %130

130:                                              ; preds = %129, %124
  %131 = phi i32 [ %128, %124 ], [ 0, %129 ]
  %132 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 3
  store i32 %131, i32* %132, align 8
  %133 = load i64, i64* %10, align 8
  %134 = load i64, i64* @PAGE_SHIFT, align 8
  %135 = shl i64 %133, %134
  %136 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 4
  store i64 %135, i64* %136, align 8
  %137 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %16)
  store i64 %137, i64* %8, align 8
  %138 = load i64, i64* %8, align 8
  %139 = load i32, i32* @PAGE_MASK, align 4
  %140 = xor i32 %139, -1
  %141 = sext i32 %140 to i64
  %142 = and i64 %138, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %160

144:                                              ; preds = %130
  %145 = load i64, i64* %14, align 8
  %146 = load i64, i64* @VA_EXCLUDE_END, align 8
  %147 = icmp ugt i64 %145, %146
  br i1 %147, label %148, label %160

148:                                              ; preds = %144
  %149 = load i64, i64* %8, align 8
  %150 = load i64, i64* @ENOMEM, align 8
  %151 = sub i64 0, %150
  %152 = icmp ne i64 %149, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @VM_BUG_ON(i32 %153)
  %155 = load i64, i64* @VA_EXCLUDE_END, align 8
  %156 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 1
  store i64 %155, i64* %156, align 8
  %157 = load i64, i64* %14, align 8
  %158 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %16, i32 0, i32 2
  store i64 %157, i64* %158, align 8
  %159 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %16)
  store i64 %159, i64* %8, align 8
  br label %160

160:                                              ; preds = %148, %144, %130
  %161 = load i64, i64* %8, align 8
  store i64 %161, i64* %6, align 8
  br label %162

162:                                              ; preds = %160, %109, %65, %44, %41
  %163 = load i64, i64* %6, align 8
  ret i64 %163
}

declare dso_local i64 @test_thread_flag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @COLOR_ALIGN(i64, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma(%struct.mm_struct*, i64) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
