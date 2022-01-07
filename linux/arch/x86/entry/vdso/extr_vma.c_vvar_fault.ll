; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vvar_fault.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/entry/vdso/extr_vma.c_vvar_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_special_mapping = type { i32 }
%struct.vm_area_struct = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.vdso_image* }
%struct.vdso_image = type { i64, i64, i64, i64 }
%struct.vm_fault = type { i32, i32 }
%struct.pvclock_vsyscall_time_info = type { i32 }
%struct.ms_hyperv_tsc_page = type { i32 }

@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@__vvar_page = common dso_local global i32 0, align 4
@VCLOCK_PVCLOCK = common dso_local global i32 0, align 4
@VCLOCK_HVCLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_special_mapping*, %struct.vm_area_struct*, %struct.vm_fault*)* @vvar_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vvar_fault(%struct.vm_special_mapping* %0, %struct.vm_area_struct* %1, %struct.vm_fault* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vm_special_mapping*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_fault*, align 8
  %8 = alloca %struct.vdso_image*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pvclock_vsyscall_time_info*, align 8
  %11 = alloca %struct.ms_hyperv_tsc_page*, align 8
  store %struct.vm_special_mapping* %0, %struct.vm_special_mapping** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store %struct.vm_fault* %2, %struct.vm_fault** %7, align 8
  %12 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %13 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load %struct.vdso_image*, %struct.vdso_image** %16, align 8
  store %struct.vdso_image* %17, %struct.vdso_image** %8, align 8
  %18 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %19 = icmp ne %struct.vdso_image* %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %21, i32* %4, align 4
  br label %110

22:                                               ; preds = %3
  %23 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %24 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @PAGE_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = sext i32 %27 to i64
  %29 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %30 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %9, align 8
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %22
  %36 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %36, i32* %4, align 4
  br label %110

37:                                               ; preds = %22
  %38 = load i64, i64* %9, align 8
  %39 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %40 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp eq i64 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %45 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %46 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @__pa_symbol(i32* @__vvar_page)
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = ashr i32 %48, %49
  %51 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %44, i32 %47, i32 %50)
  store i32 %51, i32* %4, align 4
  br label %110

52:                                               ; preds = %37
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %55 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp eq i64 %53, %56
  br i1 %57, label %58, label %81

58:                                               ; preds = %52
  %59 = call %struct.pvclock_vsyscall_time_info* (...) @pvclock_get_pvti_cpu0_va()
  store %struct.pvclock_vsyscall_time_info* %59, %struct.pvclock_vsyscall_time_info** %10, align 8
  %60 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %10, align 8
  %61 = icmp ne %struct.pvclock_vsyscall_time_info* %60, null
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load i32, i32* @VCLOCK_PVCLOCK, align 4
  %64 = call i64 @vclock_was_used(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %62
  %67 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %68 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.pvclock_vsyscall_time_info*, %struct.pvclock_vsyscall_time_info** %10, align 8
  %72 = call i32 @__pa(%struct.pvclock_vsyscall_time_info* %71)
  %73 = load i32, i32* @PAGE_SHIFT, align 4
  %74 = ashr i32 %72, %73
  %75 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %76 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @pgprot_decrypted(i32 %77)
  %79 = call i32 @vmf_insert_pfn_prot(%struct.vm_area_struct* %67, i32 %70, i32 %74, i32 %78)
  store i32 %79, i32* %4, align 4
  br label %110

80:                                               ; preds = %62, %58
  br label %107

81:                                               ; preds = %52
  %82 = load i64, i64* %9, align 8
  %83 = load %struct.vdso_image*, %struct.vdso_image** %8, align 8
  %84 = getelementptr inbounds %struct.vdso_image, %struct.vdso_image* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = icmp eq i64 %82, %85
  br i1 %86, label %87, label %106

87:                                               ; preds = %81
  %88 = call %struct.ms_hyperv_tsc_page* (...) @hv_get_tsc_page()
  store %struct.ms_hyperv_tsc_page* %88, %struct.ms_hyperv_tsc_page** %11, align 8
  %89 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %11, align 8
  %90 = icmp ne %struct.ms_hyperv_tsc_page* %89, null
  br i1 %90, label %91, label %105

91:                                               ; preds = %87
  %92 = load i32, i32* @VCLOCK_HVCLOCK, align 4
  %93 = call i64 @vclock_was_used(i32 %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %91
  %96 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %97 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %98 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ms_hyperv_tsc_page*, %struct.ms_hyperv_tsc_page** %11, align 8
  %101 = call i32 @virt_to_phys(%struct.ms_hyperv_tsc_page* %100)
  %102 = load i32, i32* @PAGE_SHIFT, align 4
  %103 = ashr i32 %101, %102
  %104 = call i32 @vmf_insert_pfn(%struct.vm_area_struct* %96, i32 %99, i32 %103)
  store i32 %104, i32* %4, align 4
  br label %110

105:                                              ; preds = %91, %87
  br label %106

106:                                              ; preds = %105, %81
  br label %107

107:                                              ; preds = %106, %80
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %109, i32* %4, align 4
  br label %110

110:                                              ; preds = %108, %95, %66, %43, %35, %20
  %111 = load i32, i32* %4, align 4
  ret i32 %111
}

declare dso_local i32 @vmf_insert_pfn(%struct.vm_area_struct*, i32, i32) #1

declare dso_local i32 @__pa_symbol(i32*) #1

declare dso_local %struct.pvclock_vsyscall_time_info* @pvclock_get_pvti_cpu0_va(...) #1

declare dso_local i64 @vclock_was_used(i32) #1

declare dso_local i32 @vmf_insert_pfn_prot(%struct.vm_area_struct*, i32, i32, i32) #1

declare dso_local i32 @__pa(%struct.pvclock_vsyscall_time_info*) #1

declare dso_local i32 @pgprot_decrypted(i32) #1

declare dso_local %struct.ms_hyperv_tsc_page* @hv_get_tsc_page(...) #1

declare dso_local i32 @virt_to_phys(%struct.ms_hyperv_tsc_page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
