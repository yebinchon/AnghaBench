; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_remap_pfn.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/xen/extr_mmu_pv.c_xen_remap_pfn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32 }
%struct.page = type { i32 }
%struct.remap_data = type { i32, i32, %struct.mmu_update*, i32, i32* }
%struct.mmu_update = type { i32 }

@REMAP_BATCH_SIZE = common dso_local global i32 0, align 4
@VM_PFNMAP = common dso_local global i32 0, align 4
@VM_IO = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@remap_area_pfn_pte_fn = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xen_remap_pfn(%struct.vm_area_struct* %0, i64 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6, i32 %7, %struct.page** %8) #0 {
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.page**, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.remap_data, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %10, align 8
  store i64 %1, i64* %11, align 8
  store i32* %2, i32** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32* %4, i32** %14, align 8
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store %struct.page** %8, %struct.page*** %18, align 8
  store i32 0, i32* %19, align 4
  %30 = load i32, i32* @REMAP_BATCH_SIZE, align 4
  %31 = zext i32 %30 to i64
  %32 = call i8* @llvm.stacksave()
  store i8* %32, i8** %21, align 8
  %33 = alloca %struct.mmu_update, i64 %31, align 16
  store i64 %31, i64* %22, align 8
  store i32 0, i32* %24, align 4
  %34 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %35 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @VM_PFNMAP, align 4
  %38 = load i32, i32* @VM_IO, align 4
  %39 = or i32 %37, %38
  %40 = and i32 %36, %39
  %41 = load i32, i32* @VM_PFNMAP, align 4
  %42 = load i32, i32* @VM_IO, align 4
  %43 = or i32 %41, %42
  %44 = icmp eq i32 %40, %43
  %45 = xor i1 %44, true
  %46 = zext i1 %45 to i32
  %47 = call i32 @BUG_ON(i32 %46)
  %48 = load i32*, i32** %12, align 8
  %49 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %20, i32 0, i32 4
  store i32* %48, i32** %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %20, i32 0, i32 3
  store i32 %50, i32* %51, align 8
  %52 = load i32*, i32** %14, align 8
  %53 = icmp ne i32* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %20, i32 0, i32 0
  store i32 %55, i32* %56, align 8
  %57 = load i32, i32* %17, align 4
  %58 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %20, i32 0, i32 1
  store i32 %57, i32* %58, align 4
  br label %59

59:                                               ; preds = %152, %9
  %60 = load i32, i32* %13, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %154

62:                                               ; preds = %59
  store i32 0, i32* %25, align 4
  store i32 0, i32* %26, align 4
  %63 = load i32, i32* @REMAP_BATCH_SIZE, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @min(i32 %63, i32 %64)
  store i32 %65, i32* %27, align 4
  %66 = load i32, i32* %27, align 4
  store i32 %66, i32* %28, align 4
  %67 = load i32, i32* %27, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* @PAGE_SHIFT, align 8
  %70 = shl i64 %68, %69
  store i64 %70, i64* %23, align 8
  %71 = getelementptr inbounds %struct.remap_data, %struct.remap_data* %20, i32 0, i32 2
  store %struct.mmu_update* %33, %struct.mmu_update** %71, align 8
  %72 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %73 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i64, i64* %11, align 8
  %76 = load i64, i64* %23, align 8
  %77 = load i32, i32* @remap_area_pfn_pte_fn, align 4
  %78 = call i32 @apply_to_page_range(i32 %74, i64 %75, i64 %76, i32 %77, %struct.remap_data* %20)
  store i32 %78, i32* %19, align 4
  %79 = load i32, i32* %19, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %62
  br label %155

82:                                               ; preds = %62
  br label %83

83:                                               ; preds = %135, %82
  %84 = load i32, i32* %25, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.mmu_update, %struct.mmu_update* %33, i64 %85
  %87 = load i32, i32* %28, align 4
  %88 = load i32, i32* %16, align 4
  %89 = call i32 @HYPERVISOR_mmu_update(%struct.mmu_update* %86, i32 %87, i32* %26, i32 %88)
  store i32 %89, i32* %19, align 4
  %90 = load i32*, i32** %14, align 8
  %91 = icmp ne i32* %90, null
  br i1 %91, label %92, label %109

92:                                               ; preds = %83
  %93 = load i32, i32* %25, align 4
  store i32 %93, i32* %29, align 4
  br label %94

94:                                               ; preds = %105, %92
  %95 = load i32, i32* %29, align 4
  %96 = load i32, i32* %25, align 4
  %97 = load i32, i32* %26, align 4
  %98 = add nsw i32 %96, %97
  %99 = icmp slt i32 %95, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load i32*, i32** %14, align 8
  %102 = load i32, i32* %29, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  store i32 0, i32* %104, align 4
  br label %105

105:                                              ; preds = %100
  %106 = load i32, i32* %29, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %29, align 4
  br label %94

108:                                              ; preds = %94
  br label %109

109:                                              ; preds = %108, %83
  %110 = load i32, i32* %19, align 4
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %124

112:                                              ; preds = %109
  %113 = load i32*, i32** %14, align 8
  %114 = icmp ne i32* %113, null
  br i1 %114, label %116, label %115

115:                                              ; preds = %112
  br label %155

116:                                              ; preds = %112
  %117 = load i32, i32* %19, align 4
  %118 = load i32*, i32** %14, align 8
  %119 = load i32, i32* %29, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %117, i32* %121, align 4
  %122 = load i32, i32* %26, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %26, align 4
  br label %128

124:                                              ; preds = %109
  %125 = load i32, i32* %26, align 4
  %126 = load i32, i32* %24, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %24, align 4
  br label %128

128:                                              ; preds = %124, %116
  %129 = load i32, i32* %26, align 4
  %130 = load i32, i32* %28, align 4
  %131 = sub nsw i32 %130, %129
  store i32 %131, i32* %28, align 4
  %132 = load i32, i32* %26, align 4
  %133 = load i32, i32* %25, align 4
  %134 = add nsw i32 %133, %132
  store i32 %134, i32* %25, align 4
  br label %135

135:                                              ; preds = %128
  %136 = load i32, i32* %28, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %83, label %138

138:                                              ; preds = %135
  %139 = load i32, i32* %27, align 4
  %140 = load i32, i32* %13, align 4
  %141 = sub nsw i32 %140, %139
  store i32 %141, i32* %13, align 4
  %142 = load i64, i64* %23, align 8
  %143 = load i64, i64* %11, align 8
  %144 = add i64 %143, %142
  store i64 %144, i64* %11, align 8
  %145 = load i32*, i32** %14, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %152

147:                                              ; preds = %138
  %148 = load i32, i32* %27, align 4
  %149 = load i32*, i32** %14, align 8
  %150 = sext i32 %148 to i64
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  store i32* %151, i32** %14, align 8
  br label %152

152:                                              ; preds = %147, %138
  %153 = call i32 (...) @cond_resched()
  br label %59

154:                                              ; preds = %59
  br label %155

155:                                              ; preds = %154, %115, %81
  %156 = call i32 (...) @xen_flush_tlb_all()
  %157 = load i32, i32* %19, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %161

159:                                              ; preds = %155
  %160 = load i32, i32* %19, align 4
  br label %163

161:                                              ; preds = %155
  %162 = load i32, i32* %24, align 4
  br label %163

163:                                              ; preds = %161, %159
  %164 = phi i32 [ %160, %159 ], [ %162, %161 ]
  %165 = load i8*, i8** %21, align 8
  call void @llvm.stackrestore(i8* %165)
  ret i32 %164
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i32 @min(i32, i32) #2

declare dso_local i32 @apply_to_page_range(i32, i64, i64, i32, %struct.remap_data*) #2

declare dso_local i32 @HYPERVISOR_mmu_update(%struct.mmu_update*, i32, i32*, i32) #2

declare dso_local i32 @cond_resched(...) #2

declare dso_local i32 @xen_flush_tlb_all(...) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
