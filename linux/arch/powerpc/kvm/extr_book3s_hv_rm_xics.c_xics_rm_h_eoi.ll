; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_xics_rm_h_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }

@H_TOO_HARD = common dso_local global i32 0, align 4
@XICS_IPI = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xics_rm_h_eoi(%struct.kvm_vcpu* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca i64, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %13, align 8
  store %struct.kvmppc_xics* %14, %struct.kvmppc_xics** %6, align 8
  %15 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %16 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %17, align 8
  store %struct.kvmppc_icp* %18, %struct.kvmppc_icp** %7, align 8
  %19 = load i64, i64* %5, align 8
  %20 = and i64 %19, 16777215
  store i64 %20, i64* %8, align 8
  %21 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %22 = icmp ne %struct.kvmppc_xics* %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %2
  %24 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %25 = getelementptr inbounds %struct.kvmppc_xics, %struct.kvmppc_xics* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %30, label %28

28:                                               ; preds = %23, %2
  %29 = load i32, i32* @H_TOO_HARD, align 4
  store i32 %29, i32* %3, align 4
  br label %47

30:                                               ; preds = %23
  %31 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %32 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %33 = load i64, i64* %5, align 8
  %34 = lshr i64 %33, 24
  %35 = call i32 @icp_rm_down_cppr(%struct.kvmppc_xics* %31, %struct.kvmppc_icp* %32, i64 %34)
  %36 = load i64, i64* %8, align 8
  %37 = load i64, i64* @XICS_IPI, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %41 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %42 = call i32 @check_too_hard(%struct.kvmppc_xics* %40, %struct.kvmppc_icp* %41)
  store i32 %42, i32* %3, align 4
  br label %47

43:                                               ; preds = %30
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %45 = load i64, i64* %8, align 8
  %46 = call i32 @ics_rm_eoi(%struct.kvm_vcpu* %44, i64 %45)
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %43, %39, %28
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

declare dso_local i32 @icp_rm_down_cppr(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i64) #1

declare dso_local i32 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

declare dso_local i32 @ics_rm_eoi(%struct.kvm_vcpu*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
