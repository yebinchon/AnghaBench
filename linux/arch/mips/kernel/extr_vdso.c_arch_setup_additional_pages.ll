; ModuleID = '/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vdso.c_arch_setup_additional_pages.c'
source_filename = "/home/carl/AnghaBench/linux/arch/mips/kernel/extr_vdso.c_arch_setup_additional_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.mm_struct*, %struct.TYPE_6__ }
%struct.mm_struct = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.mips_vdso_image* }
%struct.mips_vdso_image = type { i64, i32 }
%struct.linux_binprm = type { i32 }
%struct.vm_area_struct = type { i32 }

@current = common dso_local global %struct.TYPE_8__* null, align 8
@EINTR = common dso_local global i32 0, align 4
@STACK_TOP = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@VM_MAYREAD = common dso_local global i32 0, align 4
@VM_MAYWRITE = common dso_local global i32 0, align 4
@VM_MAYEXEC = common dso_local global i32 0, align 4
@cpu_has_dc_aliases = common dso_local global i64 0, align 8
@shm_align_mask = common dso_local global i32 0, align 4
@vdso_data = common dso_local global i64 0, align 8
@vdso_vvar_mapping = common dso_local global i32 0, align 4
@mips_gic_base = common dso_local global i64 0, align 8
@MIPS_GIC_USER_OFS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@PAGE_READONLY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @arch_setup_additional_pages(%struct.linux_binprm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.linux_binprm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mips_vdso_image*, align 8
  %7 = alloca %struct.mm_struct*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.vm_area_struct*, align 8
  %16 = alloca i32, align 4
  store %struct.linux_binprm* %0, %struct.linux_binprm** %4, align 8
  store i32 %1, i32* %5, align 4
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.mips_vdso_image*, %struct.mips_vdso_image** %21, align 8
  store %struct.mips_vdso_image* %22, %struct.mips_vdso_image** %6, align 8
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** @current, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.mm_struct*, %struct.mm_struct** %24, align 8
  store %struct.mm_struct* %25, %struct.mm_struct** %7, align 8
  %26 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %27 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %26, i32 0, i32 0
  %28 = call i64 @down_write_killable(i32* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %2
  %31 = load i32, i32* @EINTR, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %190

33:                                               ; preds = %2
  %34 = load i32, i32* @STACK_TOP, align 4
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = load i32, i32* @VM_READ, align 4
  %37 = load i32, i32* @VM_EXEC, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @VM_MAYREAD, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @VM_MAYWRITE, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @VM_MAYEXEC, align 4
  %44 = or i32 %42, %43
  %45 = call i64 @mmap_region(i32* null, i32 %34, i64 %35, i32 %44, i32 0, i32* null)
  store i64 %45, i64* %11, align 8
  %46 = load i64, i64* %11, align 8
  %47 = call i64 @IS_ERR_VALUE(i64 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %33
  %50 = load i64, i64* %11, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %16, align 4
  br label %185

52:                                               ; preds = %33
  %53 = call i64 (...) @mips_gic_present()
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %52
  %56 = load i64, i64* @PAGE_SIZE, align 8
  br label %58

57:                                               ; preds = %52
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i64 [ %56, %55 ], [ 0, %57 ]
  store i64 %59, i64* %8, align 8
  %60 = load i64, i64* %8, align 8
  %61 = load i64, i64* @PAGE_SIZE, align 8
  %62 = add i64 %60, %61
  store i64 %62, i64* %9, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.mips_vdso_image*, %struct.mips_vdso_image** %6, align 8
  %65 = getelementptr inbounds %struct.mips_vdso_image, %struct.mips_vdso_image* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %63, %66
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* @cpu_has_dc_aliases, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %76

70:                                               ; preds = %58
  %71 = load i32, i32* @shm_align_mask, align 4
  %72 = add nsw i32 %71, 1
  %73 = sext i32 %72 to i64
  %74 = load i64, i64* %10, align 8
  %75 = add i64 %74, %73
  store i64 %75, i64* %10, align 8
  br label %76

76:                                               ; preds = %70, %58
  %77 = call i32 (...) @vdso_base()
  %78 = load i64, i64* %10, align 8
  %79 = call i64 @get_unmapped_area(i32* null, i32 %77, i64 %78, i32 0, i32 0)
  store i64 %79, i64* %11, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i64 @IS_ERR_VALUE(i64 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %76
  %84 = load i64, i64* %11, align 8
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %16, align 4
  br label %185

86:                                               ; preds = %76
  %87 = load i64, i64* @cpu_has_dc_aliases, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %101

89:                                               ; preds = %86
  %90 = load i64, i64* %11, align 8
  %91 = load i32, i32* @shm_align_mask, align 4
  %92 = call i64 @__ALIGN_MASK(i64 %90, i32 %91)
  store i64 %92, i64* %11, align 8
  %93 = load i64, i64* @vdso_data, align 8
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 %93, %94
  %96 = load i32, i32* @shm_align_mask, align 4
  %97 = sext i32 %96 to i64
  %98 = and i64 %95, %97
  %99 = load i64, i64* %11, align 8
  %100 = add i64 %99, %98
  store i64 %100, i64* %11, align 8
  br label %101

101:                                              ; preds = %89, %86
  %102 = load i64, i64* %11, align 8
  %103 = load i64, i64* %8, align 8
  %104 = add i64 %102, %103
  store i64 %104, i64* %12, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load i64, i64* @PAGE_SIZE, align 8
  %107 = add i64 %105, %106
  store i64 %107, i64* %13, align 8
  %108 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %109 = load i64, i64* %11, align 8
  %110 = load i64, i64* %9, align 8
  %111 = load i32, i32* @VM_READ, align 4
  %112 = load i32, i32* @VM_MAYREAD, align 4
  %113 = or i32 %111, %112
  %114 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %108, i64 %109, i64 %110, i32 %113, i32* @vdso_vvar_mapping)
  store %struct.vm_area_struct* %114, %struct.vm_area_struct** %15, align 8
  %115 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %116 = call i64 @IS_ERR(%struct.vm_area_struct* %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %121

118:                                              ; preds = %101
  %119 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %120 = call i32 @PTR_ERR(%struct.vm_area_struct* %119)
  store i32 %120, i32* %16, align 4
  br label %185

121:                                              ; preds = %101
  %122 = load i64, i64* %8, align 8
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %142

124:                                              ; preds = %121
  %125 = load i64, i64* @mips_gic_base, align 8
  %126 = load i64, i64* @MIPS_GIC_USER_OFS, align 8
  %127 = add nsw i64 %125, %126
  %128 = call i64 @virt_to_phys(i64 %127)
  %129 = load i64, i64* @PAGE_SHIFT, align 8
  %130 = lshr i64 %128, %129
  store i64 %130, i64* %14, align 8
  %131 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %132 = load i64, i64* %11, align 8
  %133 = load i64, i64* %14, align 8
  %134 = load i64, i64* %8, align 8
  %135 = load i32, i32* @PAGE_READONLY, align 4
  %136 = call i32 @pgprot_noncached(i32 %135)
  %137 = call i32 @io_remap_pfn_range(%struct.vm_area_struct* %131, i64 %132, i64 %133, i64 %134, i32 %136)
  store i32 %137, i32* %16, align 4
  %138 = load i32, i32* %16, align 4
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %141

140:                                              ; preds = %124
  br label %185

141:                                              ; preds = %124
  br label %142

142:                                              ; preds = %141, %121
  %143 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %144 = load i64, i64* %12, align 8
  %145 = load i64, i64* @vdso_data, align 8
  %146 = call i64 @virt_to_phys(i64 %145)
  %147 = load i64, i64* @PAGE_SHIFT, align 8
  %148 = lshr i64 %146, %147
  %149 = load i64, i64* @PAGE_SIZE, align 8
  %150 = load i32, i32* @PAGE_READONLY, align 4
  %151 = call i32 @remap_pfn_range(%struct.vm_area_struct* %143, i64 %144, i64 %148, i64 %149, i32 %150)
  store i32 %151, i32* %16, align 4
  %152 = load i32, i32* %16, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %142
  br label %185

155:                                              ; preds = %142
  %156 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %157 = load i64, i64* %13, align 8
  %158 = load %struct.mips_vdso_image*, %struct.mips_vdso_image** %6, align 8
  %159 = getelementptr inbounds %struct.mips_vdso_image, %struct.mips_vdso_image* %158, i32 0, i32 0
  %160 = load i64, i64* %159, align 8
  %161 = load i32, i32* @VM_READ, align 4
  %162 = load i32, i32* @VM_EXEC, align 4
  %163 = or i32 %161, %162
  %164 = load i32, i32* @VM_MAYREAD, align 4
  %165 = or i32 %163, %164
  %166 = load i32, i32* @VM_MAYWRITE, align 4
  %167 = or i32 %165, %166
  %168 = load i32, i32* @VM_MAYEXEC, align 4
  %169 = or i32 %167, %168
  %170 = load %struct.mips_vdso_image*, %struct.mips_vdso_image** %6, align 8
  %171 = getelementptr inbounds %struct.mips_vdso_image, %struct.mips_vdso_image* %170, i32 0, i32 1
  %172 = call %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct* %156, i64 %157, i64 %160, i32 %169, i32* %171)
  store %struct.vm_area_struct* %172, %struct.vm_area_struct** %15, align 8
  %173 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %174 = call i64 @IS_ERR(%struct.vm_area_struct* %173)
  %175 = icmp ne i64 %174, 0
  br i1 %175, label %176, label %179

176:                                              ; preds = %155
  %177 = load %struct.vm_area_struct*, %struct.vm_area_struct** %15, align 8
  %178 = call i32 @PTR_ERR(%struct.vm_area_struct* %177)
  store i32 %178, i32* %16, align 4
  br label %185

179:                                              ; preds = %155
  %180 = load i64, i64* %13, align 8
  %181 = inttoptr i64 %180 to i8*
  %182 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %183 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %182, i32 0, i32 1
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 0
  store i8* %181, i8** %184, align 8
  store i32 0, i32* %16, align 4
  br label %185

185:                                              ; preds = %179, %176, %154, %140, %118, %83, %49
  %186 = load %struct.mm_struct*, %struct.mm_struct** %7, align 8
  %187 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %186, i32 0, i32 0
  %188 = call i32 @up_write(i32* %187)
  %189 = load i32, i32* %16, align 4
  store i32 %189, i32* %3, align 4
  br label %190

190:                                              ; preds = %185, %30
  %191 = load i32, i32* %3, align 4
  ret i32 %191
}

declare dso_local i64 @down_write_killable(i32*) #1

declare dso_local i64 @mmap_region(i32*, i32, i64, i32, i32, i32*) #1

declare dso_local i64 @IS_ERR_VALUE(i64) #1

declare dso_local i64 @mips_gic_present(...) #1

declare dso_local i64 @get_unmapped_area(i32*, i32, i64, i32, i32) #1

declare dso_local i32 @vdso_base(...) #1

declare dso_local i64 @__ALIGN_MASK(i64, i32) #1

declare dso_local %struct.vm_area_struct* @_install_special_mapping(%struct.mm_struct*, i64, i64, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.vm_area_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.vm_area_struct*) #1

declare dso_local i64 @virt_to_phys(i64) #1

declare dso_local i32 @io_remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @pgprot_noncached(i32) #1

declare dso_local i32 @remap_pfn_range(%struct.vm_area_struct*, i64, i64, i64, i32) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
