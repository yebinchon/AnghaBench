; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_ics_rm_eoi.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv_rm_xics.c_ics_rm_eoi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.kvmppc_xics* }
%struct.kvmppc_xics = type { i32 }
%struct.TYPE_6__ = type { %struct.kvmppc_icp* }
%struct.kvmppc_icp = type { i32, i32 }
%struct.kvmppc_ics = type { %struct.ics_irq_state* }
%struct.ics_irq_state = type { i32, i32, i64, i64 }

@PQ_PRESENTED = common dso_local global i32 0, align 4
@XICS_RM_NOTIFY_EOI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32)* @ics_rm_eoi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ics_rm_eoi(%struct.kvm_vcpu* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvmppc_xics*, align 8
  %6 = alloca %struct.kvmppc_icp*, align 8
  %7 = alloca %struct.kvmppc_ics*, align 8
  %8 = alloca %struct.ics_irq_state*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %17, align 8
  store %struct.kvmppc_xics* %18, %struct.kvmppc_xics** %5, align 8
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %20 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %21, align 8
  store %struct.kvmppc_icp* %22, %struct.kvmppc_icp** %6, align 8
  %23 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics* %23, i32 %24, i64* %9)
  store %struct.kvmppc_ics* %25, %struct.kvmppc_ics** %7, align 8
  %26 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %27 = icmp ne %struct.kvmppc_ics* %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %2
  br label %129

29:                                               ; preds = %2
  %30 = load %struct.kvmppc_ics*, %struct.kvmppc_ics** %7, align 8
  %31 = getelementptr inbounds %struct.kvmppc_ics, %struct.kvmppc_ics* %30, i32 0, i32 0
  %32 = load %struct.ics_irq_state*, %struct.ics_irq_state** %31, align 8
  %33 = load i64, i64* %9, align 8
  %34 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %32, i64 %33
  store %struct.ics_irq_state* %34, %struct.ics_irq_state** %8, align 8
  %35 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %36 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %29
  %40 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %41 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  store i32 %42, i32* %11, align 4
  br label %59

43:                                               ; preds = %29
  br label %44

44:                                               ; preds = %50, %43
  %45 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %46 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = ashr i32 %48, 1
  store i32 %49, i32* %11, align 4
  br label %50

50:                                               ; preds = %44
  %51 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %52 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %51, i32 0, i32 0
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = call i32 @cmpxchg(i32* %52, i32 %53, i32 %54)
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %55, %56
  br i1 %57, label %44, label %58

58:                                               ; preds = %50
  br label %59

59:                                               ; preds = %58, %39
  %60 = load i32, i32* %11, align 4
  %61 = load i32, i32* @PQ_PRESENTED, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %59
  %65 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @icp_rm_deliver_irq(%struct.kvmppc_xics* %65, i32* null, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %64, %59
  %69 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %70 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %69, i32 0, i32 1
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = call i32 @hlist_empty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %68
  %76 = load i32, i32* @XICS_RM_NOTIFY_EOI, align 4
  %77 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %78 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 4
  %81 = load i32, i32* %4, align 4
  %82 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %83 = getelementptr inbounds %struct.kvmppc_icp, %struct.kvmppc_icp* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %75, %68
  %85 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %86 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %128

89:                                               ; preds = %84
  %90 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %91 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 8
  %95 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %96 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, -1
  br i1 %98, label %99, label %127

99:                                               ; preds = %89
  %100 = call i32 (...) @raw_smp_processor_id()
  store i32 %100, i32* %12, align 4
  %101 = load i32, i32* %12, align 4
  %102 = call i32 @cpu_first_thread_sibling(i32 %101)
  store i32 %102, i32* %12, align 4
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %109 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* %12, align 4
  %112 = icmp ne i32 %110, %111
  br i1 %112, label %113, label %124

113:                                              ; preds = %99
  %114 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %115 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 8
  %119 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %120 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %119, i32 0, i32 2
  %121 = load i64, i64* %120, align 8
  %122 = load i32, i32* %12, align 4
  %123 = call i32 @xics_opal_set_server(i64 %121, i32 %122)
  br label %124

124:                                              ; preds = %113, %99
  %125 = load %struct.ics_irq_state*, %struct.ics_irq_state** %8, align 8
  %126 = getelementptr inbounds %struct.ics_irq_state, %struct.ics_irq_state* %125, i32 0, i32 1
  store i32 -1, i32* %126, align 4
  br label %127

127:                                              ; preds = %124, %89
  br label %128

128:                                              ; preds = %127, %84
  br label %129

129:                                              ; preds = %128, %28
  %130 = load %struct.kvmppc_xics*, %struct.kvmppc_xics** %5, align 8
  %131 = load %struct.kvmppc_icp*, %struct.kvmppc_icp** %6, align 8
  %132 = call i32 @check_too_hard(%struct.kvmppc_xics* %130, %struct.kvmppc_icp* %131)
  ret i32 %132
}

declare dso_local %struct.kvmppc_ics* @kvmppc_xics_find_ics(%struct.kvmppc_xics*, i32, i64*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @icp_rm_deliver_irq(%struct.kvmppc_xics*, i32*, i32, i32) #1

declare dso_local i32 @hlist_empty(i32*) #1

declare dso_local i32 @raw_smp_processor_id(...) #1

declare dso_local i32 @cpu_first_thread_sibling(i32) #1

declare dso_local i32 @xics_opal_set_server(i64, i32) #1

declare dso_local i32 @check_too_hard(%struct.kvmppc_xics*, %struct.kvmppc_icp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
