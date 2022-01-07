; ModuleID = '/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_arch_vcpu_yield_to.c'
source_filename = "/home/carl/AnghaBench/linux/arch/powerpc/kvm/extr_book3s_hv.c_kvm_arch_vcpu_yield_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, %struct.kvmppc_vcore* }
%struct.kvmppc_vcore = type { i64, i32, %struct.kvm_vcpu* }

@KVMPPC_VCPU_RUNNABLE = common dso_local global i64 0, align 8
@VCORE_INACTIVE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*)* @kvm_arch_vcpu_yield_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_arch_vcpu_yield_to(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca %struct.kvm_vcpu*, align 8
  %3 = alloca %struct.kvmppc_vcore*, align 8
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %2, align 8
  %4 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %5 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  %7 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %6, align 8
  store %struct.kvmppc_vcore* %7, %struct.kvmppc_vcore** %3, align 8
  %8 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %9 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %12 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @KVMPPC_VCPU_RUNNABLE, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %1
  %18 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %19 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @VCORE_INACTIVE, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %25 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %24, i32 0, i32 2
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %25, align 8
  %27 = icmp ne %struct.kvm_vcpu* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %23
  %29 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %30 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %29, i32 0, i32 2
  %31 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %30, align 8
  store %struct.kvm_vcpu* %31, %struct.kvm_vcpu** %2, align 8
  br label %32

32:                                               ; preds = %28, %23, %17, %1
  %33 = load %struct.kvmppc_vcore*, %struct.kvmppc_vcore** %3, align 8
  %34 = getelementptr inbounds %struct.kvmppc_vcore, %struct.kvmppc_vcore* %33, i32 0, i32 1
  %35 = call i32 @spin_unlock(i32* %34)
  %36 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %2, align 8
  %37 = call i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu* %36)
  ret i32 %37
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kvm_vcpu_yield_to(%struct.kvm_vcpu*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
