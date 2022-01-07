; ModuleID = '/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_ir_list_add.c'
source_filename = "/home/carl/AnghaBench/linux/arch/x86/kvm/extr_svm.c_svm_ir_list_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vcpu_svm = type { i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.kvm* }
%struct.kvm = type { i32 }
%struct.amd_iommu_pi_data = type { i64, i64 }
%struct.amd_svm_iommu_ir = type { i32, i64 }
%struct.kvm_vcpu = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL_ACCOUNT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vcpu_svm*, %struct.amd_iommu_pi_data*)* @svm_ir_list_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @svm_ir_list_add(%struct.vcpu_svm* %0, %struct.amd_iommu_pi_data* %1) #0 {
  %3 = alloca %struct.vcpu_svm*, align 8
  %4 = alloca %struct.amd_iommu_pi_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.amd_svm_iommu_ir*, align 8
  %8 = alloca %struct.kvm*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kvm_vcpu*, align 8
  %11 = alloca %struct.vcpu_svm*, align 8
  store %struct.vcpu_svm* %0, %struct.vcpu_svm** %3, align 8
  store %struct.amd_iommu_pi_data* %1, %struct.amd_iommu_pi_data** %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.amd_iommu_pi_data*, %struct.amd_iommu_pi_data** %4, align 8
  %13 = getelementptr inbounds %struct.amd_iommu_pi_data, %struct.amd_iommu_pi_data* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %2
  %17 = load %struct.amd_iommu_pi_data*, %struct.amd_iommu_pi_data** %4, align 8
  %18 = getelementptr inbounds %struct.amd_iommu_pi_data, %struct.amd_iommu_pi_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %44

21:                                               ; preds = %16
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load %struct.kvm*, %struct.kvm** %24, align 8
  store %struct.kvm* %25, %struct.kvm** %8, align 8
  %26 = load %struct.amd_iommu_pi_data*, %struct.amd_iommu_pi_data** %4, align 8
  %27 = getelementptr inbounds %struct.amd_iommu_pi_data, %struct.amd_iommu_pi_data* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @AVIC_GATAG_TO_VCPUID(i64 %28)
  store i32 %29, i32* %9, align 4
  %30 = load %struct.kvm*, %struct.kvm** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call %struct.kvm_vcpu* @kvm_get_vcpu_by_id(%struct.kvm* %30, i32 %31)
  store %struct.kvm_vcpu* %32, %struct.kvm_vcpu** %10, align 8
  %33 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %34 = icmp ne %struct.kvm_vcpu* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %21
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %71

38:                                               ; preds = %21
  %39 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %10, align 8
  %40 = call %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu* %39)
  store %struct.vcpu_svm* %40, %struct.vcpu_svm** %11, align 8
  %41 = load %struct.vcpu_svm*, %struct.vcpu_svm** %11, align 8
  %42 = load %struct.amd_iommu_pi_data*, %struct.amd_iommu_pi_data** %4, align 8
  %43 = call i32 @svm_ir_list_del(%struct.vcpu_svm* %41, %struct.amd_iommu_pi_data* %42)
  br label %44

44:                                               ; preds = %38, %16, %2
  %45 = load i32, i32* @GFP_KERNEL_ACCOUNT, align 4
  %46 = call %struct.amd_svm_iommu_ir* @kzalloc(i32 16, i32 %45)
  store %struct.amd_svm_iommu_ir* %46, %struct.amd_svm_iommu_ir** %7, align 8
  %47 = load %struct.amd_svm_iommu_ir*, %struct.amd_svm_iommu_ir** %7, align 8
  %48 = icmp ne %struct.amd_svm_iommu_ir* %47, null
  br i1 %48, label %52, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %5, align 4
  br label %71

52:                                               ; preds = %44
  %53 = load %struct.amd_iommu_pi_data*, %struct.amd_iommu_pi_data** %4, align 8
  %54 = getelementptr inbounds %struct.amd_iommu_pi_data, %struct.amd_iommu_pi_data* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.amd_svm_iommu_ir*, %struct.amd_svm_iommu_ir** %7, align 8
  %57 = getelementptr inbounds %struct.amd_svm_iommu_ir, %struct.amd_svm_iommu_ir* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %59 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %58, i32 0, i32 0
  %60 = load i64, i64* %6, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.amd_svm_iommu_ir*, %struct.amd_svm_iommu_ir** %7, align 8
  %63 = getelementptr inbounds %struct.amd_svm_iommu_ir, %struct.amd_svm_iommu_ir* %62, i32 0, i32 0
  %64 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %65 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %64, i32 0, i32 1
  %66 = call i32 @list_add(i32* %63, i32* %65)
  %67 = load %struct.vcpu_svm*, %struct.vcpu_svm** %3, align 8
  %68 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %67, i32 0, i32 0
  %69 = load i64, i64* %6, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  br label %71

71:                                               ; preds = %52, %49, %35
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i32 @AVIC_GATAG_TO_VCPUID(i64) #1

declare dso_local %struct.kvm_vcpu* @kvm_get_vcpu_by_id(%struct.kvm*, i32) #1

declare dso_local %struct.vcpu_svm* @to_svm(%struct.kvm_vcpu*) #1

declare dso_local i32 @svm_ir_list_del(%struct.vcpu_svm*, %struct.amd_iommu_pi_data*) #1

declare dso_local %struct.amd_svm_iommu_ir* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
