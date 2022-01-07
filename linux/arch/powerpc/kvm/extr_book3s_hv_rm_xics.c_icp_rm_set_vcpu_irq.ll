; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_set_vcpu_irq.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_icp_rm_set_vcpu_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { %struct.kvm_vcpu*, i32 }
%struct.TYPE_3__ = type { i32 }

@BOOK3S_IRQPRIO_EXTERNAL = common dso_local global i32 0, align 4
@SPRN_LPCR = common dso_local global i32 0, align 4
@LPCR_MER = common dso_local global i32 0, align 4
@XICS_RM_KICK_VCPU = common dso_local global i32 0, align 4
@nr_cpu_ids = common dso_local global i32 0, align 4
@kvmppc_host_rm_ops_hv = common dso_local global i64 0, align 8
@h_ipi_redirect = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.kvm_vcpu*, %struct.kvm_vcpu*)* @icp_rm_set_vcpu_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icp_rm_set_vcpu_irq(%struct.kvm_vcpu* %0, %struct.kvm_vcpu* %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvmppc_icp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store %struct.kvm_vcpu* %1, %struct.kvm_vcpu** %4, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 2
  %11 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %10, align 8
  store %struct.kvmppc_icp* %11, %struct.kvmppc_icp** %5, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* %14, align 8
  %17 = load i32, i32* @BOOK3S_IRQPRIO_EXTERNAL, align 4
  %18 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %19 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = call i32 @set_bit(i32 %17, i32* %20)
  %22 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %24 = icmp eq %struct.kvm_vcpu* %22, %23
  br i1 %24, label %25, label %32

25:                                               ; preds = %2
  %26 = load i32, i32* @SPRN_LPCR, align 4
  %27 = load i32, i32* @SPRN_LPCR, align 4
  %28 = call i32 @mfspr(i32 %27)
  %29 = load i32, i32* @LPCR_MER, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @mtspr(i32 %26, i32 %30)
  br label %88

32:                                               ; preds = %2
  %33 = call i64 (...) @xive_enabled()
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %32
  %36 = call i64 (...) @kvmhv_on_pseries()
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %47

38:                                               ; preds = %35
  %39 = load i32, i32* @XICS_RM_KICK_VCPU, align 4
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %41 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = or i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %45 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %46 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %45, i32 0, i32 0
  store %struct.kvm_vcpu* %44, %struct.kvm_vcpu** %46, align 8
  br label %88

47:                                               ; preds = %35, %32
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* %6, align 4
  %53 = icmp slt i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %47
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @nr_cpu_ids, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %84

58:                                               ; preds = %54, %47
  store i32 -1, i32* %7, align 4
  %59 = load i64, i64* @kvmppc_host_rm_ops_hv, align 8
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %58
  %62 = load i64, i64* @h_ipi_redirect, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %61
  %65 = load i32, i32* @XICS_RM_KICK_VCPU, align 4
  %66 = call i32 @find_available_hostcore(i32 %65)
  store i32 %66, i32* %7, align 4
  br label %67

67:                                               ; preds = %64, %61, %58
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, -1
  br i1 %69, label %70, label %74

70:                                               ; preds = %67
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %73 = call i32 @icp_send_hcore_msg(i32 %71, %struct.kvm_vcpu* %72)
  br label %83

74:                                               ; preds = %67
  %75 = load i32, i32* @XICS_RM_KICK_VCPU, align 4
  %76 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %77 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = or i32 %78, %75
  store i32 %79, i32* %77, align 8
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %81 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %5, align 8
  %82 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %81, i32 0, i32 0
  store %struct.kvm_vcpu* %80, %struct.kvm_vcpu** %82, align 8
  br label %83

83:                                               ; preds = %74, %70
  br label %88

84:                                               ; preds = %54
  %85 = call i32 (...) @smp_mb()
  %86 = load i32, i32* %6, align 4
  %87 = call i32 @kvmhv_rm_send_ipi(i32 %86)
  br label %88

88:                                               ; preds = %84, %83, %38, %25
  ret void
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @mtspr(i32, i32) #1

declare dso_local i32 @mfspr(i32) #1

declare dso_local i64 @xive_enabled(...) #1

declare dso_local i64 @kvmhv_on_pseries(...) #1

declare dso_local i32 @find_available_hostcore(i32) #1

declare dso_local i32 @icp_send_hcore_msg(i32, %struct.kvm_vcpu*) #1

declare dso_local i32 @smp_mb(...) #1

declare dso_local i32 @kvmhv_rm_send_ipi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
