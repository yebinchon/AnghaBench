; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_setup.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_booke.c_kvm_arch_vcpu_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32*, %struct.TYPE_5__*, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@MSR_USER = common dso_local global i32 0, align 4
@MSR_IS = common dso_local global i32 0, align 4
@MSR_DS = common dso_local global i32 0, align 4
@BOOKE_IRQPRIO_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_setup(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %5 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %6 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  store i64 0, i64* %8, align 8
  %9 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %10 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %13 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 1
  store i32 %11, i32* %16, align 8
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %18 = call i32 @kvmppc_set_gpr(%struct.kvm_vcpu* %17, i32 1, i32 16777208)
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %20 = call i32 @kvmppc_set_msr(%struct.kvm_vcpu* %19, i32 0)
  %21 = load i32, i32* @MSR_USER, align 4
  %22 = load i32, i32* @MSR_IS, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @MSR_DS, align 4
  %25 = or i32 %23, %24
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %27 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 8
  %29 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %30 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %33 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 4
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  store i64 0, i64* %36, align 8
  %37 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %38 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 2
  store i32 1431633920, i32* %39, align 8
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %55, %1
  %41 = load i32, i32* %3, align 4
  %42 = load i32, i32* @BOOKE_IRQPRIO_MAX, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %58

44:                                               ; preds = %40
  %45 = load i32, i32* %3, align 4
  %46 = mul nsw i32 %45, 4
  %47 = or i32 30464, %46
  %48 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %49 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 3
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %47, i32* %54, align 4
  br label %55

55:                                               ; preds = %44
  %56 = load i32, i32* %3, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %3, align 4
  br label %40

58:                                               ; preds = %40
  %59 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %60 = call i32 @kvmppc_init_timing_stats(%struct.kvm_vcpu* %59)
  %61 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %62 = call i32 @kvmppc_core_vcpu_setup(%struct.kvm_vcpu* %61)
  store i32 %62, i32* %4, align 4
  %63 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %64 = call i32 @kvmppc_sanity_check(%struct.kvm_vcpu* %63)
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @kvmppc_set_gpr(%struct.kvm_vcpu*, i32, i32) #1

declare dso_local i32 @kvmppc_set_msr(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvmppc_init_timing_stats(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_core_vcpu_setup(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvmppc_sanity_check(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
