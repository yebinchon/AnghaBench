; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_core_set_sregs_e500.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_e500.c_kvmppc_core_set_sregs_e500.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.kvm_sregs = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.kvmppc_vcpu_e500 = type { i32, i32, i32 }

@KVM_SREGS_E_IMPL_FSL = common dso_local global i64 0, align 8
@KVM_SREGS_E_IVOR = common dso_local global i32 0, align 4
@KVM_SREGS_E_SPE = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_SPE_UNAVAIL = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_DATA = common dso_local global i64 0, align 8
@BOOKE_IRQPRIO_SPE_FP_ROUND = common dso_local global i64 0, align 8
@KVM_SREGS_E_PM = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_PERFORMANCE_MONITOR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, %struct.kvm_sregs*)* @kvmppc_core_set_sregs_e500 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvmppc_core_set_sregs_e500(%struct.kvm_vcpu* %0, %struct.kvm_sregs* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.kvm_vcpu*, align 8
  %5 = alloca %struct.kvm_sregs*, align 8
  %6 = alloca %struct.kvmppc_vcpu_e500*, align 8
  %7 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %4, align 8
  store %struct.kvm_sregs* %1, %struct.kvm_sregs** %5, align 8
  %8 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %9 = call %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu* %8)
  store %struct.kvmppc_vcpu_e500* %9, %struct.kvmppc_vcpu_e500** %6, align 8
  %10 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %11 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KVM_SREGS_E_IMPL_FSL, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %19 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %26 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %28 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %35 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %37 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.kvmppc_vcpu_e500*, %struct.kvmppc_vcpu_e500** %6, align 8
  %44 = getelementptr inbounds %struct.kvmppc_vcpu_e500, %struct.kvmppc_vcpu_e500* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 4
  br label %45

45:                                               ; preds = %17, %2
  %46 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %47 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %48 = call i32 @kvmppc_set_sregs_e500_tlb(%struct.kvm_vcpu* %46, %struct.kvm_sregs* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  store i32 %52, i32* %3, align 4
  br label %139

53:                                               ; preds = %45
  %54 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %55 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @KVM_SREGS_E_IVOR, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %139

63:                                               ; preds = %53
  %64 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %65 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @KVM_SREGS_E_SPE, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %112

72:                                               ; preds = %63
  %73 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %74 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 2
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 0
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %81 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  %83 = load i32*, i32** %82, align 8
  %84 = load i64, i64* @BOOKE_IRQPRIO_SPE_UNAVAIL, align 8
  %85 = getelementptr inbounds i32, i32* %83, i64 %84
  store i32 %79, i32* %85, align 4
  %86 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %87 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %94 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_DATA, align 8
  %98 = getelementptr inbounds i32, i32* %96, i64 %97
  store i32 %92, i32* %98, align 4
  %99 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %100 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 2
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 2
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %107 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = load i64, i64* @BOOKE_IRQPRIO_SPE_FP_ROUND, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  store i32 %105, i32* %111, align 4
  br label %112

112:                                              ; preds = %72, %63
  %113 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %114 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* @KVM_SREGS_E_PM, align 4
  %119 = and i32 %117, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %135

121:                                              ; preds = %112
  %122 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %123 = getelementptr inbounds %struct.kvm_sregs, %struct.kvm_sregs* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 3
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %130 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* @BOOKE_IRQPRIO_PERFORMANCE_MONITOR, align 8
  %134 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %128, i32* %134, align 4
  br label %135

135:                                              ; preds = %121, %112
  %136 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %4, align 8
  %137 = load %struct.kvm_sregs*, %struct.kvm_sregs** %5, align 8
  %138 = call i32 @kvmppc_set_sregs_ivor(%struct.kvm_vcpu* %136, %struct.kvm_sregs* %137)
  store i32 %138, i32* %3, align 4
  br label %139

139:                                              ; preds = %135, %62, %51
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.kvmppc_vcpu_e500* @to_e500(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_set_sregs_e500_tlb(%struct.kvm_vcpu*, %struct.kvm_sregs*) #1

declare dso_local i32 @kvmppc_set_sregs_ivor(%struct.kvm_vcpu*, %struct.kvm_sregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
