; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_rm_complete.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_kvmppc_xics_rm_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.TYPE_6__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [54 x i8] c"XICS_RM: H_%x completing, act: %x state: %lx tgt: %p\0A\00", align 1
@XICS_RM_KICK_VCPU = common dso_local global i32 0, align 4
@XICS_RM_CHECK_RESEND = common dso_local global i32 0, align 4
@XICS_RM_NOTIFY_EOI = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvmppc_xics_rm_complete(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %11, align 8
  store %struct.kvmppc_xics* %12, %struct.kvmppc_xics** %5, align 8
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %15, align 8
  store %struct.kvmppc_icp* %16, %struct.kvmppc_icp** %6, align 8
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %19 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %22 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %21, i32 0, i32 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %26 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %25, i32 0, i32 7
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @XICS_DBG(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %17, i32 %20, i32 %24, i32 %27)
  %29 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %30 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @XICS_RM_KICK_VCPU, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %44

35:                                               ; preds = %2
  %36 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %37 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %36, i32 0, i32 6
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %41 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @kvmppc_fast_vcpu_kick(i32 %42)
  br label %44

44:                                               ; preds = %35, %2
  %45 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %46 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XICS_RM_CHECK_RESEND, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %44
  %52 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %53 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  %56 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %57 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %58 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @icp_check_resend(%struct.kvmppc_xics* %56, i32 %59)
  br label %61

61:                                               ; preds = %51, %44
  %62 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %63 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @XICS_RM_NOTIFY_EOI, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %80

68:                                               ; preds = %61
  %69 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %70 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %77 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @kvm_notify_acked_irq(%struct.TYPE_8__* %75, i32 0, i32 %78)
  br label %80

80:                                               ; preds = %68, %61
  %81 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %82 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %81, i32 0, i32 0
  store i32 0, i32* %82, align 4
  %83 = load i32, i32* @H_SUCCESS, align 4
  ret i32 %83
}

declare dso_local i32 @XICS_DBG(i8*, i32, i32, i32, i32) #1

declare dso_local i32 @kvmppc_fast_vcpu_kick(i32) #1

declare dso_local i32 @icp_check_resend(%struct.kvmppc_xics*, i32) #1

declare dso_local i32 @kvm_notify_acked_irq(%struct.TYPE_8__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
