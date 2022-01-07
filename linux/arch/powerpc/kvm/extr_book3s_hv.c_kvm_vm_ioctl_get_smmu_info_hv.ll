; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_vm_ioctl_get_smmu_info_hv.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_vm_ioctl_get_smmu_info_hv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm = type { i32 }
%struct.kvm_ppc_smmu_info = type { i32, i32, i32, i32, %struct.kvm_ppc_one_seg_page_size* }
%struct.kvm_ppc_one_seg_page_size = type { i32 }

@CPU_FTR_ARCH_207S = common dso_local global i32 0, align 4
@KVM_PPC_PAGE_SIZES_REAL = common dso_local global i32 0, align 4
@KVM_PPC_1T_SEGMENTS = common dso_local global i32 0, align 4
@SLB_VSID_L = common dso_local global i32 0, align 4
@SLB_VSID_LP_01 = common dso_local global i32 0, align 4
@KVM_PPC_NO_HASH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm*, %struct.kvm_ppc_smmu_info*)* @kvm_vm_ioctl_get_smmu_info_hv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_vm_ioctl_get_smmu_info_hv(%struct.kvm* %0, %struct.kvm_ppc_smmu_info* %1) #0 {
  %3 = alloca %struct.kvm*, align 8
  %4 = alloca %struct.kvm_ppc_smmu_info*, align 8
  %5 = alloca %struct.kvm_ppc_one_seg_page_size*, align 8
  store %struct.kvm* %0, %struct.kvm** %3, align 8
  store %struct.kvm_ppc_smmu_info* %1, %struct.kvm_ppc_smmu_info** %4, align 8
  %6 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %7 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %6, i32 0, i32 0
  store i32 32, i32* %7, align 8
  %8 = load i32, i32* @CPU_FTR_ARCH_207S, align 4
  %9 = call i64 @cpu_has_feature(i32 %8)
  %10 = icmp ne i64 %9, 0
  %11 = zext i1 %10 to i64
  %12 = select i1 %10, i32 32, i32 0
  %13 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %13, i32 0, i32 1
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @KVM_PPC_PAGE_SIZES_REAL, align 4
  %16 = load i32, i32* @KVM_PPC_1T_SEGMENTS, align 4
  %17 = or i32 %15, %16
  %18 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %19 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %18, i32 0, i32 2
  store i32 %17, i32* %19, align 8
  %20 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %21 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %20, i32 0, i32 3
  store i32 32, i32* %21, align 4
  %22 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %23 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %22, i32 0, i32 4
  %24 = load %struct.kvm_ppc_one_seg_page_size*, %struct.kvm_ppc_one_seg_page_size** %23, align 8
  %25 = getelementptr inbounds %struct.kvm_ppc_one_seg_page_size, %struct.kvm_ppc_one_seg_page_size* %24, i64 0
  store %struct.kvm_ppc_one_seg_page_size* %25, %struct.kvm_ppc_one_seg_page_size** %5, align 8
  %26 = call i32 @kvmppc_add_seg_page_size(%struct.kvm_ppc_one_seg_page_size** %5, i32 12, i32 0)
  %27 = load i32, i32* @SLB_VSID_L, align 4
  %28 = load i32, i32* @SLB_VSID_LP_01, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @kvmppc_add_seg_page_size(%struct.kvm_ppc_one_seg_page_size** %5, i32 16, i32 %29)
  %31 = load i32, i32* @SLB_VSID_L, align 4
  %32 = call i32 @kvmppc_add_seg_page_size(%struct.kvm_ppc_one_seg_page_size** %5, i32 24, i32 %31)
  %33 = call i64 (...) @kvmhv_on_pseries()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load i32, i32* @KVM_PPC_NO_HASH, align 4
  %37 = load %struct.kvm_ppc_smmu_info*, %struct.kvm_ppc_smmu_info** %4, align 8
  %38 = getelementptr inbounds %struct.kvm_ppc_smmu_info, %struct.kvm_ppc_smmu_info* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = or i32 %39, %36
  store i32 %40, i32* %38, align 8
  br label %41

41:                                               ; preds = %35, %2
  ret i32 0
}

declare dso_local i64 @cpu_has_feature(i32) #1

declare dso_local i32 @kvmppc_add_seg_page_size(%struct.kvm_ppc_one_seg_page_size**, i32, i32) #1

declare dso_local i64 @kvmhv_on_pseries(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
