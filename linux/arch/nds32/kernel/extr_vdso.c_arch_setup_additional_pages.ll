; ModuleID = '/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/nds32/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.mm_struct* }
%struct.mm_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.linux_binprm = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_5__* null, align 8
@vdso_pages = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@timer_mapping_base = common dso_local global i64 0, align 8
@EMPTY_VALUE = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@vdso_spec = common dso_local global i32* null, align 8
@vdso_data = common dso_local global i64 0, align 8
@_PAGE_V = common dso_local global i32 0, align 4
@_PAGE_M_UR_KR = common dso_local global i32 0, align 4
@_PAGE_D = common dso_local global i32 0, align 4
@_PAGE_C_DEV = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@DCACHE = common dso_local global i64 0, align 8
@L1_cache_info = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mm_struct*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.vm_area_struct*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** @current, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.mm_struct*, %struct.mm_struct** %16, align 8
  store %struct.mm_struct* %17, %struct.mm_struct** %6, align 8
  store i64 0, i64* %11, align 8
  store i32 2, i32* %14, align 4
  %18 = load i64, i64* @vdso_pages, align 8
  %19 = load i64, i64* @PAGE_SHIFT, align 8
  %20 = shl i64 %18, %19
  store i64 %20, i64* %8, align 8
  %21 = load i64, i64* @timer_mapping_base, align 8
  %22 = load i64, i64* @EMPTY_VALUE, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  store i32 1, i32* %14, align 4
  br label %25

25:                                               ; preds = %24, %2
  %26 = load i64, i64* %8, align 8
  %27 = load i32, i32* %14, align 4
  %28 = load i32, i32* @PAGE_SIZE, align 4
  %29 = mul nsw i32 %27, %28
  %30 = sext i32 %29 to i64
  %31 = add i64 %26, %30
  store i64 %31, i64* %9, align 8
  %32 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %33 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %32, i32 0, i32 0
  %34 = call i64 @down_write_killable(i32* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %25
  %37 = load i32, i32* @EINTR, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %153

39:                                               ; preds = %25
  %40 = load i64, i64* %9, align 8
  %41 = call i64 @vdso_random_addr(i64 %40)
  store i64 %41, i64* %11, align 8
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @get_unmapped_area(i32* null, i64 %42, i64 %43, i32 0, i32 0)
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call i64 @IS_ERR_VALUE(i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i64, i64* %7, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  br label %145

51:                                               ; preds = %39
  %52 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %53 = load i64, i64* %7, align 8
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @PAGE_SIZE, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = load i32, i32* @VM_READ, align 4
  %59 = load i32, i32* @VM_MAYREAD, align 4
  %60 = or i32 %58, %59
  %61 = load i32*, i32** @vdso_spec, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  %63 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %52, i64 %53, i64 %57, i32 %60, i32* %62)
  store %struct.vm_area_struct* %63, %struct.vm_area_struct** %10, align 8
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %65 = call i64 @IS_ERR(%struct.vm_area_struct* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %51
  %68 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %69 = call i32 @PTR_ERR(%struct.vm_area_struct* %68)
  store i32 %69, i32* %13, align 4
  br label %145

70:                                               ; preds = %51
  %71 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load i64, i64* @vdso_data, align 8
  %74 = call i64 @virt_to_phys(i64 %73)
  %75 = load i64, i64* @PAGE_SHIFT, align 8
  %76 = lshr i64 %74, %75
  %77 = load i32, i32* @PAGE_SIZE, align 4
  %78 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %79 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %71, i64 %72, i64 %76, i32 %77, i32 %80)
  store i32 %81, i32* %13, align 4
  %82 = load i32, i32* %13, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %70
  br label %145

85:                                               ; preds = %70
  %86 = load i32, i32* @PAGE_SIZE, align 4
  %87 = sext i32 %86 to i64
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load i32, i32* @_PAGE_V, align 4
  %91 = load i32, i32* @_PAGE_M_UR_KR, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @_PAGE_D, align 4
  %94 = or i32 %92, %93
  %95 = load i32, i32* @_PAGE_C_DEV, align 4
  %96 = or i32 %94, %95
  %97 = call i32 @__pgprot(i32 %96)
  store i32 %97, i32* %12, align 4
  %98 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %99 = load i64, i64* %7, align 8
  %100 = load i64, i64* @timer_mapping_base, align 8
  %101 = load i64, i64* @PAGE_SHIFT, align 8
  %102 = lshr i64 %100, %101
  %103 = load i32, i32* @PAGE_SIZE, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %98, i64 %99, i64 %102, i32 %103, i32 %104)
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %85
  br label %145

109:                                              ; preds = %85
  %110 = load i32, i32* @PAGE_SIZE, align 4
  %111 = sext i32 %110 to i64
  %112 = load i64, i64* %7, align 8
  %113 = add i64 %112, %111
  store i64 %113, i64* %7, align 8
  %114 = load i64, i64* %7, align 8
  %115 = inttoptr i64 %114 to i8*
  %116 = bitcast i8* %115 to i32*
  %117 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %118 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  store i32* %116, i32** %119, align 8
  %120 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %121 = load i64, i64* %7, align 8
  %122 = load i64, i64* %8, align 8
  %123 = load i32, i32* @VM_READ, align 4
  %124 = load i32, i32* @VM_EXEC, align 4
  %125 = or i32 %123, %124
  %126 = load i32, i32* @VM_MAYREAD, align 4
  %127 = or i32 %125, %126
  %128 = load i32, i32* @VM_MAYWRITE, align 4
  %129 = or i32 %127, %128
  %130 = load i32, i32* @VM_MAYEXEC, align 4
  %131 = or i32 %129, %130
  %132 = load i32*, i32** @vdso_spec, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  %134 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %120, i64 %121, i64 %122, i32 %131, i32* %133)
  store %struct.vm_area_struct* %134, %struct.vm_area_struct** %10, align 8
  %135 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %136 = call i64 @IS_ERR(%struct.vm_area_struct* %135)
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %109
  %139 = load %struct.vm_area_struct*, %struct.vm_area_struct** %10, align 8
  %140 = call i32 @PTR_ERR(%struct.vm_area_struct* %139)
  store i32 %140, i32* %13, align 4
  br label %145

141:                                              ; preds = %109
  %142 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %143 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %142, i32 0, i32 0
  %144 = call i32 @up_write(i32* %143)
  store i32 0, i32* %3, align 4
  br label %153

145:                                              ; preds = %138, %108, %84, %67, %48
  %146 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %147 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %147, i32 0, i32 0
  store i32* null, i32** %148, align 8
  %149 = load %struct.mm_struct*, %struct.mm_struct** %6, align 8
  %150 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %149, i32 0, i32 0
  %151 = call i32 @up_write(i32* %150)
  %152 = load i32, i32* %13, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %145, %141, %36
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i64 @vdso_random_addr(i64) #1

declare dso_local i64 @get_unmapped_area(i32*, i64, i64, i32, i32) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct*, i64, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i32, i32) #1

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i32 @__pgprot(i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
