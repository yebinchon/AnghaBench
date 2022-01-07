; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_xics.c_ics_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.TYPE_5__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i64 }

@.str = private unnamed_addr constant [33 x i8] c"ios_eoi: IRQ 0x%06x not found !\0A\00", align 1
@H_PARAMETER = common dso_local global i32 0, align 4
@PQ_PRESENTED = common dso_local global i32 0, align 4
@H_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @ics_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics_eoi(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.kvmppc_xics*, align 8
  %7 = alloca %struct.kvmppc_icp*, align 8
  %8 = alloca %struct.kvmppc_ics*, align 8
  %9 = alloca %struct.ics_irq_state*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store i32 %1, i32* %5, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 0
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %17, align 8
  store %struct.kvmppc_xics* %18, %struct.kvmppc_xics** %6, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %21, align 8
  store %struct.kvmppc_icp* %22, %struct.kvmppc_icp** %7, align 8
  %23 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %23, i32 %24, i64* %10)
  store %struct.kvmppc_ics* %25, %struct.kvmppc_ics** %8, align 8
  %26 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %27 = icmp ne %struct.kvmppc_ics* %26, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @XICS_DBG(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* @H_PARAMETER, align 4
  store i32 %31, i32* %3, align 4
  br label %79

32:                                               ; preds = %2
  %33 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %8, align 8
  %34 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %33, i32 0, i32 0
  %35 = load %struct.ics_irq_state*, %struct.ics_irq_state** %34, align 8
  %36 = load i64, i64* %10, align 8
  %37 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %35, i64 %36
  store %struct.ics_irq_state* %37, %struct.ics_irq_state** %9, align 8
  %38 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %39 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %32
  %43 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %44 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  store i32 %45, i32* %12, align 4
  br label %62

46:                                               ; preds = %32
  br label %47

47:                                               ; preds = %53, %46
  %48 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %49 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = ashr i32 %51, 1
  store i32 %52, i32* %12, align 4
  br label %53

53:                                               ; preds = %47
  %54 = load %struct.ics_irq_state*, %struct.ics_irq_state** %9, align 8
  %55 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %54, i32 0, i32 0
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @cmpxchg(i32* %55, i32 %56, i32 %57)
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %47, label %61

61:                                               ; preds = %53
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* @PQ_PRESENTED, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %62
  %68 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %6, align 8
  %69 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %7, align 8
  %70 = load i32, i32* %5, align 4
  %71 = call i32 @icp_deliver_irq(%struct.kvmppc_xics* %68, %struct.kvmppc_icp* %69, i32 %70, i32 0)
  br label %72

72:                                               ; preds = %67, %62
  %73 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %74 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %73, i32 0, i32 0
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %74, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @kvm_notify_acked_irq(%struct.TYPE_6__* %75, i32 0, i32 %76)
  %78 = load i32, i32* @H_SUCCESS, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %72, %28
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local i32 @XICS_DBG(i8*, i32) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @icp_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i32, i32) #1

declare dso_local i32 @kvm_notify_acked_irq(%struct.TYPE_6__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
