; ModuleID = '/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_arch_get_unmapped_area_topdown.c'
source_filename = "/home/carl/AnghaBench/linux/arch/parisc/kernel/extr_sys_parisc.c_arch_get_unmapped_area_topdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32 }
%struct.file = type { i32 }
%struct.vm_area_struct = type { i32 }
%struct.vm_unmapped_area_info = type { i64, i32, i64, i32, i32, i32 }

@current = common dso_local global %struct.TYPE_2__* null, align 8
@TASK_SIZE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i64 0, align 8
@MAP_SHARED = common dso_local global i64 0, align 8
@MAP_FIXED = common dso_local global i64 0, align 8
@SHM_COLOUR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i64 0, align 8
@VM_UNMAPPED_AREA_TOPDOWN = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
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
  %13 = alloca %struct.vm_area_struct*, align 8
  %14 = alloca %struct.mm_struct*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.vm_unmapped_area_info, align 8
  store %struct.file* %0, %struct.file** %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** @current, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load %struct.mm_struct*, %struct.mm_struct** %20, align 8
  store %struct.mm_struct* %21, %struct.mm_struct** %14, align 8
  %22 = load i64, i64* %8, align 8
  store i64 %22, i64* %15, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @TASK_SIZE, align 8
  %25 = icmp ugt i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i64, i64* @ENOMEM, align 8
  %28 = sub i64 0, %27
  store i64 %28, i64* %6, align 8
  br label %184

29:                                               ; preds = %5
  store i32 0, i32* %16, align 4
  %30 = load %struct.file*, %struct.file** %7, align 8
  %31 = icmp ne %struct.file* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load i64, i64* %11, align 8
  %34 = load i64, i64* @MAP_SHARED, align 8
  %35 = and i64 %33, %34
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %29
  store i32 1, i32* %16, align 4
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.file*, %struct.file** %7, align 8
  %40 = call i32 @GET_LAST_MMAP(%struct.file* %39)
  store i32 %40, i32* %17, align 4
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @MAP_FIXED, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %68

45:                                               ; preds = %38
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @MAP_SHARED, align 8
  %48 = and i64 %46, %47
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %67

50:                                               ; preds = %45
  %51 = load i32, i32* %17, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %67

53:                                               ; preds = %50
  %54 = load i64, i64* %15, align 8
  %55 = load i32, i32* %17, align 4
  %56 = load i64, i64* %10, align 8
  %57 = call i64 @shared_align_offset(i32 %55, i64 %56)
  %58 = sub i64 %54, %57
  %59 = load i32, i32* @SHM_COLOUR, align 4
  %60 = sub nsw i32 %59, 1
  %61 = sext i32 %60 to i64
  %62 = and i64 %58, %61
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %53
  %65 = load i64, i64* @EINVAL, align 8
  %66 = sub i64 0, %65
  store i64 %66, i64* %6, align 8
  br label %184

67:                                               ; preds = %53, %50, %45
  br label %161

68:                                               ; preds = %38
  %69 = load i64, i64* %15, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %114

71:                                               ; preds = %68
  %72 = load i32, i32* %16, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %71
  %75 = load i32, i32* %17, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load i64, i64* %15, align 8
  %79 = load i32, i32* %17, align 4
  %80 = load i64, i64* %10, align 8
  %81 = call i64 @COLOR_ALIGN(i64 %78, i32 %79, i64 %80)
  store i64 %81, i64* %15, align 8
  br label %85

82:                                               ; preds = %74, %71
  %83 = load i64, i64* %15, align 8
  %84 = call i64 @PAGE_ALIGN(i64 %83)
  store i64 %84, i64* %15, align 8
  br label %85

85:                                               ; preds = %82, %77
  %86 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %87 = load i64, i64* %15, align 8
  %88 = call %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct* %86, i64 %87, %struct.vm_area_struct** %13)
  store %struct.vm_area_struct* %88, %struct.vm_area_struct** %12, align 8
  %89 = load i64, i64* @TASK_SIZE, align 8
  %90 = load i64, i64* %9, align 8
  %91 = sub i64 %89, %90
  %92 = load i64, i64* %15, align 8
  %93 = icmp uge i64 %91, %92
  br i1 %93, label %94, label %113

94:                                               ; preds = %85
  %95 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %96 = icmp ne %struct.vm_area_struct* %95, null
  br i1 %96, label %97, label %104

97:                                               ; preds = %94
  %98 = load i64, i64* %15, align 8
  %99 = load i64, i64* %9, align 8
  %100 = add i64 %98, %99
  %101 = load %struct.vm_area_struct*, %struct.vm_area_struct** %12, align 8
  %102 = call i64 @vm_start_gap(%struct.vm_area_struct* %101)
  %103 = icmp ule i64 %100, %102
  br i1 %103, label %104, label %113

104:                                              ; preds = %97, %94
  %105 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %106 = icmp ne %struct.vm_area_struct* %105, null
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load i64, i64* %15, align 8
  %109 = load %struct.vm_area_struct*, %struct.vm_area_struct** %13, align 8
  %110 = call i64 @vm_end_gap(%struct.vm_area_struct* %109)
  %111 = icmp uge i64 %108, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %107, %104
  br label %161

113:                                              ; preds = %107, %97, %85
  br label %114

114:                                              ; preds = %113, %68
  %115 = load i32, i32* @VM_UNMAPPED_AREA_TOPDOWN, align 4
  %116 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 5
  store i32 %115, i32* %116, align 8
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 0
  store i64 %117, i64* %118, align 8
  %119 = load i32, i32* @PAGE_SIZE, align 4
  %120 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 4
  store i32 %119, i32* %120, align 4
  %121 = load %struct.mm_struct*, %struct.mm_struct** %14, align 8
  %122 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 3
  store i32 %123, i32* %124, align 8
  %125 = load i32, i32* %17, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %132

127:                                              ; preds = %114
  %128 = load i32, i32* @PAGE_MASK, align 4
  %129 = load i32, i32* @SHM_COLOUR, align 4
  %130 = sub nsw i32 %129, 1
  %131 = and i32 %128, %130
  br label %133

132:                                              ; preds = %114
  br label %133

133:                                              ; preds = %132, %127
  %134 = phi i32 [ %131, %127 ], [ 0, %132 ]
  %135 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 1
  store i32 %134, i32* %135, align 8
  %136 = load i32, i32* %17, align 4
  %137 = load i64, i64* %10, align 8
  %138 = call i64 @shared_align_offset(i32 %136, i64 %137)
  %139 = getelementptr inbounds %struct.vm_unmapped_area_info, %struct.vm_unmapped_area_info* %18, i32 0, i32 2
  store i64 %138, i64* %139, align 8
  %140 = call i64 @vm_unmapped_area(%struct.vm_unmapped_area_info* %18)
  store i64 %140, i64* %15, align 8
  %141 = load i64, i64* %15, align 8
  %142 = load i32, i32* @PAGE_MASK, align 4
  %143 = xor i32 %142, -1
  %144 = sext i32 %143 to i64
  %145 = and i64 %141, %144
  %146 = icmp ne i64 %145, 0
  br i1 %146, label %148, label %147

147:                                              ; preds = %133
  br label %161

148:                                              ; preds = %133
  %149 = load i64, i64* %15, align 8
  %150 = load i64, i64* @ENOMEM, align 8
  %151 = sub i64 0, %150
  %152 = icmp ne i64 %149, %151
  %153 = zext i1 %152 to i32
  %154 = call i32 @VM_BUG_ON(i32 %153)
  %155 = load %struct.file*, %struct.file** %7, align 8
  %156 = load i64, i64* %8, align 8
  %157 = load i64, i64* %9, align 8
  %158 = load i64, i64* %10, align 8
  %159 = load i64, i64* %11, align 8
  %160 = call i64 @arch_get_unmapped_area(%struct.file* %155, i64 %156, i64 %157, i64 %158, i64 %159)
  store i64 %160, i64* %6, align 8
  br label %184

161:                                              ; preds = %147, %112, %67
  %162 = load i32, i32* %16, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %182

164:                                              ; preds = %161
  %165 = load i32, i32* %17, align 4
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %182, label %167

167:                                              ; preds = %164
  %168 = load i64, i64* %15, align 8
  %169 = load i32, i32* @PAGE_MASK, align 4
  %170 = xor i32 %169, -1
  %171 = sext i32 %170 to i64
  %172 = and i64 %168, %171
  %173 = icmp ne i64 %172, 0
  br i1 %173, label %182, label %174

174:                                              ; preds = %167
  %175 = load %struct.file*, %struct.file** %7, align 8
  %176 = load i64, i64* %15, align 8
  %177 = load i64, i64* %10, align 8
  %178 = load i64, i64* @PAGE_SHIFT, align 8
  %179 = shl i64 %177, %178
  %180 = sub i64 %176, %179
  %181 = call i32 @SET_LAST_MMAP(%struct.file* %175, i64 %180)
  br label %182

182:                                              ; preds = %174, %167, %164, %161
  %183 = load i64, i64* %15, align 8
  store i64 %183, i64* %6, align 8
  br label %184

184:                                              ; preds = %182, %148, %64, %26
  %185 = load i64, i64* %6, align 8
  ret i64 %185
}

declare dso_local i32 @GET_LAST_MMAP(%struct.file*) #1

declare dso_local i64 @shared_align_offset(i32, i64) #1

declare dso_local i64 @COLOR_ALIGN(i64, i32, i64) #1

declare dso_local i64 @PAGE_ALIGN(i64) #1

declare dso_local %struct.vm_area_struct* @find_vma_prev(%struct.mm_struct*, i64, %struct.vm_area_struct**) #1

declare dso_local i64 @vm_start_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_end_gap(%struct.vm_area_struct*) #1

declare dso_local i64 @vm_unmapped_area(%struct.vm_unmapped_area_info*) #1

declare dso_local i32 @VM_BUG_ON(i32) #1

declare dso_local i64 @arch_get_unmapped_area(%struct.file*, i64, i64, i64, i64) #1

declare dso_local i32 @SET_LAST_MMAP(%struct.file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
