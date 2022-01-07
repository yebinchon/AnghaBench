; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_kvmppc_deliver_irq_passthru.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_kvmppc_deliver_irq_passthru.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.kvmppc_irq_map = type { i32, i32, i32 }
%struct.kvmppc_passthru_irqmap = type { i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32 }

@PQ_PRESENTED = common dso_local global i32 0, align 4
@H_TOO_HARD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @kvmppc_deliver_irq_passthru(%struct.kvm_vcpu* %0, i32 %1, %struct.kvmppc_irq_map* %2, %struct.kvmppc_passthru_irqmap* %3, i32* %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.kvm_vcpu*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.kvmppc_irq_map*, align 8
  %10 = alloca %struct.kvmppc_passthru_irqmap*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.kvmppc_xics*, align 8
  %13 = alloca %struct.kvmppc_icp*, align 8
  %14 = alloca %struct.kvmppc_ics*, align 8
  %15 = alloca %struct.ics_irq_state*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.kvmppc_irq_map* %2, %struct.kvmppc_irq_map** %9, align 8
  store %struct.kvmppc_passthru_irqmap* %3, %struct.kvmppc_passthru_irqmap** %10, align 8
  store i32* %4, i32** %11, align 8
  %20 = load %struct.kvmppc_irq_map*, %struct.kvmppc_irq_map** %9, align 8
  %21 = getelementptr inbounds %struct.kvmppc_irq_map, %struct.kvmppc_irq_map* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %16, align 4
  %23 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %24 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %23, i32 0, i32 1
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %27, align 8
  store %struct.kvmppc_xics* %28, %struct.kvmppc_xics** %12, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %7, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %31, align 8
  store %struct.kvmppc_icp* %32, %struct.kvmppc_icp** %13, align 8
  %33 = load %struct.kvmppc_irq_map*, %struct.kvmppc_irq_map** %9, align 8
  %34 = getelementptr inbounds %struct.kvmppc_irq_map, %struct.kvmppc_irq_map* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @kvmppc_rm_handle_irq_desc(i32 %35)
  %37 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %12, align 8
  %38 = load i32, i32* %16, align 4
  %39 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %37, i32 %38, i64* %17)
  store %struct.kvmppc_ics* %39, %struct.kvmppc_ics** %14, align 8
  %40 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %14, align 8
  %41 = icmp ne %struct.kvmppc_ics* %40, null
  br i1 %41, label %43, label %42

42:                                               ; preds = %5
  store i64 2, i64* %6, align 8
  br label %93

43:                                               ; preds = %5
  %44 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %14, align 8
  %45 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %44, i32 0, i32 0
  %46 = load %struct.ics_irq_state*, %struct.ics_irq_state** %45, align 8
  %47 = load i64, i64* %17, align 8
  %48 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %46, i64 %47
  store %struct.ics_irq_state* %48, %struct.ics_irq_state** %15, align 8
  br label %49

49:                                               ; preds = %58, %43
  %50 = load %struct.ics_irq_state*, %struct.ics_irq_state** %15, align 8
  %51 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  store i32 %52, i32* %18, align 4
  %53 = load i32, i32* %18, align 4
  %54 = shl i32 %53, 1
  %55 = and i32 %54, 3
  %56 = load i32, i32* @PQ_PRESENTED, align 4
  %57 = or i32 %55, %56
  store i32 %57, i32* %19, align 4
  br label %58

58:                                               ; preds = %49
  %59 = load %struct.ics_irq_state*, %struct.ics_irq_state** %15, align 8
  %60 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %59, i32 0, i32 0
  %61 = load i32, i32* %18, align 4
  %62 = load i32, i32* %19, align 4
  %63 = call i32 @cmpxchg(i32* %60, i32 %61, i32 %62)
  %64 = load i32, i32* %18, align 4
  %65 = icmp ne i32 %63, %64
  br i1 %65, label %49, label %66

66:                                               ; preds = %58
  %67 = load i32, i32* %19, align 4
  %68 = load i32, i32* @PQ_PRESENTED, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %75

70:                                               ; preds = %66
  %71 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %12, align 8
  %72 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %13, align 8
  %73 = load i32, i32* %16, align 4
  %74 = call i32 @icp_rm_deliver_irq(%struct.kvmppc_xics* %71, %struct.kvmppc_icp* %72, i32 %73, i32 0)
  br label %75

75:                                               ; preds = %70, %66
  %76 = load %struct.kvmppc_irq_map*, %struct.kvmppc_irq_map** %9, align 8
  %77 = getelementptr inbounds %struct.kvmppc_irq_map, %struct.kvmppc_irq_map* %76, i32 0, i32 2
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @irq_desc_get_chip(i32 %78)
  %80 = load %struct.kvmppc_irq_map*, %struct.kvmppc_irq_map** %9, align 8
  %81 = getelementptr inbounds %struct.kvmppc_irq_map, %struct.kvmppc_irq_map* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %8, align 4
  %84 = load i32*, i32** %11, align 8
  %85 = call i32 @icp_eoi(i32 %79, i32 %82, i32 %83, i32* %84)
  %86 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %12, align 8
  %87 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %13, align 8
  %88 = call i64 @check_too_hard(%struct.kvmppc_xics* %86, %struct.kvmppc_icp* %87)
  %89 = load i64, i64* @H_TOO_HARD, align 8
  %90 = icmp eq i64 %88, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %75
  store i64 2, i64* %6, align 8
  br label %93

92:                                               ; preds = %75
  store i64 -2, i64* %6, align 8
  br label %93

93:                                               ; preds = %92, %91, %42
  %94 = load i64, i64* %6, align 8
  ret i64 %94
}

declare dso_local i32 @kvmppc_rm_handle_irq_desc(i32) #1

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @icp_rm_deliver_irq(%struct.kvmppc_xics*, %struct.kvmppc_icp*, i32, i32) #1

declare dso_local i32 @icp_eoi(i32, i32, i32, i32*) #1

declare dso_local i32 @irq_desc_get_chip(i32) #1

declare dso_local i64 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
