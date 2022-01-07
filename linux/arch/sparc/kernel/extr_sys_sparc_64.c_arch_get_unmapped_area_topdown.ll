; ModuleID = '/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area_topdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/sparc/kernel/extr_sys_sparc_64.c_arch_get_unmapped_area_topdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i8* }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i32, i64, i8*, i32, i64 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@STACK_TOP32 = common dso_local global i8* null, align 8
@TIF_32BIT = common dso_local global i32 0, align 4
@MAP_FIXED = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SHMLBA = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
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
  %15 = alloca i64, align 8
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
  %21 = load i8*, i8** @STACK_TOP32, align 8
  %22 = ptrtoint i8* %21 to i64
  store i64 %22, i64* %14, align 8
  %23 = load i64, i64* %8, align 8
  store i64 %23, i64* %15, align 8
  %24 = load i32, i32* @TIF_32BIT, align 4
  %25 = call i32 @test_thread_flag(i32 %24)
  %26 = icmp ne i32 %25, 0
  %27 = xor i1 %26, true
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load i64, i64* %11, align 8
  %31 = load i64, i64* @MAP_FIXED, align 8
  %32 = and i64 %30, %31
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %5
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* @MAP_SHARED, align 8
  %37 = and i64 %35, %36
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %34
  %40 = load i64, i64* %15, align 8
  %41 = load i64, i64* %10, align 8
  %42 = load i64, i64* @PAGE_SHIFT, align 8
  %43 = shl i64 %41, %42
  %44 = sub i64 %40, %43
  %45 = load i32, i32* @SHMLBA, align 4
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  %48 = and i64 %44, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %39
  %51 = load i64, i64* @EINVAL, align 8
  %52 = sub i64 0, %51
  store i64 %52, i64* %6, align 8
  br label %157

53:                                               ; preds = %39, %34
  %54 = load i64, i64* %15, align 8
  store i64 %54, i64* %6, align 8
  br label %157

55:                                               ; preds = %5
  %56 = load i64, i64* %9, align 8
  %57 = load i64, i64* %14, align 8
  %58 = icmp ugt i64 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i64, i64* @ENOMEM, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %6, align 8
  br label %157

65:                                               ; preds = %55
  store i32 0, i32* %16, align 4
  %66 = load %struct.file*, %struct.file** %7, align 8
  %67 = icmp ne %struct.file* %66, null
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load i64, i64* %11, align 8
  %70 = load i64, i64* @MAP_SHARED, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68, %65
  store i32 1, i32* %16, align 4
  br label %74

74:                                               ; preds = %73, %68
  %75 = load i64, i64* %15, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %109

77:                                               ; preds = %74
  %78 = load i32, i32* %16, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %77
  %81 = load i64, i64* %15, align 8
  %82 = load i64, i64* %10, align 8
  %83 = call i64 @COLOR_ALIGN(i64 %81, i64 %82)
  store i64 %83, i64* %15, align 8
  br label %87

84:                                               ; preds = %77
  %85 = load i64, i64* %15, align 8
  %86 = call i64 @PAGE_ALIGN(i64 %85)
  store i64 %86, i64* %15, align 8
  br label %87

87:                                               ; preds = %84, %80
  %88 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %89 = load i64, i64* %15, align 8
  %90 = call %struct.vm_area_struct* @find_vma(%struct.mm_struct* %88, i64 %89)
  store %struct.vm_area_struct* %90, %struct.vm_area_struct** %12, align 8
  %91 = load i64, i64* %14, align 8
  %92 = load i64, i64* %9, align 8
  %93 = sub i64 %91, %92
  %94 = load i64, i64* %15, align 8
  %95 = icmp uge i64 %93, %94
  br i1 %95, label %96, label %108

96:                                               ; preds = %87
  %97 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %98 = icmp ne %struct.vm_area_struct* %97, null
  br i1 %98, label %99, label %106

99:                                               ; preds = %96
  %100 = load i64, i64* %15, align 8
  %101 = load i64, i64* %9, align 8
  %102 = add i64 %100, %101
  %103 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %104 = call i64 @vm_start_gap(%struct.vm_area_struct* %103)
  %105 = icmp ule i64 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %99, %96
  %107 = load i64, i64* %15, align 8
  store i64 %107, i64* %6, align 8
  br label %157

108:                                              ; preds = %99, %87
  br label %109

109:                                              ; preds = %108, %74
  %110 = load i64, i64* @VM_UNMAPPED_AREA_TOPDOWN, align 8
  %111 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 5
  store i64 %110, i64* %111, align 8
  %112 = load i64, i64* %9, align 8
  %113 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 0
  store i64 %112, i64* %113, align 8
  %114 = load i32, i32* @PAGE_SIZE, align 4
  %115 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 4
  store i32 %114, i32* %115, align 8
  %116 = load %struct.mm_struct*, %struct.mm_struct** %13, align 8
  %117 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %116, i32 0, i32 0
  %118 = load i8*, i8** %117, align 8
  %119 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 3
  store i8* %118, i8** %119, align 8
  %120 = load i32, i32* %16, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %109
  %123 = load i32, i32* @PAGE_MASK, align 4
  %124 = load i32, i32* @SHMLBA, align 4
  %125 = sub nsw i32 %124, 1
  %126 = and i32 %123, %125
  br label %128

127:                                              ; preds = %109
  br label %128

128:                                              ; preds = %127, %122
  %129 = phi i32 [ %126, %122 ], [ 0, %127 ]
  %130 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 1
  store i32 %129, i32* %130, align 8
  %131 = load i64, i64* %10, align 8
  %132 = load i64, i64* @PAGE_SHIFT, align 8
  %133 = shl i64 %131, %132
  %134 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 2
  store i64 %133, i64* %134, align 8
  %135 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %17)
  store i64 %135, i64* %15, align 8
  %136 = load i64, i64* %15, align 8
  %137 = load i32, i32* @PAGE_MASK, align 4
  %138 = xor i32 %137, -1
  %139 = sext i32 %138 to i64
  %140 = and i64 %136, %139
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %128
  %143 = load i64, i64* %15, align 8
  %144 = load i64, i64* @ENOMEM, align 8
  %145 = sub i64 0, %144
  %146 = icmp ne i64 %143, %145
  %147 = zext i1 %146 to i32
  %148 = call i32 @VM_BUG_ON(i32 %147)
  %149 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 5
  store i64 0, i64* %149, align 8
  %150 = load i32, i32* @TASK_UNMAPPED_BASE, align 4
  %151 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 4
  store i32 %150, i32* %151, align 8
  %152 = load i8*, i8** @STACK_TOP32, align 8
  %153 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %17, i32 0, i32 3
  store i8* %152, i8** %153, align 8
  %154 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %17)
  store i64 %154, i64* %15, align 8
  br label %155

155:                                              ; preds = %142, %128
  %156 = load i64, i64* %15, align 8
  store i64 %156, i64* %6, align 8
  br label %157

157:                                              ; preds = %155, %106, %62, %53, %50
  %158 = load i64, i64* %6, align 8
  ret i64 %158
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @test_thread_flag(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @COLOR_ALIGN(i64, i64) #1

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
